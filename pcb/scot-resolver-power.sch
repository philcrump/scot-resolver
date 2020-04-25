EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
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
L Device:C C?
U 1 1 5E2DAFCD
P 2150 1850
AR Path="/5E2DAFCD" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E2DAFCD" Ref="C22"  Part="1" 
F 0 "C22" H 2265 1896 50  0000 L CNN
F 1 "4u7/50V" H 2265 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2188 1700 50  0001 C CNN
F 3 "~" H 2150 1850 50  0001 C CNN
	1    2150 1850
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LT1762 U?
U 1 1 5E2DAFD3
P 5900 5500
AR Path="/5E2DAFD3" Ref="U?"  Part="1" 
AR Path="/5E2C28ED/5E2DAFD3" Ref="U2"  Part="1" 
F 0 "U2" H 5900 5967 50  0000 C CNN
F 1 "LT1762" H 5900 5876 50  0000 C CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 5900 5150 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/LT1762.pdf" H 5900 4950 50  0001 C CNN
	1    5900 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E2DAFD9
P 3450 1850
AR Path="/5E2DAFD9" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E2DAFD9" Ref="C25"  Part="1" 
F 0 "C25" H 3565 1896 50  0000 L CNN
F 1 "4u7/6.5V" H 3565 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3488 1700 50  0001 C CNN
F 3 "~" H 3450 1850 50  0001 C CNN
	1    3450 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1700 3450 1700
Connection ~ 3450 1700
Wire Wire Line
	3950 2000 3450 2000
$Comp
L Device:C C?
U 1 1 5E2DB006
P 4400 1850
AR Path="/5E2DB006" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E2DB006" Ref="C27"  Part="1" 
F 0 "C27" H 4515 1896 50  0000 L CNN
F 1 "4u7/6.5V" H 4515 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 4438 1700 50  0001 C CNN
F 3 "~" H 4400 1850 50  0001 C CNN
	1    4400 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E2DB019
P 6950 5750
AR Path="/5E2DB019" Ref="R?"  Part="1" 
AR Path="/5E2C28ED/5E2DB019" Ref="R19"  Part="1" 
F 0 "R19" H 7020 5796 50  0000 L CNN
F 1 "5K6" H 7020 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6880 5750 50  0001 C CNN
F 3 "~" H 6950 5750 50  0001 C CNN
	1    6950 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E2DB01F
P 6950 5450
AR Path="/5E2DB01F" Ref="R?"  Part="1" 
AR Path="/5E2C28ED/5E2DB01F" Ref="R18"  Part="1" 
F 0 "R18" H 7020 5496 50  0000 L CNN
F 1 "68K" H 7020 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6880 5450 50  0001 C CNN
F 3 "~" H 6950 5450 50  0001 C CNN
	1    6950 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E2DB025
P 6450 5750
AR Path="/5E2DB025" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E2DB025" Ref="C24"  Part="1" 
F 0 "C24" H 6565 5796 50  0000 L CNN
F 1 "10n/50V" H 6565 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6488 5600 50  0001 C CNN
F 3 "~" H 6450 5750 50  0001 C CNN
	1    6450 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E2DB039
P 7300 5600
AR Path="/5E2DB039" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E2DB039" Ref="C26"  Part="1" 
F 0 "C26" H 7415 5646 50  0000 L CNN
F 1 "4u7/50V" H 7415 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 7338 5450 50  0001 C CNN
F 3 "~" H 7300 5600 50  0001 C CNN
	1    7300 5600
	1    0    0    -1  
$EndComp
Text Notes 3450 1700 0    50   ~ 0
15V
Connection ~ 4400 1700
Connection ~ 4400 2000
Wire Notes Line
	1200 1200 1200 2300
Text Notes 2350 1350 0    55   ~ 11
28VDC -> 6.5VDC Power Input
Text Notes 2500 2200 0    50   ~ 0
TSR1-2465, 400-600KHz SW\n9-32V Input
Text Notes 4700 4900 0    55   ~ 11
28VDC -> 16VDC Exciter
$Comp
L Device:C C?
U 1 1 5E3070F3
P 5200 5600
AR Path="/5E3070F3" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E3070F3" Ref="C20"  Part="1" 
F 0 "C20" H 5315 5646 50  0000 L CNN
F 1 "1u" H 5315 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5238 5450 50  0001 C CNN
F 3 "~" H 5200 5600 50  0001 C CNN
	1    5200 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5900 5200 5750
Wire Wire Line
	5200 5450 5200 5300
Wire Wire Line
	5200 5300 5500 5300
Connection ~ 6950 5300
Wire Wire Line
	6950 5300 7300 5300
Wire Wire Line
	6300 5400 6750 5400
Wire Wire Line
	6750 5400 6750 5600
Wire Wire Line
	6750 5600 6950 5600
Wire Wire Line
	7300 5450 7300 5300
Connection ~ 7300 5300
Wire Wire Line
	7300 5300 7450 5300
Text HLabel 7450 5300 2    50   Input ~ 0
EXCITER_16V+
Wire Notes Line
	8150 4750 8150 6150
Wire Notes Line
	1750 6150 1750 4750
Text HLabel 2000 1700 0    50   Input ~ 0
POWER_28V+
Text HLabel 2000 2000 0    50   Input ~ 0
POWER_28V-
Wire Wire Line
	2000 2000 2150 2000
Connection ~ 2150 2000
Wire Notes Line
	6500 2300 6500 1200
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 5E4053B5
P 4050 1700
F 0 "FB1" V 3800 1700 50  0000 C CNN
F 1 "600R@100M/1A" V 3904 1700 50  0000 C CNN
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
F 1 "600R@100M/1A" V 4196 2000 50  0001 C CNN
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
	3450 2000 2650 2000
Connection ~ 3450 2000
Wire Wire Line
	2150 2000 2650 2000
Connection ~ 2650 2000
Wire Notes Line
	1750 4750 8150 4750
Wire Notes Line
	8150 6150 1750 6150
Wire Notes Line
	7300 3950 10650 3950
Wire Notes Line
	7300 2800 10650 2800
Wire Notes Line
	7300 2350 7300 1200
Text Notes 8450 1350 0    55   ~ 11
6.5VDC -> 5VDC Resolver Analog
Wire Wire Line
	5650 3650 6150 3650
Connection ~ 5650 3650
Wire Wire Line
	5000 3650 5650 3650
Wire Notes Line
	4150 3950 4150 2800
Wire Notes Line
	7000 3950 4150 3950
Wire Notes Line
	7000 2800 7000 3950
Wire Notes Line
	4150 2800 7000 2800
Connection ~ 6150 3350
Wire Wire Line
	6450 3350 6150 3350
Text HLabel 6450 3350 2    50   Input ~ 0
3.3V_MCU
Wire Wire Line
	5950 3350 6150 3350
Wire Wire Line
	5000 3350 5350 3350
Connection ~ 5000 3350
Connection ~ 5000 3650
$Comp
L Device:C C?
U 1 1 5E399A2F
P 6150 3500
AR Path="/5E399A2F" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E399A2F" Ref="C34"  Part="1" 
F 0 "C34" H 6265 3546 50  0000 L CNN
F 1 "1u/3.3V" H 6265 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6188 3350 50  0001 C CNN
F 3 "~" H 6150 3500 50  0001 C CNN
	1    6150 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E399A25
P 5000 3500
AR Path="/5E399A25" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E399A25" Ref="C31"  Part="1" 
F 0 "C31" H 5115 3546 50  0000 L CNN
F 1 "1u/6.5V" H 5115 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5038 3350 50  0001 C CNN
F 3 "~" H 5000 3500 50  0001 C CNN
	1    5000 3500
	1    0    0    -1  
$EndComp
Text Notes 5000 2950 0    55   ~ 11
6.5VDC -> 3.3VDC Microcontroller
Wire Notes Line
	900  3950 900  2800
Wire Notes Line
	3850 3950 900  3950
Wire Notes Line
	3850 2800 3850 3950
Wire Notes Line
	900  2800 3850 2800
Connection ~ 2850 3350
Wire Wire Line
	3150 3350 2850 3350
Text HLabel 3150 3350 2    50   Input ~ 0
5V_CAN_TXRX
Wire Wire Line
	2350 3650 2850 3650
Wire Wire Line
	2650 3350 2850 3350
Wire Wire Line
	1700 3350 2050 3350
Connection ~ 1700 3350
Connection ~ 1700 3650
Connection ~ 2350 3650
Wire Wire Line
	1700 3650 2350 3650
$Comp
L Device:C C?
U 1 1 5E38FD77
P 2850 3500
AR Path="/5E38FD77" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E38FD77" Ref="C33"  Part="1" 
F 0 "C33" H 2965 3546 50  0000 L CNN
F 1 "1u/5V" H 2965 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2888 3350 50  0001 C CNN
F 3 "~" H 2850 3500 50  0001 C CNN
	1    2850 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E38FD6D
P 1700 3500
AR Path="/5E38FD6D" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E38FD6D" Ref="C30"  Part="1" 
F 0 "C30" H 1815 3546 50  0000 L CNN
F 1 "1u/6.5V" H 1815 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1738 3350 50  0001 C CNN
F 3 "~" H 1700 3500 50  0001 C CNN
	1    1700 3500
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MCP1703A-5002_SOT223 U?
U 1 1 5E38FD63
P 2350 3350
AR Path="/5E38FD63" Ref="U?"  Part="1" 
AR Path="/5E2C28ED/5E38FD63" Ref="U4"  Part="1" 
F 0 "U4" H 2350 3592 50  0000 C CNN
F 1 "MCP1703A-5002_SOT223" H 2350 3501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 2350 3550 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 2350 3300 50  0001 C CNN
	1    2350 3350
	1    0    0    -1  
$EndComp
Text Notes 1700 2950 0    55   ~ 11
6.5VDC -> 5VDC CAN Transceiver
Wire Notes Line
	7300 3950 7300 2800
Wire Notes Line
	10650 2800 10650 3950
Connection ~ 9200 3350
Wire Wire Line
	9550 3350 9200 3350
Text HLabel 9550 3350 2    50   Input ~ 0
5V_RESOLVER_DIGITAL
Wire Wire Line
	8800 3650 9200 3650
Wire Wire Line
	9100 3350 9200 3350
Wire Wire Line
	8100 3350 8500 3350
Connection ~ 8100 3350
Connection ~ 8100 3650
Connection ~ 8800 3650
Wire Wire Line
	8100 3650 8800 3650
$Comp
L Device:C C?
U 1 1 5E2FBD37
P 9200 3500
AR Path="/5E2FBD37" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E2FBD37" Ref="C32"  Part="1" 
F 0 "C32" H 9315 3546 50  0000 L CNN
F 1 "1u/5V" H 9315 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9238 3350 50  0001 C CNN
F 3 "~" H 9200 3500 50  0001 C CNN
	1    9200 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E2FBD31
P 8100 3500
AR Path="/5E2FBD31" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E2FBD31" Ref="C29"  Part="1" 
F 0 "C29" H 8215 3546 50  0000 L CNN
F 1 "1u/6.5V" H 8215 3455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8138 3350 50  0001 C CNN
F 3 "~" H 8100 3500 50  0001 C CNN
	1    8100 3500
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MCP1703A-5002_SOT223 U?
U 1 1 5E2FBD2B
P 8800 3350
AR Path="/5E2FBD2B" Ref="U?"  Part="1" 
AR Path="/5E2C28ED/5E2FBD2B" Ref="U3"  Part="1" 
F 0 "U3" H 8800 3592 50  0000 C CNN
F 1 "MCP1703A-5002_SOT223" H 8800 3501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 8800 3550 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 8800 3300 50  0001 C CNN
	1    8800 3350
	1    0    0    -1  
$EndComp
Text Notes 8450 2950 0    55   ~ 11
6.5VDC -> 5VDC Resolver Digital
$Comp
L Regulator_Linear:MCP1703A-3302_SOT223 U?
U 1 1 5E2DE86E
P 5650 3350
AR Path="/5E2DE86E" Ref="U?"  Part="1" 
AR Path="/5E2C28ED/5E2DE86E" Ref="U5"  Part="1" 
F 0 "U5" H 5650 3592 50  0000 C CNN
F 1 "MCP1703A-3302_SOT223" H 5650 3501 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5650 3550 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 5650 3300 50  0001 C CNN
	1    5650 3350
	1    0    0    -1  
$EndComp
Wire Notes Line
	7300 1200 10650 1200
Wire Notes Line
	7300 2350 10650 2350
$Comp
L Device:C C?
U 1 1 5E53BC07
P 8150 1900
AR Path="/5E53BC07" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E53BC07" Ref="C21"  Part="1" 
F 0 "C21" H 8265 1946 50  0000 L CNN
F 1 "1u/6.5V" H 8265 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8188 1750 50  0001 C CNN
F 3 "~" H 8150 1900 50  0001 C CNN
	1    8150 1900
	1    0    0    -1  
$EndComp
Connection ~ 8150 1750
Wire Wire Line
	8150 1750 8500 1750
Connection ~ 8150 2050
Connection ~ 9200 1750
Wire Wire Line
	9550 1750 9200 1750
Text HLabel 9550 1750 2    50   Input ~ 0
5V_RESOLVER_ANALOGUE
Wire Wire Line
	8800 2050 9200 2050
Wire Wire Line
	9100 1750 9200 1750
Connection ~ 8800 2050
Wire Wire Line
	8150 2050 8800 2050
$Comp
L Device:C C?
U 1 1 5E53BC11
P 9200 1900
AR Path="/5E53BC11" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E53BC11" Ref="C23"  Part="1" 
F 0 "C23" H 9315 1946 50  0000 L CNN
F 1 "1u/5V" H 9315 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9238 1750 50  0001 C CNN
F 3 "~" H 9200 1900 50  0001 C CNN
	1    9200 1900
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:MCP1703A-5002_SOT223 U?
U 1 1 5E53BBFD
P 8800 1750
AR Path="/5E53BBFD" Ref="U?"  Part="1" 
AR Path="/5E2C28ED/5E53BBFD" Ref="U1"  Part="1" 
F 0 "U1" H 8800 1992 50  0000 C CNN
F 1 "MCP1703A-5002_SOT223" H 8800 1901 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 8800 1950 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005122B.pdf" H 8800 1700 50  0001 C CNN
	1    8800 1750
	1    0    0    -1  
$EndComp
Wire Notes Line
	10650 1200 10650 2350
$Comp
L Device:Ferrite_Bead_Small FB4
U 1 1 5E212ABF
P 4950 2000
F 0 "FB4" V 5100 2000 50  0000 C CNN
F 1 "600R@100M/1A" V 5096 2000 50  0001 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4880 2000 50  0001 C CNN
F 3 "~" H 4950 2000 50  0001 C CNN
	1    4950 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5E215C45
P 5350 1850
AR Path="/5E215C45" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E215C45" Ref="C28"  Part="1" 
F 0 "C28" H 5465 1896 50  0000 L CNN
F 1 "4u7/6.5V" H 5465 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 5388 1700 50  0001 C CNN
F 3 "~" H 5350 1850 50  0001 C CNN
	1    5350 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2000 5050 2000
Wire Wire Line
	4850 2000 4400 2000
Connection ~ 5350 2000
$Comp
L Device:Ferrite_Bead_Small FB3
U 1 1 5E226AD8
P 4950 1700
F 0 "FB3" V 5200 1700 50  0000 C CNN
F 1 "600R@100M/1A" V 5096 1700 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4880 1700 50  0001 C CNN
F 3 "~" H 4950 1700 50  0001 C CNN
	1    4950 1700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5050 1700 5350 1700
Connection ~ 5350 1700
Wire Wire Line
	4850 1700 4400 1700
$Comp
L Device:LED D2
U 1 1 5E5B0771
P 6150 1850
F 0 "D2" V 6189 1733 50  0000 R CNN
F 1 "LED" V 6098 1733 50  0000 R CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6150 1850 50  0001 C CNN
F 3 "~" H 6150 1850 50  0001 C CNN
	1    6150 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R20
U 1 1 5E5B1516
P 5950 2000
F 0 "R20" V 5743 2000 50  0000 C CNN
F 1 "1K2" V 5834 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5880 2000 50  0001 C CNN
F 3 "~" H 5950 2000 50  0001 C CNN
	1    5950 2000
	0    1    1    0   
$EndComp
Wire Notes Line
	1200 2300 6500 2300
Wire Notes Line
	1200 1200 6500 1200
Wire Wire Line
	7300 5750 7300 5900
Wire Wire Line
	6150 1700 5350 1700
Wire Wire Line
	6100 2000 6150 2000
Wire Wire Line
	5800 2000 5350 2000
Wire Wire Line
	2150 1700 2650 1700
Wire Wire Line
	2000 1700 2150 1700
Connection ~ 2150 1700
$Comp
L Regulator_Linear:LM317_3PinPackage U?
U 1 1 5E9E6E0D
P 3750 5300
F 0 "U?" H 3750 5542 50  0000 C CNN
F 1 "LM317_3PinPackage" H 3750 5451 50  0000 C CNN
F 2 "" H 3750 5550 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lm317.pdf" H 3750 5300 50  0001 C CNN
	1    3750 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E9E84EF
P 4100 5450
F 0 "R?" H 4170 5496 50  0000 L CNN
F 1 "240R/1%" H 4170 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4030 5450 50  0001 C CNN
F 3 "~" H 4100 5450 50  0001 C CNN
	1    4100 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E9E8F66
P 4100 5750
F 0 "R?" H 4170 5796 50  0000 L CNN
F 1 "3K2/1%" H 4170 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4030 5750 50  0001 C CNN
F 3 "~" H 4100 5750 50  0001 C CNN
	1    4100 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E9EAF60
P 2600 5600
AR Path="/5E9EAF60" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E9EAF60" Ref="C?"  Part="1" 
F 0 "C?" H 2715 5646 50  0000 L CNN
F 1 "4u7/50V" H 2715 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 2638 5450 50  0001 C CNN
F 3 "~" H 2600 5600 50  0001 C CNN
	1    2600 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E9F21C4
P 4650 5600
AR Path="/5E9F21C4" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5E9F21C4" Ref="C?"  Part="1" 
F 0 "C?" H 4765 5646 50  0000 L CNN
F 1 "4u7/50V" H 4765 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4688 5450 50  0001 C CNN
F 3 "~" H 4650 5600 50  0001 C CNN
	1    4650 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5450 2600 5300
Wire Wire Line
	2600 5300 3200 5300
Wire Wire Line
	4050 5300 4100 5300
Wire Wire Line
	4100 5600 3750 5600
Connection ~ 4100 5600
Wire Wire Line
	4100 5900 4650 5900
Wire Wire Line
	4650 5900 4650 5750
Wire Wire Line
	4650 5450 4650 5300
Wire Wire Line
	4650 5300 4100 5300
Connection ~ 4100 5300
Wire Wire Line
	4100 5900 3200 5900
Wire Wire Line
	2600 5900 2600 5750
Connection ~ 4100 5900
Text Notes 2650 6350 0    50   ~ 0
LM317:\nVo = 1.25 * (1 + (3K2 / 240)) + (50uA * 3K2) =  18.08V
Text HLabel 7450 5900 2    50   Input ~ 0
0V_EXCITER
Wire Wire Line
	7450 5900 7300 5900
Connection ~ 7300 5900
Text Label 1050 3350 0    50   ~ 0
DIGITAL_6.5V+
Text Label 1050 3650 0    50   ~ 0
DIGITAL_6.5V-
Wire Wire Line
	1050 3350 1700 3350
Wire Wire Line
	1050 3650 1700 3650
Wire Wire Line
	4400 1700 4400 1400
Wire Wire Line
	4400 2000 4400 2200
Text Label 4950 1400 2    50   ~ 0
DIGITAL_6.5V+
Text Label 4950 2200 2    50   ~ 0
DIGITAL_6.5V-
Wire Wire Line
	5350 1700 5350 1400
Text Label 5900 1400 2    50   ~ 0
ANALOG_6.5V+
Text Label 5900 2200 2    50   ~ 0
ANALOG_6.5V-
Wire Wire Line
	5350 1400 5900 1400
Wire Wire Line
	5900 2200 5350 2200
Wire Wire Line
	5350 2200 5350 2000
Wire Wire Line
	4400 1400 4950 1400
Wire Wire Line
	4400 2200 4950 2200
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 5EAE90A0
P 4950 5300
F 0 "FB?" V 5200 5300 50  0000 C CNN
F 1 "600R@100M/1A" V 5096 5300 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4880 5300 50  0001 C CNN
F 3 "~" H 4950 5300 50  0001 C CNN
	1    4950 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB?
U 1 1 5EAEAA70
P 4950 5900
F 0 "FB?" V 5100 5900 50  0000 C CNN
F 1 "600R@100M/1A" V 5096 5900 50  0001 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4880 5900 50  0001 C CNN
F 3 "~" H 4950 5900 50  0001 C CNN
	1    4950 5900
	0    -1   -1   0   
$EndComp
Connection ~ 5500 5300
Connection ~ 6450 5900
Wire Wire Line
	5200 5900 5900 5900
Wire Wire Line
	6450 5900 6950 5900
Connection ~ 6950 5900
Wire Wire Line
	6950 5900 7300 5900
Connection ~ 6950 5600
Wire Wire Line
	6300 5300 6950 5300
Wire Wire Line
	6300 5600 6450 5600
Wire Wire Line
	5500 5300 5500 5600
Wire Wire Line
	5200 5300 5050 5300
Connection ~ 5200 5300
Wire Wire Line
	5050 5900 5200 5900
Connection ~ 5200 5900
Wire Wire Line
	4850 5900 4650 5900
Connection ~ 4650 5900
Wire Wire Line
	4850 5300 4650 5300
Connection ~ 4650 5300
Wire Wire Line
	5900 5800 5900 5900
Connection ~ 5900 5900
Wire Wire Line
	5900 5900 6450 5900
Text HLabel 2450 5300 0    50   Input ~ 0
POWER_28V+
Text HLabel 2450 5900 0    50   Input ~ 0
POWER_28V-
Wire Wire Line
	2600 5900 2450 5900
Connection ~ 2600 5900
Wire Wire Line
	2600 5300 2450 5300
Connection ~ 2600 5300
Text Label 4350 3650 0    50   ~ 0
DIGITAL_6.5V-
Text Label 4350 3350 0    50   ~ 0
DIGITAL_6.5V+
Wire Wire Line
	4350 3350 5000 3350
Wire Wire Line
	4350 3650 5000 3650
Text Label 7500 3650 0    50   ~ 0
DIGITAL_6.5V-
Text Label 7500 3350 0    50   ~ 0
DIGITAL_6.5V+
Wire Wire Line
	7500 3350 8100 3350
Wire Wire Line
	7500 3650 8100 3650
Text Label 7500 1750 0    50   ~ 0
ANALOG_6.5V+
Text Label 7500 2050 0    50   ~ 0
ANALOG_6.5V-
Wire Wire Line
	7500 2050 8150 2050
Wire Wire Line
	7500 1750 8150 1750
Text HLabel 9550 2050 2    50   Input ~ 0
0V_ANALOG
Wire Wire Line
	9550 2050 9200 2050
Connection ~ 9200 2050
Text HLabel 9550 3650 2    50   Input ~ 0
0V_DIGITAL
Text HLabel 6450 3650 2    50   Input ~ 0
0V_DIGITAL
Text HLabel 3150 3650 2    50   Input ~ 0
0V_DIGITAL
Wire Wire Line
	6450 3650 6150 3650
Connection ~ 6150 3650
Wire Wire Line
	2850 3650 3150 3650
Connection ~ 2850 3650
Connection ~ 9200 3650
Wire Wire Line
	9200 3650 9550 3650
$Comp
L Device:C C?
U 1 1 5EA792EE
P 3200 5600
AR Path="/5EA792EE" Ref="C?"  Part="1" 
AR Path="/5E2C28ED/5EA792EE" Ref="C?"  Part="1" 
F 0 "C?" H 3315 5646 50  0000 L CNN
F 1 "100n/50V" H 3315 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3238 5450 50  0001 C CNN
F 3 "~" H 3200 5600 50  0001 C CNN
	1    3200 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5750 3200 5900
Connection ~ 3200 5900
Wire Wire Line
	3200 5900 2600 5900
Wire Wire Line
	3200 5450 3200 5300
Connection ~ 3200 5300
Wire Wire Line
	3200 5300 3450 5300
Text Notes 5450 6350 0    50   ~ 0
LT1762:\nVo = 1.22 * (1 + (68K / 5K6)) + (30nA * 68K) = 16.04V
$EndSCHEMATC
