#include "main.h"

// Peripheral Clock 24MHz SPI2 SPI3
// Peripheral Clock 48MHz SPI1                                 SPI1        SPI2/3
#define SPI_BaudRatePrescaler_2         ((uint16_t)0x0000) //  24 MHz      12 MHZ
#define SPI_BaudRatePrescaler_4         ((uint16_t)0x0008) //  12 MHz      6 MHz
#define SPI_BaudRatePrescaler_8         ((uint16_t)0x0010) //  6 MHz    3 MHz
#define SPI_BaudRatePrescaler_16        ((uint16_t)0x0018) //  3 MHz    1.5 MHz  
#define SPI_BaudRatePrescaler_32        ((uint16_t)0x0020) //  1.5 MHz   750 KHz

static bool ad2s1210_spi_initialized = false;

static const SPIConfig spi_cfg = {
  false,
  NULL,
  GPIOA,
  GPIOA_RD_SPI_nCS,
  SPI_BaudRatePrescaler_4 | SPI_CR1_CPHA, // 12MHz, CPOL = 0, CPHA = 1
  0
};

void ad2s1210_init(void)
{
  uint8_t result;

  if(!ad2s1210_spi_initialized)
  {
    /* Start AD2S1210 SPI */
    spiStart(&SPID1, &spi_cfg);

    ad2s1210_spi_initialized = true;
  }

  /* Clear A0, A1 - Normal mode - Position output */
  palClearLine(LINE_RD_A0);
  palClearLine(LINE_RD_A1);

  /* Set RES0, RES1 - 16-bit mode */
  palSetLine(LINE_RD_RES0);
  palSetLine(LINE_RD_RES1);

  /* Set ~SAMPLE */
  palSetLine(LINE_RD_nSAMPLE);

  /* Pull nReset Low for at least 10us */
  palClearLine(LINE_RD_nRESET);
  chThdSleepMilliseconds(10);
  palSetLine(LINE_RD_nRESET);

  /* Configure Excitation Frequency of 2KHz */
  ad2s1210_write_register(0x91, 0x08);

  /* Read Excitation Frequency register */
  ad2s1210_read_register(0x91, &result);
  if(result != 0x08)
  {
    /* Try again - TODO: Be more intelligent here */
    ad2s1210_write_register(0x91, 0x08);
  }

  /* Configure Encoder and Encoder Outputs to 16-bit */
  ad2s1210_write_register(0x92, 0x7F);

  /* Read Control register */
  ad2s1210_read_register(0x92, &result);
  if(result != 0x7F)
  {
    /* Try again - TODO: Be more intelligent here */
    ad2s1210_write_register(0x92, 0x7F);
  }

  /* Wait tTRACK to reinitialise (max of 66ms @ 16bits) */
  chThdSleepMilliseconds(100);

  /* Reset Tracking Loop */
  //ad2s1210_write_register(0xF0, 0xF0);

  /* Clear Fault Register */
  palClearLine(LINE_RD_nSAMPLE);
  chThdSleepMicroseconds(1);
  palSetLine(LINE_RD_nSAMPLE);
}

void ad2s1210_read_position(uint16_t *position_ptr)
{
  /* Clear A0, A1 - Normal mode - Position output */
  palClearLine(LINE_RD_A0);
  palClearLine(LINE_RD_A1);

  palClearLine(LINE_RD_nSAMPLE);
  chThdSleepMicroseconds(1);
  palSetLine(LINE_RD_nSAMPLE);
  chThdSleepMicroseconds(1);

  spiSelect(&SPID1);

  spiReceive(&SPID1, 2, (void *)position_ptr);

  spiUnselect(&SPID1);

  /* Swap byte order */
  *position_ptr = ((*position_ptr & 0x00FF) << 8) | ((*position_ptr & 0xFF00) >> 8);
}

/* Velocity only has an LSB of 1.37 deg/s at 16b, so not useful to us */

void ad2s1210_read_register(const uint8_t reg, uint8_t *result_ptr)
{
  /* Set A0, A1 - Configuration mode */
  palSetLine(LINE_RD_A0);
  palSetLine(LINE_RD_A1);

  spiSelect(&SPID1);

  spiSend(&SPID1, 1, (void *)&reg);

  spiUnselect(&SPID1);
  spiSelect(&SPID1);

  spiReceive(&SPID1, 1, (void *)result_ptr);

  spiUnselect(&SPID1);

  /* Clear A0, A1 - Normal mode - Position output */
  palClearLine(LINE_RD_A0);
  palClearLine(LINE_RD_A1);

  /* Mask uppermost bit */
  *result_ptr &= 0x7F;
}

void ad2s1210_write_register(uint8_t reg, uint8_t val)
{
  /* Set A0, A1 - Configuration mode */
  palSetLine(LINE_RD_A0);
  palSetLine(LINE_RD_A1);

  reg |= 0x80;
  val &= 0x7F;

  spiSelect(&SPID1);

  spiSend(&SPID1, 1, (void *)&reg);

  spiUnselect(&SPID1);
  spiSelect(&SPID1);

  spiSend(&SPID1, 1, (void *)&val);

  spiUnselect(&SPID1);

  /* Clear A0, A1 - Normal mode - Position output */
  palClearLine(LINE_RD_A0);
  palClearLine(LINE_RD_A1);
}

THD_FUNCTION(ad2s1210_service_thread, arg)
{
    (void)arg;

    uint8_t fault;
    uint16_t position;

    ad2s1210_init();
    can_init();

    while(1)
    {
        ad2s1210_read_position(&position);

        ad2s1210_read_register(0xff, &fault);
        if(fault != 0x00)
        {
          can_send_position_and_fault(position, fault);
          //ad2s1210_explain_faultregister(&SD1, fault);

          if((fault & (0x1 << 0)) > 0)
          {
            /* Configuration Parity Error, so reset */
            ad2s1210_init();
          }
        }
        else
        {
          can_send_position(position);
        }

        watchdog_feed(WATCHDOG_DOG_AD2S1210);
        chThdSleepMilliseconds(10);
    }
}

void ad2s1210_explain_faultregister(SerialDriver *sd_ptr, const uint8_t value)
{
  if((value & (0x1 << 0)) > 0)
  {
    sdWriteString(sd_ptr, " - Configuration parity error\r\n");
  }
  if((value & (0x1 << 1)) > 0)
  {
    sdWriteString(sd_ptr, " - Phase error exceeds phase lock range\r\n");
  }
  if((value & (0x1 << 2)) > 0)
  {
    sdWriteString(sd_ptr, " - Velocity exceeds maximum tracking rate\r\n");
  }
  if((value & (0x1 << 3)) > 0)
  {
    sdWriteString(sd_ptr, " - Tracking error exceeds LOT threshold\r\n");
  }
  if((value & (0x1 << 4)) > 0)
  {
    sdWriteString(sd_ptr, " - Sine/cosine inputs exceed DOS mismatch threshold\r\n");
  }
  if((value & (0x1 << 5)) > 0)
  {
    sdWriteString(sd_ptr, " - Sine/cosine inputs exceed DOS overrange threshold\r\n");
  }
  if((value & (0x1 << 6)) > 0)
  {
    sdWriteString(sd_ptr, " - Sine/cosine inputs below LOS threshold\r\n");
  }
  if((value & (0x1 << 7)) > 0)
  {
    sdWriteString(sd_ptr, " - Sine/cosine inputs clipped\r\n");
  }
}