EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L agg-kicad:STM32F0xxKxTx IC?
U 1 1 5E4C6D0F
P 4050 3700
AR Path="/5E4C6D0F" Ref="IC?"  Part="1" 
AR Path="/5E4C3ECD/5E4C6D0F" Ref="IC9"  Part="1" 
F 0 "IC9" H 4050 4925 50  0000 C CNN
F 1 "STM32F0xxKxTx" H 4050 4834 50  0000 C CNN
F 2 "agg:LQFP-32" H 3750 2500 50  0001 L CNN
F 3 "http://www.st.com/web/en/resource/technical/document/datasheet/DM00088500.pdf" H 3750 2400 50  0001 L CNN
F 4 "2432085" H 3750 2300 50  0001 L CNN "Farnell"
	1    4050 3700
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:SWD P?
U 1 1 5E4C6D16
P 3900 5750
AR Path="/5E4C6D16" Ref="P?"  Part="1" 
AR Path="/5E4C3ECD/5E4C6D16" Ref="P1"  Part="1" 
F 0 "P1" H 3900 6175 50  0000 C CNN
F 1 "SWD" H 3900 6084 50  0000 C CNN
F 2 "agg:FTSH-105-01-F-D-K" H 3500 5350 50  0001 L CNN
F 3 "" H 4250 5550 50  0001 C CNN
F 4 "FTSH-105-01-F-D-K" H 3500 5250 50  0001 L CNN "Toby"
	1    3900 5750
	1    0    0    -1  
$EndComp
Text HLabel 1600 4800 0    50   Input ~ 0
MCU_CAN_TXD
Text HLabel 1600 5250 0    50   Input ~ 0
MCU_CAN_RXD
Text HLabel 1750 2500 0    50   Input ~ 0
3.3V_MCU
Text HLabel 5850 1550 0    50   Input ~ 0
5V_RESOLVER_ANALOGUE
Text HLabel 9800 3450 2    50   Input ~ 0
VREF_AD2S1210
Text HLabel 9800 2450 2    50   Input ~ 0
RESOLVER_EXC+
Text HLabel 9800 2650 2    50   Input ~ 0
RESOLVER_EXC-
Text HLabel 9800 2850 2    50   Input ~ 0
RESOLVER_SIN+
Text HLabel 9800 2950 2    50   Input ~ 0
RESOLVER_SIN-
Text HLabel 9800 3150 2    50   Input ~ 0
RESOLVER_COS+
Text HLabel 9800 3250 2    50   Input ~ 0
RESOLVER_COS-
Text HLabel 5850 850  0    50   Input ~ 0
5V_RESOLVER_DIGITAL
$Comp
L Device:C C62
U 1 1 5E58F938
P 5950 2450
F 0 "C62" H 6065 2496 50  0000 L CNN
F 1 "100n" H 6065 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5988 2300 50  0001 C CNN
F 3 "~" H 5950 2450 50  0001 C CNN
	1    5950 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C55
U 1 1 5E5957ED
P 1850 2900
F 0 "C55" H 1965 2946 50  0000 L CNN
F 1 "100n" H 1965 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1888 2750 50  0001 C CNN
F 3 "~" H 1850 2900 50  0001 C CNN
	1    1850 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C56
U 1 1 5E596513
P 2300 2900
F 0 "C56" H 2415 2946 50  0000 L CNN
F 1 "100n" H 2415 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2338 2750 50  0001 C CNN
F 3 "~" H 2300 2900 50  0001 C CNN
	1    2300 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C59
U 1 1 5E596816
P 2750 2950
F 0 "C59" H 2865 2996 50  0000 L CNN
F 1 "100n" H 2865 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2788 2800 50  0001 C CNN
F 3 "~" H 2750 2950 50  0001 C CNN
	1    2750 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3000 3400 3000
Wire Wire Line
	3400 3000 3400 3100
Wire Wire Line
	3400 3100 3650 3100
Wire Wire Line
	3400 3100 2750 3100
Connection ~ 3400 3100
Wire Wire Line
	3650 2900 3100 2900
Wire Wire Line
	3100 2900 3100 2800
Wire Wire Line
	3100 2800 2750 2800
Wire Wire Line
	2300 3050 2300 3100
Wire Wire Line
	2300 3100 2750 3100
Connection ~ 2750 3100
Wire Wire Line
	2300 3100 1850 3100
Wire Wire Line
	1850 3100 1850 3050
Connection ~ 2300 3100
Wire Wire Line
	1850 2750 2300 2750
Wire Wire Line
	3400 2750 3400 2800
Wire Wire Line
	3400 2800 3650 2800
Connection ~ 2300 2750
Wire Wire Line
	2300 2750 3150 2750
Wire Wire Line
	3650 2700 3400 2700
Wire Wire Line
	3400 2700 3400 2750
Connection ~ 3400 2750
Wire Wire Line
	2750 2800 2750 2500
Wire Wire Line
	2750 2500 2700 2500
Wire Wire Line
	2700 2500 2700 2650
Wire Wire Line
	2700 2650 2650 2650
Wire Wire Line
	2650 2650 2650 2500
Wire Wire Line
	2650 2500 2600 2500
Wire Wire Line
	2600 2500 2600 2650
Wire Wire Line
	2600 2650 2550 2650
Wire Wire Line
	2550 2650 2550 2500
Wire Wire Line
	2550 2500 2500 2500
Wire Wire Line
	2500 2500 2500 2650
Wire Wire Line
	2500 2650 2450 2650
Wire Wire Line
	2450 2650 2450 2500
Wire Wire Line
	2450 2500 1850 2500
Wire Wire Line
	1850 2500 1850 2750
Connection ~ 2750 2800
Connection ~ 1850 2750
Wire Wire Line
	1750 2500 1850 2500
Connection ~ 1850 2500
$Comp
L power:GND #PWR0137
U 1 1 5E5B6FDC
P 1850 3100
F 0 "#PWR0137" H 1850 2850 50  0001 C CNN
F 1 "GND" H 1855 2927 50  0000 C CNN
F 2 "" H 1850 3100 50  0001 C CNN
F 3 "" H 1850 3100 50  0001 C CNN
	1    1850 3100
	1    0    0    -1  
$EndComp
Connection ~ 1850 3100
$Comp
L power:GND #PWR0138
U 1 1 5E5B7AAF
P 3350 6000
F 0 "#PWR0138" H 3350 5750 50  0001 C CNN
F 1 "GND" H 3355 5827 50  0000 C CNN
F 2 "" H 3350 6000 50  0001 C CNN
F 3 "" H 3350 6000 50  0001 C CNN
	1    3350 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6000 3350 5950
Wire Wire Line
	3350 5950 3400 5950
Wire Wire Line
	3350 5950 3350 5750
Wire Wire Line
	3350 5750 3400 5750
Connection ~ 3350 5950
Wire Wire Line
	3350 5750 3350 5650
Wire Wire Line
	3350 5650 3400 5650
Connection ~ 3350 5750
Wire Wire Line
	4400 5950 4500 5950
Wire Wire Line
	4500 5950 4500 6300
Wire Wire Line
	4500 6300 3050 6300
Wire Wire Line
	3050 6300 3050 3300
Wire Wire Line
	3050 3300 3650 3300
$Comp
L power:GND #PWR0139
U 1 1 5E5BD5AE
P 3450 3400
F 0 "#PWR0139" H 3450 3150 50  0001 C CNN
F 1 "GND" V 3455 3272 50  0000 R CNN
F 2 "" H 3450 3400 50  0001 C CNN
F 3 "" H 3450 3400 50  0001 C CNN
	1    3450 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 3400 3650 3400
Wire Wire Line
	3400 5550 3150 5550
Wire Wire Line
	3150 5550 3150 2750
Connection ~ 3150 2750
Wire Wire Line
	3150 2750 3400 2750
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5E5CB445
P 2600 3700
F 0 "Y1" H 2406 3654 50  0000 R CNN
F 1 "Crystal_GND24" H 2406 3745 50  0000 R CNN
F 2 "Crystal:Crystal_SMD_Abracon_ABM8G-4Pin_3.2x2.5mm" H 2600 3700 50  0001 C CNN
F 3 "~" H 2600 3700 50  0001 C CNN
	1    2600 3700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C57
U 1 1 5E5CC844
P 2450 3450
F 0 "C57" V 2702 3450 50  0000 C CNN
F 1 "12p" V 2611 3450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2488 3300 50  0001 C CNN
F 3 "~" H 2450 3450 50  0001 C CNN
	1    2450 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C58
U 1 1 5E5CD418
P 2450 4100
F 0 "C58" V 2198 4100 50  0000 C CNN
F 1 "12p" V 2289 4100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2488 3950 50  0001 C CNN
F 3 "~" H 2450 4100 50  0001 C CNN
	1    2450 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 3850 2600 3900
Wire Wire Line
	2400 3700 2300 3700
Wire Wire Line
	2300 3700 2300 3450
Connection ~ 2300 3700
Wire Wire Line
	2600 3450 2600 3500
Wire Wire Line
	2300 3100 2300 3450
Connection ~ 2300 3450
Wire Wire Line
	3650 3600 2900 3600
Wire Wire Line
	2900 3600 2900 3500
Wire Wire Line
	2900 3500 2600 3500
Connection ~ 2600 3500
Wire Wire Line
	2600 3500 2600 3550
Wire Wire Line
	3650 3700 2900 3700
Wire Wire Line
	2900 3700 2900 3900
Wire Wire Line
	2900 3900 2600 3900
Connection ~ 2600 3900
Wire Wire Line
	2600 3900 2600 4100
Wire Wire Line
	2300 3700 2300 4100
Text Label 4700 3900 0    50   ~ 0
CAN_MCU_TX
Wire Wire Line
	4450 3900 5300 3900
Wire Wire Line
	4450 3800 5300 3800
Text Label 4700 3800 0    50   ~ 0
CAN_MCU_RX
Wire Wire Line
	5300 3700 4450 3700
Text Label 4700 3600 0    50   ~ 0
UART_DEBUG_TX
Text Label 4700 3700 0    50   ~ 0
UART_DEBUG_RX
$Comp
L Device:Crystal Y2
U 1 1 5E61468E
P 8900 5800
F 0 "Y2" H 8900 6068 50  0000 C CNN
F 1 "Crystal" H 8900 5977 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_SeikoEpson_MA505-2Pin_12.7x5.1mm_HandSoldering" H 8900 5800 50  0001 C CNN
F 3 "~" H 8900 5800 50  0001 C CNN
	1    8900 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C67
U 1 1 5E615999
P 9100 6050
F 0 "C67" H 9215 6096 50  0000 L CNN
F 1 "18p" H 9215 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9138 5900 50  0001 C CNN
F 3 "~" H 9100 6050 50  0001 C CNN
	1    9100 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C65
U 1 1 5E616057
P 8700 6050
F 0 "C65" H 8815 6096 50  0000 L CNN
F 1 "18p" H 8815 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8738 5900 50  0001 C CNN
F 3 "~" H 8700 6050 50  0001 C CNN
	1    8700 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5900 8700 5800
Wire Wire Line
	8700 5800 8750 5800
Wire Wire Line
	9050 5800 9100 5800
Wire Wire Line
	9100 5800 9100 5900
Wire Wire Line
	9100 6200 8900 6200
$Comp
L power:GND #PWR0140
U 1 1 5E6216E5
P 8900 6200
F 0 "#PWR0140" H 8900 5950 50  0001 C CNN
F 1 "GND" H 8905 6027 50  0000 C CNN
F 2 "" H 8900 6200 50  0001 C CNN
F 3 "" H 8900 6200 50  0001 C CNN
	1    8900 6200
	1    0    0    -1  
$EndComp
Connection ~ 8900 6200
Wire Wire Line
	8900 6200 8700 6200
$Comp
L agg-kicad:AD2S1210 IC10
U 1 1 5E0AE6FB
P 7250 3950
F 0 "IC10" H 7250 5675 50  0000 C CNN
F 1 "AD2S1210" H 7250 5584 50  0000 C CNN
F 2 "agg:LQFP-48" H 6750 2250 50  0001 L CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD2S1210.pdf" H 6750 2150 50  0001 L CNN
F 4 "584-AD2S1210DSTZ" H 6750 2050 50  0001 L CNN "Mouser"
	1    7250 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C66
U 1 1 5E0C11F3
P 9050 4700
F 0 "C66" H 9165 4746 50  0000 L CNN
F 1 "100n" H 9165 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9088 4550 50  0001 C CNN
F 3 "~" H 9050 4700 50  0001 C CNN
	1    9050 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R39
U 1 1 5E0C223A
P 9050 4400
F 0 "R39" H 9120 4446 50  0000 L CNN
F 1 "10K" H 9120 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8980 4400 50  0001 C CNN
F 3 "~" H 9050 4400 50  0001 C CNN
	1    9050 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 5E0C2D29
P 9050 4850
F 0 "#PWR0141" H 9050 4600 50  0001 C CNN
F 1 "GND" H 9055 4677 50  0000 C CNN
F 2 "" H 9050 4850 50  0001 C CNN
F 3 "" H 9050 4850 50  0001 C CNN
	1    9050 4850
	1    0    0    -1  
$EndComp
Connection ~ 9050 4550
$Comp
L Device:C C63
U 1 1 5E0CF5F6
P 8300 3700
F 0 "C63" H 8415 3746 50  0000 L CNN
F 1 "10n" H 8415 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8338 3550 50  0001 C CNN
F 3 "~" H 8300 3700 50  0001 C CNN
	1    8300 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C64
U 1 1 5E0CFD40
P 8700 3700
F 0 "C64" H 8815 3746 50  0000 L CNN
F 1 "10u" H 8815 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8738 3550 50  0001 C CNN
F 3 "~" H 8700 3700 50  0001 C CNN
	1    8700 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C68
U 1 1 5E0D0B9A
P 9650 3700
F 0 "C68" H 9765 3746 50  0000 L CNN
F 1 "100n" H 9765 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9688 3550 50  0001 C CNN
F 3 "~" H 9650 3700 50  0001 C CNN
	1    9650 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3550 8300 3550
Connection ~ 8300 3550
Wire Wire Line
	8300 3550 8700 3550
Wire Wire Line
	7850 3450 9650 3450
Wire Wire Line
	9650 3450 9650 3550
Wire Wire Line
	8300 3850 8700 3850
Connection ~ 8700 3850
Wire Wire Line
	8700 3850 9650 3850
Wire Wire Line
	7850 2450 9800 2450
Wire Wire Line
	7850 2650 9800 2650
Wire Wire Line
	9800 2850 7850 2850
Wire Wire Line
	9800 2950 7850 2950
Wire Wire Line
	9800 3150 7850 3150
Wire Wire Line
	9800 3250 7850 3250
Wire Wire Line
	9800 3450 9650 3450
Connection ~ 9650 3450
$Comp
L Device:C C60
U 1 1 5E11DDEF
P 5950 1000
F 0 "C60" H 6065 1046 50  0000 L CNN
F 1 "100n" H 6065 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5988 850 50  0001 C CNN
F 3 "~" H 5950 1000 50  0001 C CNN
	1    5950 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 5E11E33C
P 5950 1150
F 0 "#PWR0142" H 5950 900 50  0001 C CNN
F 1 "GND" H 5955 977 50  0000 C CNN
F 2 "" H 5950 1150 50  0001 C CNN
F 3 "" H 5950 1150 50  0001 C CNN
	1    5950 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 850  5950 850 
Wire Wire Line
	6550 2450 6650 2450
Connection ~ 5950 850 
Wire Wire Line
	5950 850  6550 850 
Wire Wire Line
	6550 850  6550 2450
$Comp
L Device:C C61
U 1 1 5E147DE1
P 5950 1700
F 0 "C61" H 6065 1746 50  0000 L CNN
F 1 "100n" H 6065 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5988 1550 50  0001 C CNN
F 3 "~" H 5950 1700 50  0001 C CNN
	1    5950 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2550 6450 2550
Wire Wire Line
	6450 2550 6450 1550
Wire Wire Line
	6450 1550 5950 1550
Connection ~ 5950 1550
Wire Wire Line
	5950 1550 5850 1550
Wire Wire Line
	1850 2500 1850 2300
Wire Wire Line
	1850 2300 5950 2300
Wire Wire Line
	6350 2300 6350 2650
Wire Wire Line
	6350 2650 6650 2650
Connection ~ 5950 2300
Wire Wire Line
	5950 2300 6350 2300
$Comp
L power:GND #PWR0143
U 1 1 5E156796
P 5950 2600
F 0 "#PWR0143" H 5950 2350 50  0001 C CNN
F 1 "GND" H 5955 2427 50  0000 C CNN
F 2 "" H 5950 2600 50  0001 C CNN
F 3 "" H 5950 2600 50  0001 C CNN
	1    5950 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0144
U 1 1 5E1865E3
P 5950 1850
F 0 "#PWR0144" H 5950 1600 50  0001 C CNN
F 1 "GNDA" H 5955 1677 50  0000 C CNN
F 2 "" H 5950 1850 50  0001 C CNN
F 3 "" H 5950 1850 50  0001 C CNN
	1    5950 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0145
U 1 1 5E188F4F
P 6650 3050
F 0 "#PWR0145" H 6650 2800 50  0001 C CNN
F 1 "GNDA" V 6655 2923 50  0000 R CNN
F 2 "" H 6650 3050 50  0001 C CNN
F 3 "" H 6650 3050 50  0001 C CNN
	1    6650 3050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 5E18A1A3
P 6200 2950
F 0 "#PWR0146" H 6200 2700 50  0001 C CNN
F 1 "GND" H 6205 2777 50  0000 C CNN
F 2 "" H 6200 2950 50  0001 C CNN
F 3 "" H 6200 2950 50  0001 C CNN
	1    6200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2950 6550 2950
Wire Wire Line
	6650 2850 6550 2850
Wire Wire Line
	6550 2850 6550 2950
Connection ~ 6550 2950
Wire Wire Line
	6550 2950 6200 2950
$Comp
L power:GNDA #PWR0147
U 1 1 5E195DA5
P 8300 3850
F 0 "#PWR0147" H 8300 3600 50  0001 C CNN
F 1 "GNDA" H 8305 3677 50  0000 C CNN
F 2 "" H 8300 3850 50  0001 C CNN
F 3 "" H 8300 3850 50  0001 C CNN
	1    8300 3850
	1    0    0    -1  
$EndComp
Connection ~ 8300 3850
Wire Wire Line
	4450 4200 5300 4200
Text Label 4700 4200 0    50   ~ 0
SPI_RD_~CS
Wire Wire Line
	3650 4200 3250 4200
Text Label 3250 4200 0    50   ~ 0
SPI_RD_SCK
Wire Wire Line
	3650 4300 3250 4300
Text Label 3250 4300 0    50   ~ 0
SPI_RD_MISO
Wire Wire Line
	3650 4400 3250 4400
Text Label 3250 4400 0    50   ~ 0
SPI_RD_MOSI
Wire Wire Line
	4450 4000 5300 4000
Wire Wire Line
	4450 4100 5300 4100
Text Label 4700 4000 0    50   ~ 0
SWD_IO
Text Label 4700 4100 0    50   ~ 0
SWD_CLK
Wire Wire Line
	9100 5800 9100 5350
Wire Wire Line
	9100 5350 7850 5350
Connection ~ 9100 5800
Wire Wire Line
	7850 5450 8700 5450
Wire Wire Line
	8700 5450 8700 5800
Connection ~ 8700 5800
Wire Wire Line
	7850 4550 9050 4550
Wire Wire Line
	6350 2300 6350 2100
Wire Wire Line
	6350 2100 9050 2100
Wire Wire Line
	9050 2100 9050 4100
Connection ~ 6350 2300
Wire Wire Line
	7850 4250 8650 4250
Wire Wire Line
	7850 4350 8650 4350
Text Label 8400 4250 0    50   ~ 0
RES0
Text Label 8400 4350 0    50   ~ 0
RES1
Wire Wire Line
	7850 4750 8650 4750
Wire Wire Line
	7850 4850 8650 4850
Text Label 8500 4750 0    50   ~ 0
A0
Text Label 8500 4850 0    50   ~ 0
A1
Wire Wire Line
	7850 5050 8650 5050
Wire Wire Line
	7850 5150 8650 5150
Text Label 8500 5050 0    50   ~ 0
~LOT
Text Label 8500 5150 0    50   ~ 0
~DOT
Wire Wire Line
	1600 4800 2150 4800
Text Label 1650 4800 0    50   ~ 0
CAN_MCU_TX
Wire Wire Line
	1600 5250 2150 5250
Text Label 1650 5250 0    50   ~ 0
CAN_MCU_RX
Text Notes 3150 7150 0    50   ~ 0
UART Port for debugging
$Comp
L agg-kicad:CONN_01x03 J7
U 1 1 5E33F1D8
P 3500 6950
F 0 "J7" H 3422 6799 50  0000 R CNN
F 1 "CONN_01x03" H 3422 6890 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3500 6950 50  0001 C CNN
F 3 "" H 3500 6950 50  0001 C CNN
	1    3500 6950
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0148
U 1 1 5E3594EC
P 3600 6950
F 0 "#PWR0148" H 3600 6700 50  0001 C CNN
F 1 "GND" V 3605 6822 50  0000 R CNN
F 2 "" H 3600 6950 50  0001 C CNN
F 3 "" H 3600 6950 50  0001 C CNN
	1    3600 6950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 6850 4250 6850
Text Label 3650 6850 0    50   ~ 0
UART_DEBUG_RX
Wire Wire Line
	3600 6750 4250 6750
Text Label 3650 6750 0    50   ~ 0
UART_DEBUG_TX
Wire Wire Line
	4450 3600 5300 3600
Wire Wire Line
	4400 5550 5200 5550
Wire Wire Line
	4400 5650 5200 5650
Text Label 4750 5650 0    50   ~ 0
SWD_CLK
Text Label 4750 5550 0    50   ~ 0
SWD_IO
Wire Wire Line
	6650 5250 5950 5250
Wire Wire Line
	6650 5350 5950 5350
Wire Wire Line
	6650 5450 5950 5450
Text Label 5950 5250 0    50   ~ 0
SPI_RD_SCK
Text Label 5950 5450 0    50   ~ 0
SPI_RD_MISO
Text Label 5950 5350 0    50   ~ 0
SPI_RD_MOSI
$Comp
L power:GND #PWR0149
U 1 1 5E43D82F
P 6650 3250
F 0 "#PWR0149" H 6650 3000 50  0001 C CNN
F 1 "GND" H 6655 3077 50  0000 C CNN
F 2 "" H 6650 3250 50  0001 C CNN
F 3 "" H 6650 3250 50  0001 C CNN
	1    6650 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0150
U 1 1 5E43F2F6
P 6650 3550
F 0 "#PWR0150" H 6650 3300 50  0001 C CNN
F 1 "GND" H 6655 3377 50  0000 C CNN
F 2 "" H 6650 3550 50  0001 C CNN
F 3 "" H 6650 3550 50  0001 C CNN
	1    6650 3550
	0    1    1    0   
$EndComp
Text Notes 5450 3550 0    50   ~ 0
~CS~ Unused for Serial I/F
Wire Wire Line
	6650 3750 5950 3750
Text Label 5950 3750 0    50   ~ 0
SPI_RD_~CS
Wire Wire Line
	6650 3350 5950 3350
Text Label 5950 3350 0    50   ~ 0
~SAMPLE
Wire Wire Line
	6350 2650 6350 3650
Wire Wire Line
	6350 3650 6650 3650
Connection ~ 6350 2650
$Comp
L Device:LED D6
U 1 1 5E469FA8
P 10050 4250
F 0 "D6" V 10089 4133 50  0000 R CNN
F 1 "LED" V 9998 4133 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10050 4250 50  0001 C CNN
F 3 "~" H 10050 4250 50  0001 C CNN
	1    10050 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R41
U 1 1 5E46BBF6
P 10050 4550
F 0 "R41" H 10120 4596 50  0000 L CNN
F 1 "120R" H 10120 4505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9980 4550 50  0001 C CNN
F 3 "~" H 10050 4550 50  0001 C CNN
	1    10050 4550
	1    0    0    -1  
$EndComp
Text Label 9800 4700 0    50   ~ 0
~LOT
Text Label 9800 5550 0    50   ~ 0
~DOT
$Comp
L Device:R R42
U 1 1 5E47C86E
P 10050 5400
F 0 "R42" H 10120 5446 50  0000 L CNN
F 1 "120R" H 10120 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9980 5400 50  0001 C CNN
F 3 "~" H 10050 5400 50  0001 C CNN
	1    10050 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 5E47CDC4
P 10050 5100
F 0 "D7" V 10089 4983 50  0000 R CNN
F 1 "LED" V 9998 4983 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 10050 5100 50  0001 C CNN
F 3 "~" H 10050 5100 50  0001 C CNN
	1    10050 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9800 4700 10050 4700
Wire Wire Line
	9800 5550 10050 5550
Wire Wire Line
	10050 4100 9550 4100
Connection ~ 9050 4100
Wire Wire Line
	9050 4100 9050 4250
Wire Wire Line
	10050 4950 9550 4950
Wire Wire Line
	9550 4950 9550 4100
Connection ~ 9550 4100
Wire Wire Line
	9550 4100 9050 4100
Text Notes 10350 4300 0    50   ~ 0
Loss of Tracking
Text Notes 10350 5200 0    50   ~ 0
Degradation of\n Tracking
Wire Wire Line
	4450 2700 5300 2700
Wire Wire Line
	4450 2800 5300 2800
Wire Wire Line
	4450 2900 5300 2900
Wire Wire Line
	4450 3000 5300 3000
Wire Wire Line
	4450 3100 5300 3100
Text Notes 5700 3250 0    50   ~ 0
Enable Serial I/F
Wire Wire Line
	4450 3200 5300 3200
Wire Wire Line
	4450 3300 5300 3300
Text Label 4700 2700 0    50   ~ 0
~SAMPLE
Text Label 4700 2800 0    50   ~ 0
RES0
Text Label 4700 2900 0    50   ~ 0
RES1
Text Label 4700 3000 0    50   ~ 0
A0
Text Label 4700 3100 0    50   ~ 0
A1
Text Label 4700 3200 0    50   ~ 0
~LOT
Text Label 4700 3300 0    50   ~ 0
~DOT
Wire Wire Line
	7850 3750 8150 3750
Wire Wire Line
	7850 3850 8150 3850
Wire Wire Line
	7850 3950 8150 3950
Text Label 7900 3750 0    50   ~ 0
INC_A
Text Label 7900 3850 0    50   ~ 0
INC_B
Text Label 7900 3950 0    50   ~ 0
INC_NM
$Comp
L Device:LED D4
U 1 1 5E50C657
P 8250 1500
F 0 "D4" V 8289 1383 50  0000 R CNN
F 1 "LED" V 8198 1383 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8250 1500 50  0001 C CNN
F 3 "~" H 8250 1500 50  0001 C CNN
	1    8250 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R38
U 1 1 5E50E4E1
P 8250 1200
F 0 "R38" H 8320 1246 50  0000 L CNN
F 1 "67R" H 8320 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8180 1200 50  0001 C CNN
F 3 "~" H 8250 1200 50  0001 C CNN
	1    8250 1200
	1    0    0    -1  
$EndComp
Text Label 8000 1050 0    50   ~ 0
INC_A
Text Label 9050 1050 0    50   ~ 0
INC_B
Text Label 7000 1050 0    50   ~ 0
INC_NM
$Comp
L Device:LED D5
U 1 1 5E516348
P 9300 1500
F 0 "D5" V 9339 1383 50  0000 R CNN
F 1 "LED" V 9248 1383 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9300 1500 50  0001 C CNN
F 3 "~" H 9300 1500 50  0001 C CNN
	1    9300 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R40
U 1 1 5E516352
P 9300 1200
F 0 "R40" H 9370 1246 50  0000 L CNN
F 1 "67R" H 9370 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9230 1200 50  0001 C CNN
F 3 "~" H 9300 1200 50  0001 C CNN
	1    9300 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5E532866
P 7300 1500
F 0 "D3" V 7339 1383 50  0000 R CNN
F 1 "LED" V 7248 1383 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7300 1500 50  0001 C CNN
F 3 "~" H 7300 1500 50  0001 C CNN
	1    7300 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R37
U 1 1 5E532870
P 7300 1200
F 0 "R37" H 7370 1246 50  0000 L CNN
F 1 "67R" H 7370 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7230 1200 50  0001 C CNN
F 3 "~" H 7300 1200 50  0001 C CNN
	1    7300 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0151
U 1 1 5E550883
P 7300 1650
F 0 "#PWR0151" H 7300 1400 50  0001 C CNN
F 1 "GND" H 7305 1477 50  0000 C CNN
F 2 "" H 7300 1650 50  0001 C CNN
F 3 "" H 7300 1650 50  0001 C CNN
	1    7300 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0152
U 1 1 5E550D40
P 8250 1650
F 0 "#PWR0152" H 8250 1400 50  0001 C CNN
F 1 "GND" H 8255 1477 50  0000 C CNN
F 2 "" H 8250 1650 50  0001 C CNN
F 3 "" H 8250 1650 50  0001 C CNN
	1    8250 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0153
U 1 1 5E551E6E
P 9300 1650
F 0 "#PWR0153" H 9300 1400 50  0001 C CNN
F 1 "GND" H 9305 1477 50  0000 C CNN
F 2 "" H 9300 1650 50  0001 C CNN
F 3 "" H 9300 1650 50  0001 C CNN
	1    9300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1050 9050 1050
Wire Wire Line
	8250 1050 8000 1050
Wire Wire Line
	7300 1050 7000 1050
$Comp
L Device:C C69
U 1 1 5E4E05E5
P 4650 6100
F 0 "C69" H 4765 6146 50  0000 L CNN
F 1 "100n" H 4765 6055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4688 5950 50  0001 C CNN
F 3 "~" H 4650 6100 50  0001 C CNN
	1    4650 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0154
U 1 1 5E4E18F6
P 4650 6250
F 0 "#PWR0154" H 4650 6000 50  0001 C CNN
F 1 "GND" H 4655 6077 50  0000 C CNN
F 2 "" H 4650 6250 50  0001 C CNN
F 3 "" H 4650 6250 50  0001 C CNN
	1    4650 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5950 4500 5950
Connection ~ 4500 5950
$EndSCHEMATC
