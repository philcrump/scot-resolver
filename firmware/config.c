#include "main.h"

#include <string.h>

#define STM32_ID_ADDR 0x1FFFF7AC

uint8_t config_device_id[12];
char config_device_id_hexstr[25];

uint32_t config_can_address_prefix = 0x0000;
char config_can_address_prefix_hexstr[5];

/* CAN Address is 0x7ff

Location:
  0x1__ : Azimuth
  0x2__ : Elevation
  0x3__ : Base

Function:
  0x_1_ : Resolver
  0x_2_ : Motor
  0x_3_ : Controller
*/

#define CAN_ADDRESS_PREFIX_ELEVATION  0x100
#define CAN_ADDRESS_PREFIX_AZIMUTH    0x200
#define CAN_ADDRESS_PREFIX_BASE       0x300

#define CAN_ADDRESS_PREFIX_RESOLVER   0x010
#define CAN_ADDRESS_PREFIX_MOTOR      0x020
#define CAN_ADDRESS_PREFIX_CONTROLLER 0x030

static const uint8_t config_device_id_az_resolver[12] = { 0x22, 0x00, 0x04, 0x00, 0x13, 0x43, 0x4e, 0x47, 0x33, 0x38, 0x32, 0x20 };
static const uint8_t config_device_id_el_resolver[12] = { 0x0F, 0x00, 0x23, 0x00, 0x0B, 0x43, 0x4E, 0x57, 0x37, 0x39, 0x35, 0x20 };

#define CONFIG_MATCH_DEVICE_ID(a,b) (memcmp((void *)a,(void *)b,12)==0)

void config_init(void)
{
  /* Load STM32 96-bit device ID from ROM */
  config_device_id[0] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[0];
  config_device_id[1] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[1];
  config_device_id[2] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[2];
  config_device_id[3] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[3];
  config_device_id[4] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[4];
  config_device_id[5] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[5];
  config_device_id[6] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[6];
  config_device_id[7] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[7];
  config_device_id[8] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[8];
  config_device_id[9] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[9];
  config_device_id[10] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[10];
  config_device_id[11] = (uint8_t)((uint8_t *)STM32_ID_ADDR)[11];

  /* Convert to hex for display */
  int32_t i;
  uint32_t remainder;

  for(i = 0; i < 12; i++)
  {
    remainder = config_device_id[i] & 0xF;
    if(remainder < 10)
    {
      config_device_id_hexstr[(i*2)+1] = 48 + remainder;
    }
    else
    {
      config_device_id_hexstr[(i*2)+1] = 55 + remainder;
    }

    remainder = config_device_id[i] >> 4;
    if(remainder < 10)
    {
      config_device_id_hexstr[i*2] = 48 + remainder;
    }
    else
    {
      config_device_id_hexstr[i*2] = 55 + remainder;
    }
  }
  config_device_id_hexstr[24] = '\0';

  /* Look up corresponding CAN address */
  config_can_address_prefix = 0x0000;
  if(CONFIG_MATCH_DEVICE_ID(config_device_id, config_device_id_az_resolver))
  {
    /*
      Not yet manufactured
    */
    config_can_address_prefix |= CAN_ADDRESS_PREFIX_AZIMUTH;
    config_can_address_prefix |= CAN_ADDRESS_PREFIX_RESOLVER;
  }
  else if(CONFIG_MATCH_DEVICE_ID(config_device_id, config_device_id_el_resolver))
  {
    /*
      "Resolver Feb 2020"
      Elevation Resolver
    */
    config_can_address_prefix |= CAN_ADDRESS_PREFIX_ELEVATION;
    config_can_address_prefix |= CAN_ADDRESS_PREFIX_RESOLVER;
  }

  /* Convert CAN address to hex for display */
  uint16_t quotient = config_can_address_prefix;
  for(i = 3; i >= 0; i--)
  {
    remainder = quotient & 0x7;

    if(remainder < 10)
    {
      config_can_address_prefix_hexstr[i] = 48 + remainder;
    }
    else
    {
      config_can_address_prefix_hexstr[i] = 55 + remainder;
    }

    quotient = quotient >> 4;
  }
  config_can_address_prefix_hexstr[4] = '\0';
}