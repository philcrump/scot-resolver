EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 9
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
L agg-kicad:MCP2562 IC8
U 1 1 5E4915CC
P 5300 3600
F 0 "IC8" H 5300 3185 50  0000 C CNN
F 1 "MCP2562" H 5300 3276 50  0000 C CNN
F 2 "agg:DFN-8-EP-MICROCHIP" H 5000 3200 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005167C.pdf" H 5000 3100 50  0001 L CNN
F 4 "" H 5000 3000 50  0001 L CNN "Farnell"
F 5 "824-3135" H 5000 2900 50  0001 L CNN "RS"
	1    5300 3600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 5E4915D2
P 3800 3750
AR Path="/5E4915D2" Ref="R?"  Part="1" 
AR Path="/5E4877AC/5E4915D2" Ref="R36"  Part="1" 
F 0 "R36" V 3593 3750 50  0000 C CNN
F 1 "120R" V 3684 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3730 3750 50  0001 C CNN
F 3 "~" H 3800 3750 50  0001 C CNN
	1    3800 3750
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 5E4915E0
P 6200 4350
AR Path="/5E4915E0" Ref="C?"  Part="1" 
AR Path="/5E4877AC/5E4915E0" Ref="C53"  Part="1" 
F 0 "C53" H 6315 4396 50  0000 L CNN
F 1 "100n" H 6315 4305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6238 4200 50  0001 C CNN
F 3 "~" H 6200 4350 50  0001 C CNN
	1    6200 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E4915E6
P 6550 3850
AR Path="/5E4915E6" Ref="C?"  Part="1" 
AR Path="/5E4877AC/5E4915E6" Ref="C54"  Part="1" 
F 0 "C54" H 6665 3896 50  0000 L CNN
F 1 "100n" H 6665 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6588 3700 50  0001 C CNN
F 3 "~" H 6550 3850 50  0001 C CNN
	1    6550 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3500 5700 3600
Connection ~ 5700 3600
Wire Wire Line
	5700 3800 5750 3800
Wire Wire Line
	5700 3400 5800 3400
Wire Wire Line
	5800 3400 5800 3600
Connection ~ 5800 3600
Wire Wire Line
	5800 3600 5700 3600
Wire Wire Line
	6850 3050 4850 3050
Wire Wire Line
	4850 3050 4850 3500
Wire Wire Line
	4850 3500 4900 3500
Wire Wire Line
	6850 2900 4700 2900
Wire Wire Line
	4700 2900 4700 3600
Wire Wire Line
	4700 3600 4900 3600
Text HLabel 3300 3550 0    50   Input ~ 0
CAN_L
Text HLabel 3300 3950 0    50   Input ~ 0
CAN_H
Wire Wire Line
	3300 3550 3800 3550
Wire Wire Line
	3800 3550 3800 3600
Wire Wire Line
	3300 3950 3800 3950
Wire Wire Line
	3800 3950 3800 3900
Wire Wire Line
	4300 3700 4300 3550
Wire Wire Line
	4300 3550 3800 3550
Wire Wire Line
	4300 3700 4900 3700
Connection ~ 3800 3550
Wire Wire Line
	3800 3950 4300 3950
Wire Wire Line
	4300 3950 4300 3800
Wire Wire Line
	4300 3800 4900 3800
Connection ~ 3800 3950
Text Notes 4650 4100 2    50   ~ 0
Only fit 120R for bus termination.
Text HLabel 6850 3050 2    50   Input ~ 0
CAN_MCU_RXD
Text HLabel 6850 2900 2    50   Input ~ 0
CAN_MCU_TXD
Text HLabel 6850 4600 2    50   Input ~ 0
3.3V_MCU
Text HLabel 6850 4100 2    50   Input ~ 0
5V_CAN
Wire Wire Line
	6550 3700 6550 3600
Wire Wire Line
	5800 3600 6200 3600
Wire Wire Line
	6550 4100 6550 4000
Wire Wire Line
	6550 4100 6850 4100
Wire Wire Line
	6850 4600 6200 4600
Wire Wire Line
	6200 4600 6200 4500
Wire Wire Line
	6200 4200 6200 3600
Connection ~ 6200 3600
Wire Wire Line
	6200 3600 6550 3600
Wire Wire Line
	5950 3700 5950 4100
Wire Wire Line
	5950 4100 6550 4100
Wire Wire Line
	5700 3700 5950 3700
Connection ~ 6550 4100
Wire Wire Line
	5750 3800 5750 4600
Wire Wire Line
	5750 4600 6200 4600
Connection ~ 6200 4600
$Comp
L power:GND #PWR0136
U 1 1 5E4ACD17
P 6850 3550
F 0 "#PWR0136" H 6850 3300 50  0001 C CNN
F 1 "GND" H 6855 3377 50  0000 C CNN
F 2 "" H 6850 3550 50  0001 C CNN
F 3 "" H 6850 3550 50  0001 C CNN
	1    6850 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	6550 3600 6850 3600
Wire Wire Line
	6850 3600 6850 3550
Connection ~ 6550 3600
$EndSCHEMATC
