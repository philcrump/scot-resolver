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

#ifndef BOARD_H
#define BOARD_H

/*===========================================================================*/
/* Driver constants.                                                         */
/*===========================================================================*/

/*
 * Setup for Phil Crump's SCOT Resolver Interface board.
 */

/*
 * Board identifier.
 */
#define BOARD_SCOT_RESOLVER_rFeb2020
#define BOARD_NAME                  "SCOT Resolver Interface - Feb 2020"

/*
 * Board oscillators-related settings.
 * NOTE: LSE not fitted.
 * NOTE: HSE 8MHz 10ppm XTAL fitted.
 */
#if !defined(STM32_LSECLK)
#define STM32_LSECLK                0U
#endif

#define STM32_LSEDRV                (3U << 3U)

#if !defined(STM32_HSECLK)
#define STM32_HSECLK                8000000U
#endif

/*
 * MCU type as defined in the ST header.
 */
#define STM32F042x6

/*
 * IO pins assignments.
 */
#define GPIOA_RD_nSAMPLE            0U
#define GPIOA_RD_RES0               1U
#define GPIOA_RD_RES1               2U
#define GPIOA_RD_A0                 3U
#define GPIOA_RD_A1                 4U
#define GPIOA_RD_nLOT               5U
#define GPIOA_RD_nDOT               6U
#define GPIOA_PIN7                  7U
#define GPIOA_PIN8                  8U
#define GPIOA_UART_TX               9U
#define GPIOA_UART_RX               10U
#define GPIOA_CAN_RX                11U
#define GPIOA_CAN_TX                12U
#define GPIOA_SWDIO                 13U
#define GPIOA_SWCLK                 14U
#define GPIOA_RD_SPI_nCS            15U

#define GPIOB_PIN0                  0U
#define GPIOB_PIN1                  1U
#define GPIOB_RD_SPI_SCK            3U
#define GPIOB_RD_SPI_MISO           4U
#define GPIOB_RD_SPI_MOSI           5U
#define GPIOB_PIN6                  6U
#define GPIOB_PIN7                  7U
#define GPIOB_BOOT0                 8U

#define GPIOF_OSC_IN                0U
#define GPIOF_OSC_OUT               1U

/*
 * IO lines assignments.
 */
#define LINE_RD_nSAMPLE             PAL_LINE(GPIOA, GPIOA_RD_nSAMPLE)
#define LINE_RD_RES0                PAL_LINE(GPIOA, GPIOA_RD_RES0)
#define LINE_RD_RES1                PAL_LINE(GPIOA, GPIOA_RD_RES1)
#define LINE_RD_A0                  PAL_LINE(GPIOA, GPIOA_RD_A0)
#define LINE_RD_A1                  PAL_LINE(GPIOA, GPIOA_RD_A1)
#define LINE_RD_nLOT                PAL_LINE(GPIOA, GPIOA_RD_nLOT)
#define LINE_RD_nDOT                PAL_LINE(GPIOA, GPIOA_RD_nDOT)
#define LINE_RD_SPI_nCS             PAL_LINE(GPIOA, GPIOA_RD_SPI_nCS)

/*===========================================================================*/
/* Driver pre-compile time settings.                                         */
/*===========================================================================*/

/*===========================================================================*/
/* Derived constants and error checks.                                       */
/*===========================================================================*/

/*===========================================================================*/
/* Driver data structures and types.                                         */
/*===========================================================================*/

/*===========================================================================*/
/* Driver macros.                                                            */
/*===========================================================================*/

/*
 * I/O ports initial setup, this configuration is established soon after reset
 * in the initialization code.
 * Please refer to the STM32 Reference Manual for details.
 */
#define PIN_MODE_INPUT(n)           (0U << ((n) * 2U))
#define PIN_MODE_OUTPUT(n)          (1U << ((n) * 2U))
#define PIN_MODE_ALTERNATE(n)       (2U << ((n) * 2U))
#define PIN_MODE_ANALOG(n)          (3U << ((n) * 2U))
#define PIN_ODR_LOW(n)              (0U << (n))
#define PIN_ODR_HIGH(n)             (1U << (n))
#define PIN_OTYPE_PUSHPULL(n)       (0U << (n))
#define PIN_OTYPE_OPENDRAIN(n)      (1U << (n))
#define PIN_OSPEED_VERYLOW(n)       (0U << ((n) * 2U))
#define PIN_OSPEED_LOW(n)           (1U << ((n) * 2U))
#define PIN_OSPEED_MEDIUM(n)        (2U << ((n) * 2U))
#define PIN_OSPEED_HIGH(n)          (3U << ((n) * 2U))
#define PIN_PUPDR_FLOATING(n)       (0U << ((n) * 2U))
#define PIN_PUPDR_PULLUP(n)         (1U << ((n) * 2U))
#define PIN_PUPDR_PULLDOWN(n)       (2U << ((n) * 2U))
#define PIN_AFIO_AF(n, v)           ((v) << (((n) % 8U) * 4U))

/*
 * GPIOA setup:
 *
*/

#define VAL_GPIOA_MODER             (PIN_MODE_OUTPUT(GPIOA_RD_nSAMPLE) |    \
                                     PIN_MODE_OUTPUT(GPIOA_RD_RES0) |       \
                                     PIN_MODE_OUTPUT(GPIOA_RD_RES1) |       \
                                     PIN_MODE_OUTPUT(GPIOA_RD_A0) |         \
                                     PIN_MODE_OUTPUT(GPIOA_RD_A1) |         \
                                     PIN_MODE_INPUT(GPIOA_RD_nLOT) |        \
                                     PIN_MODE_INPUT(GPIOA_RD_nDOT) |        \
                                     PIN_MODE_ANALOG(GPIOA_PIN7) |          \
                                     PIN_MODE_ANALOG(GPIOA_PIN8) |          \
                                     PIN_MODE_ALTERNATE(GPIOA_UART_TX) |    \
                                     PIN_MODE_ALTERNATE(GPIOA_UART_RX) |    \
                                     PIN_MODE_ALTERNATE(GPIOA_CAN_RX) |     \
                                     PIN_MODE_ALTERNATE(GPIOA_CAN_TX) |     \
                                     PIN_MODE_ALTERNATE(GPIOA_SWDIO) |      \
                                     PIN_MODE_ALTERNATE(GPIOA_SWCLK) |      \
                                     PIN_MODE_OUTPUT(GPIOA_RD_SPI_nCS))

#define VAL_GPIOA_OTYPER            (PIN_OTYPE_PUSHPULL(GPIOA_RD_nSAMPLE) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOA_RD_RES0) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOA_RD_RES1) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOA_RD_A0) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOA_RD_A1) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOA_RD_nLOT) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOA_RD_nDOT) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOA_PIN7) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOA_PIN8) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOA_UART_TX) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOA_UART_RX) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOA_CAN_RX) |    \
                                     PIN_OTYPE_PUSHPULL(GPIOA_CAN_TX) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOA_SWDIO) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOA_SWCLK) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOA_RD_SPI_nCS))

#define VAL_GPIOA_OSPEEDR           (PIN_OSPEED_HIGH(GPIOA_RD_nSAMPLE) |        \
                                     PIN_OSPEED_VERYLOW(GPIOA_RD_RES0) |        \
                                     PIN_OSPEED_VERYLOW(GPIOA_RD_RES1) |         \
                                     PIN_OSPEED_VERYLOW(GPIOA_RD_A0) |         \
                                     PIN_OSPEED_VERYLOW(GPIOA_RD_A1) |        \
                                     PIN_OSPEED_LOW(GPIOA_RD_nLOT) |         \
                                     PIN_OSPEED_LOW(GPIOA_RD_nDOT) |        \
                                     PIN_OSPEED_LOW(GPIOA_PIN7) |        \
                                     PIN_OSPEED_LOW(GPIOA_PIN8) |        \
                                     PIN_OSPEED_HIGH(GPIOA_UART_TX) |        \
                                     PIN_OSPEED_HIGH(GPIOA_UART_RX) |        \
                                     PIN_OSPEED_HIGH(GPIOA_CAN_RX) |       \
                                     PIN_OSPEED_HIGH(GPIOA_CAN_TX) |        \
                                     PIN_OSPEED_HIGH(GPIOA_SWDIO) |         \
                                     PIN_OSPEED_HIGH(GPIOA_SWCLK) |         \
                                     PIN_OSPEED_HIGH(GPIOA_RD_SPI_nCS))

#define VAL_GPIOA_PUPDR             (PIN_PUPDR_PULLUP(GPIOA_RD_nSAMPLE) |       \
                                     PIN_PUPDR_PULLUP(GPIOA_RD_RES0) |       \
                                     PIN_PUPDR_PULLUP(GPIOA_RD_RES1) |     \
                                     PIN_PUPDR_PULLUP(GPIOA_RD_A0) |       \
                                     PIN_PUPDR_PULLUP(GPIOA_RD_A1) |       \
                                     PIN_PUPDR_FLOATING(GPIOA_RD_nLOT) |       \
                                     PIN_PUPDR_FLOATING(GPIOA_RD_nDOT) |       \
                                     PIN_PUPDR_FLOATING(GPIOA_PIN7) |       \
                                     PIN_PUPDR_FLOATING(GPIOA_PIN8) |       \
                                     PIN_PUPDR_FLOATING(GPIOA_UART_TX) |       \
                                     PIN_PUPDR_FLOATING(GPIOA_UART_RX) |       \
                                     PIN_PUPDR_PULLUP(GPIOA_CAN_RX) |      \
                                     PIN_PUPDR_PULLUP(GPIOA_CAN_TX) |       \
                                     PIN_PUPDR_PULLUP(GPIOA_SWDIO) |        \
                                     PIN_PUPDR_PULLDOWN(GPIOA_SWCLK) |      \
                                     PIN_PUPDR_PULLUP(GPIOA_RD_SPI_nCS))

#define VAL_GPIOA_ODR               (PIN_ODR_HIGH(GPIOA_RD_nSAMPLE) |           \
                                     PIN_ODR_HIGH(GPIOA_RD_RES0) |           \
                                     PIN_ODR_HIGH(GPIOA_RD_RES1) |           \
                                     PIN_ODR_HIGH(GPIOA_RD_A0) |           \
                                     PIN_ODR_HIGH(GPIOA_RD_A1) |           \
                                     PIN_ODR_LOW(GPIOA_RD_nLOT) |            \
                                     PIN_ODR_LOW(GPIOA_RD_nDOT) |           \
                                     PIN_ODR_HIGH(GPIOA_PIN7) |           \
                                     PIN_ODR_HIGH(GPIOA_PIN8) |           \
                                     PIN_ODR_HIGH(GPIOA_UART_TX) |           \
                                     PIN_ODR_HIGH(GPIOA_UART_RX) |           \
                                     PIN_ODR_HIGH(GPIOA_CAN_RX) |          \
                                     PIN_ODR_HIGH(GPIOA_CAN_TX) |           \
                                     PIN_ODR_HIGH(GPIOA_SWDIO) |            \
                                     PIN_ODR_HIGH(GPIOA_SWCLK) |            \
                                     PIN_ODR_HIGH(GPIOA_RD_SPI_nCS))

#define VAL_GPIOA_AFRL              (PIN_AFIO_AF(GPIOA_RD_nSAMPLE, 0U) |        \
                                     PIN_AFIO_AF(GPIOA_RD_RES0, 0U) |        \
                                     PIN_AFIO_AF(GPIOA_RD_RES1, 0U) |        \
                                     PIN_AFIO_AF(GPIOA_RD_A0, 0U) |        \
                                     PIN_AFIO_AF(GPIOA_RD_A1, 0U) |        \
                                     PIN_AFIO_AF(GPIOA_RD_nLOT, 0U) |        \
                                     PIN_AFIO_AF(GPIOA_RD_nDOT, 0U) |        \
                                     PIN_AFIO_AF(GPIOA_PIN7, 0U))

#define VAL_GPIOA_AFRH              (PIN_AFIO_AF(GPIOA_PIN8, 0U) |        \
                                     PIN_AFIO_AF(GPIOA_UART_TX, 1U) |        \
                                     PIN_AFIO_AF(GPIOA_UART_RX, 1U) |        \
                                     PIN_AFIO_AF(GPIOA_CAN_RX, 4U) |       \
                                     PIN_AFIO_AF(GPIOA_CAN_TX, 4U) |        \
                                     PIN_AFIO_AF(GPIOA_SWDIO, 0U) |         \
                                     PIN_AFIO_AF(GPIOA_SWCLK, 0U) |         \
                                     PIN_AFIO_AF(GPIOA_RD_SPI_nCS, 0U))

/*
 * GPIOB setup:
 *
*/

#define VAL_GPIOB_MODER             (PIN_MODE_INPUT(GPIOB_PIN0) |         \
                                     PIN_MODE_INPUT(GPIOB_PIN1) |         \
                                     PIN_MODE_ALTERNATE(GPIOB_RD_SPI_SCK) |           \
                                     PIN_MODE_ALTERNATE(GPIOB_RD_SPI_MISO) |       \
                                     PIN_MODE_ALTERNATE(GPIOB_RD_SPI_MOSI) |        \
                                     PIN_MODE_INPUT(GPIOB_PIN6) |        \
                                     PIN_MODE_INPUT(GPIOB_PIN7) |         \
                                     PIN_MODE_INPUT(GPIOB_BOOT0))

#define VAL_GPIOB_OTYPER            (PIN_OTYPE_PUSHPULL(GPIOB_PIN0) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOB_PIN1) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOB_RD_SPI_SCK) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOB_RD_SPI_MISO) |    \
                                     PIN_OTYPE_PUSHPULL(GPIOB_RD_SPI_MOSI) |    \
                                     PIN_OTYPE_PUSHPULL(GPIOB_PIN6) |    \
                                     PIN_OTYPE_PUSHPULL(GPIOB_PIN7) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOB_BOOT0))

#define VAL_GPIOB_OSPEEDR           (PIN_OSPEED_HIGH(GPIOB_PIN0) |        \
                                     PIN_OSPEED_HIGH(GPIOB_PIN1) |        \
                                     PIN_OSPEED_HIGH(GPIOB_RD_SPI_SCK) |          \
                                     PIN_OSPEED_HIGH(GPIOB_RD_SPI_MISO) |       \
                                     PIN_OSPEED_HIGH(GPIOB_RD_SPI_MOSI) |       \
                                     PIN_OSPEED_HIGH(GPIOB_PIN6) |       \
                                     PIN_OSPEED_HIGH(GPIOB_PIN7) |        \
                                     PIN_OSPEED_HIGH(GPIOB_BOOT0))

#define VAL_GPIOB_PUPDR             (PIN_PUPDR_PULLUP(GPIOB_PIN0) |       \
                                     PIN_PUPDR_PULLUP(GPIOB_PIN1) |       \
                                     PIN_PUPDR_PULLUP(GPIOB_RD_SPI_SCK) |         \
                                     PIN_PUPDR_PULLUP(GPIOB_RD_SPI_MISO) |    \
                                     PIN_PUPDR_PULLUP(GPIOB_RD_SPI_MOSI) |      \
                                     PIN_PUPDR_PULLUP(GPIOB_PIN6) |      \
                                     PIN_PUPDR_PULLUP(GPIOB_PIN7) |       \
                                     PIN_PUPDR_PULLUP(GPIOB_BOOT0))

#define VAL_GPIOB_ODR               (PIN_ODR_HIGH(GPIOB_PIN0) |           \
                                     PIN_ODR_HIGH(GPIOB_PIN1) |           \
                                     PIN_ODR_HIGH(GPIOB_RD_SPI_SCK) |             \
                                     PIN_ODR_LOW(GPIOB_RD_SPI_MISO) |           \
                                     PIN_ODR_HIGH(GPIOB_RD_SPI_MOSI) |          \
                                     PIN_ODR_HIGH(GPIOB_PIN6) |          \
                                     PIN_ODR_HIGH(GPIOB_PIN7) |           \
                                     PIN_ODR_HIGH(GPIOB_BOOT0))

#define VAL_GPIOB_AFRL              (PIN_AFIO_AF(GPIOB_PIN0, 0U) |        \
                                     PIN_AFIO_AF(GPIOB_PIN1, 0U) |        \
                                     PIN_AFIO_AF(GPIOB_RD_SPI_SCK, 0U) |          \
                                     PIN_AFIO_AF(GPIOB_RD_SPI_MISO, 0U) |       \
                                     PIN_AFIO_AF(GPIOB_RD_SPI_MOSI, 0U) |       \
                                     PIN_AFIO_AF(GPIOB_PIN6, 0U) |       \
                                     PIN_AFIO_AF(GPIOB_PIN7, 0U))
#define VAL_GPIOB_AFRH              (PIN_AFIO_AF(GPIOB_BOOT0, 0U))


#define VAL_GPIOF_MODER             (PIN_MODE_INPUT(GPIOF_OSC_IN) |         \
                                     PIN_MODE_INPUT(GPIOF_OSC_OUT))

#define VAL_GPIOF_OTYPER            (PIN_OTYPE_PUSHPULL(GPIOF_OSC_IN) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOF_OSC_OUT))

#define VAL_GPIOF_OSPEEDR           (PIN_OSPEED_HIGH(GPIOF_OSC_IN) |        \
                                     PIN_OSPEED_HIGH(GPIOF_OSC_OUT))

#define VAL_GPIOF_PUPDR             (PIN_PUPDR_PULLUP(GPIOF_OSC_IN) |       \
                                     PIN_PUPDR_PULLUP(GPIOF_OSC_OUT))

#define VAL_GPIOF_ODR               (PIN_ODR_HIGH(GPIOF_OSC_IN) |           \
                                     PIN_ODR_HIGH(GPIOF_OSC_OUT))

#define VAL_GPIOF_AFRL              (PIN_AFIO_AF(GPIOF_OSC_IN, 0U) |        \
                                     PIN_AFIO_AF(GPIOF_OSC_OUT, 0U))
#define VAL_GPIOF_AFRH              ( 0x00 )

/*===========================================================================*/
/* External declarations.                                                    */
/*===========================================================================*/

#if !defined(_FROM_ASM_)
#ifdef __cplusplus
extern "C" {
#endif
  void boardInit(void);
#ifdef __cplusplus
}
#endif
#endif /* _FROM_ASM_ */

#endif /* BOARD_H */
