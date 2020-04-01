#ifndef __AD2S1210_H__
#define __AD2S1210_H__

void ad2s1210_init(void);

void ad2s1210_read_position(uint16_t *position_ptr);

void ad2s1210_read_register(const uint8_t reg, uint8_t *result_ptr);
void ad2s1210_write_register(uint8_t reg, uint8_t val);

void ad2s1210_explain_faultregister(SerialDriver *sd_ptr, const uint8_t value);

THD_FUNCTION(ad2s1210_service_thread, arg);

#endif /* __AD2S1210_H__ */