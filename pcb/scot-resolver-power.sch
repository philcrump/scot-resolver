EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 9
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
L agg-kicad:TSR1 IC?
U 1 1 5E2DAFC1
P 3050 1800
AR Path="/5E2DAFC1" Ref="IC?"  Part="1" 
AR Path="/5E2C28ED/5E2DAFC1" Ref="IC4"  Part="1" 
F 0 "IC4" H 3050 2125 50  0000 C CNN
F 1 "TSR1" H 3050 2034 50  0000 C CNN
F 2 "agg:TSR1" H 2750 1500 50  0001 L CNN
F 3 "http://www.tracopower.com/products/tsr1.pdf" H 2750 1400 50  0001 L CNN
	1    3050 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 5E2DAFC7
P 2050 1700
AR Path="/5E2DAFC7" Ref="D?"  Part="1" 
AR Path="/5E2C28ED/5E2DAFC7" Ref="D1"  Part="1" 
F 0 "D1" H 2050 1484 50  0000 C CNN
F 1 "D" H 2050 1575 50  0000 C CNN
F 2 "Diode_SMD:D_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2050 1700 50  0001 C CNN
F 3 "~" H 2050 1700 50  0001 C CNN
	1    2050 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5E2DAFCD
P 2300 1850
AR Path="/5E2DAFCD" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E2DAFCD" Ref="C22"  Part="1" 
F 0 "C22" H 2415 1896 50  0000 L CNN
F 1 "2u2" H 2415 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2338 1700 50  0001 C CNN
F 3 "~" H 2300 1850 50  0001 C CNN
	1    2300 1850
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LT1762 U?
U 1 1 5E2DAFD3
P 2700 3500
AR Path="/5E2DAFD3" Ref="U?"  Part="1" 
AR Path="/5E2C28ED/5E2DAFD3" Ref="U2"  Part="1" 
F 0 "U2" H 2700 3967 50  0000 C CNN
F 1 "LT1762" H 2700 3876 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 2700 3150 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/LT1762.pdf" H 2700 2950 50  0001 C CNN
	1    2700 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E2DAFD9
P 3650 1850
AR Path="/5E2DAFD9" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E2DAFD9" Ref="C25"  Part="1" 
F 0 "C25" H 3765 1896 50  0000 L CNN
F 1 "1u" H 3765 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3688 1700 50  0001 C CNN
F 3 "~" H 3650 1850 50  0001 C CNN
	1    3650 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1700 3650 1700
Wire Wire Line
	3650 1700 3450 1700
Connection ~ 3650 1700
Wire Wire Line
	3950 2000 3650 2000
Wire Wire Line
	2200 1700 2300 1700
Connection ~ 2300 1700
$Comp
L power:GND #PWR?
U 1 1 5E2DB000
P 5050 2050
AR Path="/5E2DB000" Ref="#PWR?"  Part="1" 
AR Path="/5E2C28ED/5E2DB000" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 5050 1800 50  0001 C CNN
F 1 "GND" H 5055 1877 50  0000 C CNN
F 2 "" H 5050 2050 50  0001 C CNN
F 3 "" H 5050 2050 50  0001 C CNN
	1    5050 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E2DB006
P 4400 1850
AR Path="/5E2DB006" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E2DB006" Ref="C27"  Part="1" 
F 0 "C27" H 4515 1896 50  0000 L CNN
F 1 "10u" H 4515 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4438 1700 50  0001 C CNN
F 3 "~" H 4400 1850 50  0001 C CNN
	1    4400 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3600 2300 3300
Connection ~ 2300 3300
$Comp
L Device:R R?
U 1 1 5E2DB019
P 3650 3650
AR Path="/5E2DB019" Ref="R?"  Part="1" 
AR Path="/5E2C28ED/5E2DB019" Ref="R19"  Part="1" 
F 0 "R19" H 3720 3696 50  0000 L CNN
F 1 "R" H 3720 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3580 3650 50  0001 C CNN
F 3 "~" H 3650 3650 50  0001 C CNN
	1    3650 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E2DB01F
P 3650 3350
AR Path="/5E2DB01F" Ref="R?"  Part="1" 
AR Path="/5E2C28ED/5E2DB01F" Ref="R18"  Part="1" 
F 0 "R18" H 3720 3396 50  0000 L CNN
F 1 "R" H 3720 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3580 3350 50  0001 C CNN
F 3 "~" H 3650 3350 50  0001 C CNN
	1    3650 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E2DB025
P 3250 3650
AR Path="/5E2DB025" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E2DB025" Ref="C24"  Part="1" 
F 0 "C24" H 3365 3696 50  0000 L CNN
F 1 "10n" H 3365 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3288 3500 50  0001 C CNN
F 3 "~" H 3250 3650 50  0001 C CNN
	1    3250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3500 3100 3500
Wire Wire Line
	3100 3500 3100 3600
Wire Wire Line
	3250 3800 2700 3800
Connection ~ 2700 3800
$Comp
L Device:C C?
U 1 1 5E2DB039
P 4000 3500
AR Path="/5E2DB039" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E2DB039" Ref="C26"  Part="1" 
F 0 "C26" H 4115 3546 50  0000 L CNN
F 1 "4u7" H 4115 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4038 3350 50  0001 C CNN
F 3 "~" H 4000 3500 50  0001 C CNN
	1    4000 3500
	1    0    0    -1  
$EndComp
Text Notes 3450 1700 0    50   ~ 0
15V
Wire Wire Line
	4400 1650 4400 1700
Connection ~ 4400 1700
Wire Wire Line
	4400 2000 4400 2050
Connection ~ 4400 2000
Wire Notes Line
	1200 1200 1200 2300
Text Notes 2350 1350 0    55   ~ 11
28VDC -> 15VDC Power Input
Text Notes 2500 2200 0    50   ~ 0
TSR1-24150, 400-600KHz SW\n18-36V Input
Text Notes 2300 2900 0    55   ~ 11
15VDC -> 12VDC Exciter
$Comp
L Device:C C?
U 1 1 5E3070F3
P 1950 3550
AR Path="/5E3070F3" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E3070F3" Ref="C20"  Part="1" 
F 0 "C20" H 2065 3596 50  0000 L CNN
F 1 "1u" H 2065 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1988 3400 50  0001 C CNN
F 3 "~" H 1950 3550 50  0001 C CNN
	1    1950 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 3800 1950 3700
Wire Wire Line
	1950 3800 2700 3800
Wire Wire Line
	1950 3400 1950 3300
Wire Wire Line
	1950 3300 2300 3300
Connection ~ 1950 3300
Wire Wire Line
	1950 3300 1950 3250
Wire Wire Line
	1950 3850 1950 3800
Connection ~ 1950 3800
Wire Wire Line
	3250 3200 3650 3200
Connection ~ 3650 3200
Wire Wire Line
	3650 3200 4000 3200
Wire Wire Line
	3100 3300 3250 3300
Wire Wire Line
	3250 3300 3250 3200
Wire Wire Line
	3100 3400 3500 3400
Wire Wire Line
	3500 3400 3500 3500
Wire Wire Line
	3500 3500 3650 3500
Connection ~ 3650 3500
Wire Wire Line
	3250 3800 3650 3800
Connection ~ 3250 3800
Wire Wire Line
	4000 3350 4000 3200
Connection ~ 4000 3200
Wire Wire Line
	4000 3200 4200 3200
Text HLabel 4200 3200 2    50   Input ~ 0
12V_EXCITER
Wire Notes Line
	4850 2750 4850 4150
Wire Notes Line
	1700 4150 1700 2750
Text HLabel 1850 1700 0    50   Input ~ 0
POWER_28V+
Text HLabel 1850 2000 0    50   Input ~ 0
POWER_28V-
Wire Wire Line
	1850 2000 2300 2000
Connection ~ 2300 2000
Wire Wire Line
	1850 1700 1900 1700
Wire Notes Line
	6500 2300 6500 1200
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5E4053B5
P 4050 1700
F 0 "FB1" V 3900 1700 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 3904 1700 50  0001 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3980 1700 50  0001 C CNN
F 3 "~" H 4050 1700 50  0001 C CNN
	1    4050 1700
	0    1    1    0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 5E405FE4
P 4050 2000
F 0 "FB2" V 4200 2000 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 4196 2000 50  0001 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3980 2000 50  0001 C CNN
F 3 "~" H 4050 2000 50  0001 C CNN
	1    4050 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 1700 4400 1700
Wire Wire Line
	4150 2000 4400 2000
Wire Wire Line
	2650 1900 2650 2000
Wire Wire Line
	3650 2000 2650 2000
Connection ~ 3650 2000
Wire Wire Line
	2300 1700 2650 1700
Wire Wire Line
	2300 2000 2650 2000
Connection ~ 2650 2000
Wire Notes Line
	1700 2750 4850 2750
Wire Notes Line
	4850 4150 1700 4150
Wire Notes Line
	7600 2300 10400 2300
Wire Notes Line
	7600 1150 10400 1150
Wire Notes Line
	1700 5700 1700 4550
Text Notes 2300 4700 0    55   ~ 11
15VDC -> 5VDC Resolver Analogue
Wire Wire Line
	8550 5500 9050 5500
Connection ~ 8550 5500
Wire Wire Line
	7950 5500 8550 5500
Wire Notes Line
	7600 5800 7600 4650
Wire Notes Line
	10050 5800 7600 5800
Wire Notes Line
	10050 4650 10050 5800
Wire Notes Line
	7600 4650 10050 4650
Connection ~ 9050 5200
Wire Wire Line
	9350 5200 9050 5200
Text HLabel 9350 5200 2    50   Input ~ 0
3.3V_MCU
Wire Wire Line
	8850 5200 9050 5200
Wire Wire Line
	7950 5200 8250 5200
Connection ~ 7950 5200
Wire Wire Line
	7850 5200 7950 5200
Connection ~ 7950 5500
Wire Wire Line
	7950 5500 7850 5500
$Comp
L power:GND #PWR?
U 1 1 5E399A43
P 7850 5500
AR Path="/5E399A43" Ref="#PWR?"  Part="1" 
AR Path="/5E2C28ED/5E399A43" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 7850 5250 50  0001 C CNN
F 1 "GND" H 7855 5327 50  0000 C CNN
F 2 "" H 7850 5500 50  0001 C CNN
F 3 "" H 7850 5500 50  0001 C CNN
	1    7850 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5E399A39
P 7850 5200
AR Path="/5E399A39" Ref="#PWR?"  Part="1" 
AR Path="/5E2C28ED/5E399A39" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 7850 5050 50  0001 C CNN
F 1 "+15V" H 7865 5373 50  0000 C CNN
F 2 "" H 7850 5200 50  0001 C CNN
F 3 "" H 7850 5200 50  0001 C CNN
	1    7850 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E399A2F
P 9050 5350
AR Path="/5E399A2F" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E399A2F" Ref="C34"  Part="1" 
F 0 "C34" H 9165 5396 50  0000 L CNN
F 1 "1u" H 9165 5305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9088 5200 50  0001 C CNN
F 3 "~" H 9050 5350 50  0001 C CNN
	1    9050 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E399A25
P 7950 5350
AR Path="/5E399A25" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E399A25" Ref="C31"  Part="1" 
F 0 "C31" H 8065 5396 50  0000 L CNN
F 1 "1u" H 8065 5305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7988 5200 50  0001 C CNN
F 3 "~" H 7950 5350 50  0001 C CNN
	1    7950 5350
	1    0    0    -1  
$EndComp
Text Notes 8200 4800 0    55   ~ 11
15VDC -> 3.3VDC Microcontroller
Wire Notes Line
	7600 4050 7600 2900
Wire Notes Line
	10050 4050 7600 4050
Wire Notes Line
	10050 2900 10050 4050
Wire Notes Line
	7600 2900 10050 2900
Connection ~ 9050 3450
Wire Wire Line
	9350 3450 9050 3450
Text HLabel 9350 3450 2    50   Input ~ 0
5V_CAN_TXRX
Wire Wire Line
	8550 3750 9050 3750
Wire Wire Line
	8850 3450 9050 3450
Wire Wire Line
	7950 3450 8250 3450
Connection ~ 7950 3450
Wire Wire Line
	7850 3450 7950 3450
Connection ~ 7950 3750
Wire Wire Line
	7950 3750 7850 3750
Connection ~ 8550 3750
Wire Wire Line
	7950 3750 8550 3750
$Comp
L power:GND #PWR?
U 1 1 5E38FD8B
P 7850 3750
AR Path="/5E38FD8B" Ref="#PWR?"  Part="1" 
AR Path="/5E2C28ED/5E38FD8B" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 7850 3500 50  0001 C CNN
F 1 "GND" H 7855 3577 50  0000 C CNN
F 2 "" H 7850 3750 50  0001 C CNN
F 3 "" H 7850 3750 50  0001 C CNN
	1    7850 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5E38FD81
P 7850 3450
AR Path="/5E38FD81" Ref="#PWR?"  Part="1" 
AR Path="/5E2C28ED/5E38FD81" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 7850 3300 50  0001 C CNN
F 1 "+15V" H 7865 3623 50  0000 C CNN
F 2 "" H 7850 3450 50  0001 C CNN
F 3 "" H 7850 3450 50  0001 C CNN
	1    7850 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E38FD77
P 9050 3600
AR Path="/5E38FD77" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E38FD77" Ref="C33"  Part="1" 
F 0 "C33" H 9165 3646 50  0000 L CNN
F 1 "1u" H 9165 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9088 3450 50  0001 C CNN
F 3 "~" H 9050 3600 50  0001 C CNN
	1    9050 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E38FD6D
P 7950 3600
AR Path="/5E38FD6D" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E38FD6D" Ref="C30"  Part="1" 
F 0 "C30" H 8065 3646 50  0000 L CNN
F 1 "1u" H 8065 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7988 3450 50  0001 C CNN
F 3 "~" H 7950 3600 50  0001 C CNN
	1    7950 3600
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MCP1703A-5002_SOT223 U?
U 1 1 5E38FD63
P 8550 3450
AR Path="/5E38FD63" Ref="U?"  Part="1" 
AR Path="/5E2C28ED/5E38FD63" Ref="U4"  Part="1" 
F 0 "U4" H 8550 3692 50  0000 C CNN
F 1 "MCP1703A-5002_SOT223" H 8550 3601 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 8550 3650 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 8550 3400 50  0001 C CNN
	1    8550 3450
	1    0    0    -1  
$EndComp
Text Notes 8200 3050 0    55   ~ 11
15VDC -> 5VDC CAN Transceiver
Wire Notes Line
	7600 2300 7600 1150
Wire Notes Line
	10400 1150 10400 2300
Connection ~ 9050 1700
Wire Wire Line
	9350 1700 9050 1700
Text HLabel 9350 1700 2    50   Input ~ 0
5V_RESOLVER_DIGITAL
Wire Wire Line
	8550 2000 9050 2000
Wire Wire Line
	8850 1700 9050 1700
Wire Wire Line
	7950 1700 8250 1700
Connection ~ 7950 1700
Wire Wire Line
	7850 1700 7950 1700
Connection ~ 7950 2000
Wire Wire Line
	7950 2000 7850 2000
Connection ~ 8550 2000
Wire Wire Line
	7950 2000 8550 2000
$Comp
L power:GND #PWR?
U 1 1 5E36568F
P 7850 2000
AR Path="/5E36568F" Ref="#PWR?"  Part="1" 
AR Path="/5E2C28ED/5E36568F" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 7850 1750 50  0001 C CNN
F 1 "GND" H 7855 1827 50  0000 C CNN
F 2 "" H 7850 2000 50  0001 C CNN
F 3 "" H 7850 2000 50  0001 C CNN
	1    7850 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR?
U 1 1 5E359A10
P 7850 1700
AR Path="/5E359A10" Ref="#PWR?"  Part="1" 
AR Path="/5E2C28ED/5E359A10" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 7850 1550 50  0001 C CNN
F 1 "+15V" H 7865 1873 50  0000 C CNN
F 2 "" H 7850 1700 50  0001 C CNN
F 3 "" H 7850 1700 50  0001 C CNN
	1    7850 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E2FBD37
P 9050 1850
AR Path="/5E2FBD37" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E2FBD37" Ref="C32"  Part="1" 
F 0 "C32" H 9165 1896 50  0000 L CNN
F 1 "1u" H 9165 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9088 1700 50  0001 C CNN
F 3 "~" H 9050 1850 50  0001 C CNN
	1    9050 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E2FBD31
P 7950 1850
AR Path="/5E2FBD31" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E2FBD31" Ref="C29"  Part="1" 
F 0 "C29" H 8065 1896 50  0000 L CNN
F 1 "1u" H 8065 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7988 1700 50  0001 C CNN
F 3 "~" H 7950 1850 50  0001 C CNN
	1    7950 1850
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MCP1703A-5002_SOT223 U?
U 1 1 5E2FBD2B
P 8550 1700
AR Path="/5E2FBD2B" Ref="U?"  Part="1" 
AR Path="/5E2C28ED/5E2FBD2B" Ref="U3"  Part="1" 
F 0 "U3" H 8550 1942 50  0000 C CNN
F 1 "MCP1703A-5002_SOT223" H 8550 1851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 8550 1900 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 8550 1650 50  0001 C CNN
	1    8550 1700
	1    0    0    -1  
$EndComp
Text Notes 8200 1300 0    55   ~ 11
15VDC -> 5VDC Resolver Digital
$Comp
L Regulator_Linear:MCP1703A-3302_SOT223 U?
U 1 1 5E2DE86E
P 8550 5200
AR Path="/5E2DE86E" Ref="U?"  Part="1" 
AR Path="/5E2C28ED/5E2DE86E" Ref="U5"  Part="1" 
F 0 "U5" H 8550 5442 50  0000 C CNN
F 1 "MCP1703A-3302_SOT223" H 8550 5351 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 8550 5400 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 8550 5150 50  0001 C CNN
	1    8550 5200
	1    0    0    -1  
$EndComp
Wire Notes Line
	1700 4550 4500 4550
Wire Notes Line
	1700 5700 4500 5700
Wire Wire Line
	2050 5400 1950 5400
Wire Wire Line
	1950 5100 2050 5100
$Comp
L Device:C C?
U 1 1 5E53BC07
P 2050 5250
AR Path="/5E53BC07" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E53BC07" Ref="C21"  Part="1" 
F 0 "C21" H 2165 5296 50  0000 L CNN
F 1 "1u" H 2165 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2088 5100 50  0001 C CNN
F 3 "~" H 2050 5250 50  0001 C CNN
	1    2050 5250
	1    0    0    -1  
$EndComp
Connection ~ 2050 5100
Wire Wire Line
	2050 5100 2350 5100
Connection ~ 2050 5400
Connection ~ 3150 5100
Wire Wire Line
	3450 5100 3150 5100
Text HLabel 3450 5100 2    50   Input ~ 0
5V_RESOLVER_ANALOGUE
Wire Wire Line
	2650 5400 3150 5400
Wire Wire Line
	2950 5100 3150 5100
Connection ~ 2650 5400
Wire Wire Line
	2050 5400 2650 5400
$Comp
L Device:C C?
U 1 1 5E53BC11
P 3150 5250
AR Path="/5E53BC11" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E53BC11" Ref="C23"  Part="1" 
F 0 "C23" H 3265 5296 50  0000 L CNN
F 1 "1u" H 3265 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3188 5100 50  0001 C CNN
F 3 "~" H 3150 5250 50  0001 C CNN
	1    3150 5250
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MCP1703A-5002_SOT223 U?
U 1 1 5E53BBFD
P 2650 5100
AR Path="/5E53BBFD" Ref="U?"  Part="1" 
AR Path="/5E2C28ED/5E53BBFD" Ref="U1"  Part="1" 
F 0 "U1" H 2650 5342 50  0000 C CNN
F 1 "MCP1703A-5002_SOT223" H 2650 5251 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2650 5300 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 2650 5050 50  0001 C CNN
	1    2650 5100
	1    0    0    -1  
$EndComp
Wire Notes Line
	4500 4550 4500 5700
$Comp
L power:GNDA #PWR0120
U 1 1 5E20A14B
P 4400 2050
F 0 "#PWR0120" H 4400 1800 50  0001 C CNN
F 1 "GNDA" H 4405 1877 50  0000 C CNN
F 2 "" H 4400 2050 50  0001 C CNN
F 3 "" H 4400 2050 50  0001 C CNN
	1    4400 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB4
U 1 1 5E212ABF
P 4800 2000
F 0 "FB4" V 4950 2000 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 4946 2000 50  0001 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4730 2000 50  0001 C CNN
F 3 "~" H 4800 2000 50  0001 C CNN
	1    4800 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E215C45
P 5050 1850
AR Path="/5E215C45" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E215C45" Ref="C28"  Part="1" 
F 0 "C28" H 5165 1896 50  0000 L CNN
F 1 "10u" H 5165 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5088 1700 50  0001 C CNN
F 3 "~" H 5050 1850 50  0001 C CNN
	1    5050 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2000 4900 2000
Wire Wire Line
	4700 2000 4400 2000
Connection ~ 5050 2000
$Comp
L power:+15V #PWR0121
U 1 1 5E21C8C2
P 5050 1650
F 0 "#PWR0121" H 5050 1500 50  0001 C CNN
F 1 "+15V" H 5065 1823 50  0000 C CNN
F 2 "" H 5050 1650 50  0001 C CNN
F 3 "" H 5050 1650 50  0001 C CNN
	1    5050 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2050 5050 2000
Wire Wire Line
	5050 1700 5050 1650
$Comp
L Device:Ferrite_Bead_Small FB3
U 1 1 5E226AD8
P 4800 1700
F 0 "FB3" V 4950 1700 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 4946 1700 50  0001 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4730 1700 50  0001 C CNN
F 3 "~" H 4800 1700 50  0001 C CNN
	1    4800 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 1700 5050 1700
Connection ~ 5050 1700
Wire Wire Line
	4700 1700 4400 1700
$Comp
L agg-kicad:AVCC #PWR0122
U 1 1 5E22B61B
P 4400 1650
F 0 "#PWR0122" H 4400 1760 50  0001 L CNN
F 1 "AVCC" H 4400 1773 50  0000 C CNN
F 2 "" H 4400 1650 50  0001 C CNN
F 3 "" H 4400 1650 50  0001 C CNN
	1    4400 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0123
U 1 1 5E241999
P 1950 3850
F 0 "#PWR0123" H 1950 3600 50  0001 C CNN
F 1 "GNDA" H 1955 3677 50  0000 C CNN
F 2 "" H 1950 3850 50  0001 C CNN
F 3 "" H 1950 3850 50  0001 C CNN
	1    1950 3850
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:AVCC #PWR0124
U 1 1 5E241E1A
P 1950 3250
F 0 "#PWR0124" H 1950 3360 50  0001 L CNN
F 1 "AVCC" H 1950 3373 50  0000 C CNN
F 2 "" H 1950 3250 50  0001 C CNN
F 3 "" H 1950 3250 50  0001 C CNN
	1    1950 3250
	1    0    0    -1  
$EndComp
$Comp
L agg-kicad:AVCC #PWR0125
U 1 1 5E24A245
P 1950 5050
F 0 "#PWR0125" H 1950 5160 50  0001 L CNN
F 1 "AVCC" H 1950 5173 50  0000 C CNN
F 2 "" H 1950 5050 50  0001 C CNN
F 3 "" H 1950 5050 50  0001 C CNN
	1    1950 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0126
U 1 1 5E24A7D3
P 1950 5450
F 0 "#PWR0126" H 1950 5200 50  0001 C CNN
F 1 "GNDA" H 1955 5277 50  0000 C CNN
F 2 "" H 1950 5450 50  0001 C CNN
F 3 "" H 1950 5450 50  0001 C CNN
	1    1950 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5450 1950 5400
Wire Wire Line
	1950 5100 1950 5050
$Comp
L Device:LED D2
U 1 1 5E5B0771
P 5900 1850
F 0 "D2" V 5939 1733 50  0000 R CNN
F 1 "LED" V 5848 1733 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5900 1850 50  0001 C CNN
F 3 "~" H 5900 1850 50  0001 C CNN
	1    5900 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R20
U 1 1 5E5B1516
P 5650 2000
F 0 "R20" V 5443 2000 50  0000 C CNN
F 1 "1K2" V 5534 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5580 2000 50  0001 C CNN
F 3 "~" H 5650 2000 50  0001 C CNN
	1    5650 2000
	0    1    1    0   
$EndComp
Wire Notes Line
	1200 2300 6500 2300
Wire Notes Line
	1200 1200 6500 1200
Connection ~ 3650 3800
Wire Wire Line
	4000 3800 3650 3800
Wire Wire Line
	4000 3650 4000 3800
Wire Wire Line
	5900 1700 5050 1700
Wire Wire Line
	5800 2000 5900 2000
Wire Wire Line
	5500 2000 5050 2000
$EndSCHEMATC
