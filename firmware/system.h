#ifndef __SYSTEM_H__
#define __SYSTEM_H__

void system_reset(void);

int8_t system_mcutemperature(void);

uint8_t* system_device_id(void);

#endif /* __SYSTEM_H__ */