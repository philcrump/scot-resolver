/*
    ChibiOS - Copyright (C) 2006..2018 Giovanni Di Sirio

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

#include "ch.h"
#include "hal.h"

#define nibble_to_hex(i) ((i) <= 9 ? '0' + (i) : 'A' - 10 + (i))

#define ITERATOR_DEF()    uint8_t iterator = 0
#define ITERATOR_VAR()    iterator < 1 ? "/" : iterator < 2 ? "-" : "\\"
#define ITERATOR_INC()    iterator = iterator < 2 ? iterator + 1 : 0

// Peripheral Clock 24MHz SPI2 SPI3
// Peripheral Clock 48MHz SPI1                                 SPI1        SPI2/3
#define SPI_BaudRatePrescaler_2         ((uint16_t)0x0000) //  24 MHz      12 MHZ
#define SPI_BaudRatePrescaler_4         ((uint16_t)0x0008) //  12 MHz      6 MHz
#define SPI_BaudRatePrescaler_8         ((uint16_t)0x0010) //  6 MHz    3 MHz
#define SPI_BaudRatePrescaler_16        ((uint16_t)0x0018) //  3 MHz    1.5 MHz  
#define SPI_BaudRatePrescaler_32        ((uint16_t)0x0020) //  1.5 MHz   750 KHz

static const SPIConfig spi_cfg = {
  false,
  NULL,
  GPIOA,
  GPIOA_RD_SPI_nCS,
  SPI_BaudRatePrescaler_4 | SPI_CR1_CPHA, // 12MHz, CPOL = 0, CPHA = 1
  0
};

static void ad2s1210_read_position(uint16_t *position_ptr)
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

static void ad2s1210_read_register(const uint8_t reg, uint8_t *result_ptr)
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

static void ad2s1210_write_register(uint8_t reg, uint8_t val)
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

static const SerialConfig serial_cfg = {
  115200,
  0,
  0,
  0
};

static void sdWriteString(SerialDriver *sdp, const char *string)
{
  uint32_t i;
  for(i = 0; string[i] != '\0'; i++)
  {
    sdPut(sdp, string[i]);
  }
}

int main(void)
{
  halInit();
  chSysInit();

  /* Start Debug Console */
  sdStart(&SD1, &serial_cfg);

  sdWriteString(&SD1, "SCOT Resolver Interface - Phil Crump M0DNY\r\n");
  sdWriteString(&SD1, " - Version: " GITVERSION "\r\n");

  /* Clear A0, A1 - Normal mode - Position output */
  palClearLine(LINE_RD_A0);
  palClearLine(LINE_RD_A1);

  /* Set RES0, RES1 - 16-bit mode */
  palSetLine(LINE_RD_RES0);
  palSetLine(LINE_RD_RES1);

  /* Set ~SAMPLE */
  palSetLine(LINE_RD_nSAMPLE);

  /* Start AD2S1210 SPI */
  spiStart(&SPID1, &spi_cfg);

  /* Configure Encoder and Encoder Outputs to 16-bit */
  ad2s1210_write_register(0x92, 0x7F);

  /* Configure Excitation Frequency of 2KHz */
  ad2s1210_write_register(0x91, 0x08);

  uint8_t result;
  char output[32];

  sdWriteString(&SD1, "Control Register: ");

  /* Read Control register */
  ad2s1210_read_register(0x92, &result);

  output[0] = '0';
  output[1] = 'x';
  output[2] = nibble_to_hex((result & 0xF0) >> 4);
  output[3] = nibble_to_hex(result & 0x0F);
  output[4] = '\r';
  output[5] = '\n';
  output[6] = '\0';

  sdWriteString(&SD1, output);

  sdWriteString(&SD1, "Excitation Frequency: ");

  /* Read Excitation Frequency register */
  ad2s1210_read_register(0x91, &result);

  uint32_t exc_freq = (result * 8192000) / (2*2*2*2*2*2*2*2*2*2*2*2*2*2*2);

  output[0] = '0';
  output[1] = 'x';
  output[2] = nibble_to_hex((result & 0xF0) >> 4);
  output[3] = nibble_to_hex(result & 0x0F);
  output[4] = ' ';
  output[5] = '(';
  output[6] = '0' + ((exc_freq / 10000) % 10);
  output[7] = '0' + ((exc_freq / 1000) % 10);
  output[8] = '0' + ((exc_freq / 100) % 10);
  output[9] = '0' + ((exc_freq / 10) % 10);
  output[10] = '0' + (exc_freq % 10);
  output[11] = ')';
  output[12] = '\r';
  output[13] = '\n';
  output[14] = '\0';

  sdWriteString(&SD1, output);

  uint16_t result16;
  uint32_t mdegrees;
  ITERATOR_DEF();
  
  while(true)
  {
    sdWriteString(&SD1, "== Data ");
    sdWriteString(&SD1, ITERATOR_VAR());
    sdWriteString(&SD1, " == \r\n");
    ITERATOR_INC();

    sdWriteString(&SD1, "Fault Flags: ");

    /* Read Fault register */
    ad2s1210_read_register(0xff, &result);

    output[0] = '0';
    output[1] = 'x';
    output[2] = nibble_to_hex((result & 0xF0) >> 4);
    output[3] = nibble_to_hex(result & 0x0F);
    output[4] = '\r';
    output[5] = '\n';
    output[6] = '\0';

    sdWriteString(&SD1, output);

    if((result & (0x1 << 0)) > 0)
    {
      sdWriteString(&SD1, " - Configuration parity error\r\n");
    }
    if((result & (0x1 << 1)) > 0)
    {
      sdWriteString(&SD1, " - Phase error exceeds phase lock range\r\n");
    }
    if((result & (0x1 << 2)) > 0)
    {
      sdWriteString(&SD1, " - Velocity exceeds maximum tracking rate\r\n");
    }
    if((result & (0x1 << 3)) > 0)
    {
      sdWriteString(&SD1, " - Tracking error exceeds LOT threshold\r\n");
    }
    if((result & (0x1 << 4)) > 0)
    {
      sdWriteString(&SD1, " - Sine/cosine inputs exceed DOS mismatch threshold\r\n");
    }
    if((result & (0x1 << 5)) > 0)
    {
      sdWriteString(&SD1, " - Sine/cosine inputs exceed DOS overrange threshold\r\n");
    }
    if((result & (0x1 << 6)) > 0)
    {
      sdWriteString(&SD1, " - Sine/cosine inputs below LOS threshold\r\n");
    }
    if((result & (0x1 << 7)) > 0)
    {
      sdWriteString(&SD1, " - Sine/cosine inputs clipped\r\n");
    }


    sdWriteString(&SD1, "Position: ");

    ad2s1210_read_position(&result16);

    mdegrees = ((uint64_t)result16 * 360000) / 65536;

    output[0] = '0';
    output[1] = 'x';
    output[2] = nibble_to_hex((result16 & 0xF000) >> 12);
    output[3] = nibble_to_hex((result16 & 0x0F00) >> 8);
    output[4] = nibble_to_hex((result16 & 0x00F0) >> 4);
    output[5] = nibble_to_hex(result16 & 0x000F);
    output[6] = ' ';
    output[7] = '|';
    output[8] = ' ';
    output[9] =  '0' + (((mdegrees / 100000) % 10) & 0xFF);
    output[10] = '0' + ((mdegrees / 10000) % 10);
    output[11] = '0' + ((mdegrees / 1000) % 10);
    output[12] = '.';
    output[13] = '0' + ((mdegrees / 100) % 10);
    output[14] = '0' + ((mdegrees / 10) % 10);
    output[15] = '\r';
    output[16] = '\n';
    output[17] = '\0';

    sdWriteString(&SD1, output);


    chThdSleepMilliseconds(100);
  }
}
