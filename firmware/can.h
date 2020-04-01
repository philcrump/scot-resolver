#ifndef __CAN_H__
#define __CAN_H__

void can_init(void);

void can_send_position(const uint16_t position_value);

void can_send_position_and_fault(const uint16_t position_value, const uint8_t fault_value);

void can_send_sysinfo(const uint32_t gitversion, const int8_t temperature_degrees);

THD_FUNCTION(can_rx_service_thread, arg);

#endif /* __CAN_H__ */