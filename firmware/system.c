#include "main.h"

void system_reset(void)
{
    /* This is generally not a great idea */
    NVIC_SystemReset();
}

#define TEMPERATURE_ADC_SAMPLES     16

#define TEMPERATURE_CAL1_ADDRESS    0x1FFFF7B8
#define TEMPERATURE_CAL2_ADDRESS    0x1FFFF7C2

static adcsample_t temperature_samples[TEMPERATURE_ADC_SAMPLES];

static const ADCConversionGroup temperature_adcgrpcfg = {
    FALSE,                  /* Circular buffer */
    1,                      /* Number of channels */
    NULL,                   /* Callback function for when the buffer is full, only used if we're doing asynchronous calls */
    NULL,                   /* Error callback function, called if an error occurs during the conversion */
    ADC_CFGR1_CONT | ADC_CFGR1_RES_12BIT,                      /* CFGR1 Register */
    0,                      /* Threshold Register */
    ADC_SMPR_SMP_0 | ADC_SMPR_SMP_1 | ADC_SMPR_SMP_2, /* Select a sampling mode of 111 i.e. 239.5 ADC clk to be greater than 17.1us */
    ADC_CHSELR_CHSEL16      /* Channel 16 is Temperature Sensor */
};

int8_t system_mcutemperature(void)
{
  uint32_t i;
  uint32_t result;
  float fresult;

  const uint16_t temperature_cal1 = *(uint16_t *)(TEMPERATURE_CAL1_ADDRESS);
  const uint16_t temperature_cal2 = *(uint16_t *)(TEMPERATURE_CAL2_ADDRESS);
  
  adcStart(&ADCD1, NULL);

  /* Enable temperature sensor */
  adcSTM32SetCCR(ADC_CCR_TSEN);
  
  adcConvert(&ADCD1, &temperature_adcgrpcfg, temperature_samples, TEMPERATURE_ADC_SAMPLES);

  /* Disable temperature sensor */
  adcSTM32SetCCR(0);
  
  adcStop(&ADCD1);
  
  result = 0;
  for(i=0; i<TEMPERATURE_ADC_SAMPLES; i++)
  {
    result += temperature_samples[i];
  }
  result /= TEMPERATURE_ADC_SAMPLES;

  /* Formula from STM32F0x2 Reference Manual p251 */
  fresult = ((110.0-30.0)/(temperature_cal2 - temperature_cal1))*((float)result - temperature_cal1) + 30.0;

  if(fresult > INT8_MAX) return INT8_MAX;
  else if(fresult < INT8_MIN) return INT8_MIN;
  return (int8_t)(fresult);
}

// For STM32F042
#define STM32_ID_ADDR   0x1FFFF7AC

static bool stm32_id_loaded = false;
static uint8_t stm32_id_u8[12];

uint8_t* system_device_id(void)
{
    if(!stm32_id_loaded)
    {
        stm32_id_u8[0] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[0];
        stm32_id_u8[1] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[1];
        stm32_id_u8[2] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[2];
        stm32_id_u8[3] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[3];
        stm32_id_u8[4] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[4];
        stm32_id_u8[5] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[5];
        stm32_id_u8[6] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[6];
        stm32_id_u8[7] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[7];
        stm32_id_u8[8] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[8];
        stm32_id_u8[9] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[9];
        stm32_id_u8[10] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[10];
        stm32_id_u8[11] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[11];
        stm32_id_loaded = true;
    }
    
    return (uint8_t *)stm32_id_u8;
}