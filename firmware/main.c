#include "main.h"

extern char config_device_id_hexstr[25];
extern char config_can_address_prefix_hexstr[5];

static const SerialConfig serial_cfg = {
  115200,
  0,
  0,
  0
};

void sdWriteString(SerialDriver *sdp, const char *string)
{
  uint32_t i;
  for(i = 0; string[i] != '\0'; i++)
  {
    sdPut(sdp, string[i]);
  }
}

THD_WORKING_AREA(ad2s1210_service_wa, 128);
THD_WORKING_AREA(can_rx_service_wa, 128);
THD_WORKING_AREA(watchdog_service_wa, 128);

int main(void)
{
  halInit();
  chSysInit();

  watchdog_init();
  chThdCreateStatic(watchdog_service_wa, sizeof(watchdog_service_wa), HIGHPRIO, watchdog_service_thread, NULL);

  config_init();

  /* Start Debug Console (115200 8n1) */
  sdStart(&SD1, &serial_cfg);

  sdWriteString(&SD1, "SCOT Resolver Interface - Phil Crump M0DNY\r\n");
  sdWriteString(&SD1, " - Version: " GITVERSION "\r\n");
  sdWriteString(&SD1, " - STM32 ID: ");
  sdWriteString(&SD1, config_device_id_hexstr);
  sdWriteString(&SD1, "\r\n");
  sdWriteString(&SD1, " - CAN ADDRESS: ");
  sdWriteString(&SD1, config_can_address_prefix_hexstr);
  sdWriteString(&SD1, "\r\n");

  chThdCreateStatic(can_rx_service_wa, sizeof(can_rx_service_wa), NORMALPRIO, can_rx_service_thread, NULL);
  chThdCreateStatic(ad2s1210_service_wa, sizeof(ad2s1210_service_wa), NORMALPRIO, ad2s1210_service_thread, NULL);

  systime_t start, end;
  while(true)
  {
    can_send_sysinfo(GITVERSION_X32, system_mcutemperature());

    /* Set timer for 10s */
    start = chVTGetSystemTime();
    end = chTimeAddX(start, TIME_S2I(10));
    while (chVTIsSystemTimeWithin(start, end))
    {
      /* Feed watchdog, sleep for 100ms, repeat */
      watchdog_feed(WATCHDOG_DOG_MAIN);
      chThdSleepMilliseconds(100);
    }
  }
}
