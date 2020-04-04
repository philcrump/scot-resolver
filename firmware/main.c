#include "main.h"

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

  /* Start Debug Console */
  sdStart(&SD1, &serial_cfg);

  sdWriteString(&SD1, "SCOT Resolver Interface - Phil Crump M0DNY\r\n");
  sdWriteString(&SD1, " - Version: " GITVERSION "\r\n");

  chThdCreateStatic(can_rx_service_wa, sizeof(can_rx_service_wa), NORMALPRIO, can_rx_service_thread, NULL);
  chThdCreateStatic(ad2s1210_service_wa, sizeof(ad2s1210_service_wa), NORMALPRIO, ad2s1210_service_thread, NULL);

  int8_t temperature;
  while(true)
  {
    temperature = system_mcutemperature();
    can_send_sysinfo(GITVERSION_X32, temperature);

    chThdSleepMilliseconds(10*1000);
  }
}
