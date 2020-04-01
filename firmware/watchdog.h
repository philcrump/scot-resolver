#ifndef __WATCHDOG_H__
#define __WATCHDOG_H__

#define WATCHDOG_DOG_AD2S1210   0
#define WATCHDOG_DOG_CANRX      1

#define WATCHDOG_MASK       ((1 << WATCHDOG_DOG_AD2S1210) \
                             | (1 << WATCHDOG_DOG_CANRX))

void watchdog_init(void);

THD_FUNCTION(watchdog_service_thread, arg);

void watchdog_feed(uint32_t dog);

#endif /* __WATCHDOG_H__ */