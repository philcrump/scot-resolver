EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
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
L agg-kicad:AD8397ARZ IC2
U 1 1 5E08BE2F
P 9000 3300
F 0 "IC2" H 9000 3925 50  0000 C CNN
F 1 "AD8397ARZ" H 9000 3834 50  0000 C CNN
F 2 "agg:SOIC-8" H 8700 2700 50  0001 L CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD8397.pdf" H 8700 2600 50  0001 L CNN
F 4 "584-AD8397ARZ" H 8700 2500 50  0001 L CNN "Mouser"
	1    9000 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E08D711
P 4250 4500
F 0 "R2" V 4043 4500 50  0000 C CNN
F 1 "20k" V 4134 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4180 4500 50  0001 C CNN
F 3 "~" H 4250 4500 50  0001 C CNN
	1    4250 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C4
U 1 1 5E08DC93
P 4600 3550
F 0 "C4" H 4715 3596 50  0000 L CNN
F 1 "1n" H 4715 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4638 3400 50  0001 C CNN
F 3 "~" H 4600 3550 50  0001 C CNN
	1    4600 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 5E0AFC33
P 6000 2600
F 0 "C6" H 6115 2646 50  0000 L CNN
F 1 "100p" H 6115 2555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6038 2450 50  0001 C CNN
F 3 "~" H 6000 2600 50  0001 C CNN
	1    6000 2600
	0    1    1    0   
$EndComp
Text HLabel 3700 3750 0    50   Input ~ 0
AD2S1210_VREF
$Comp
L Device:R R8
U 1 1 5E0B1EE5
P 7500 3850
F 0 "R8" V 7293 3850 50  0000 C CNN
F 1 "820R" V 7384 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7430 3850 50  0001 C CNN
F 3 "~" H 7500 3850 50  0001 C CNN
	1    7500 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5E0B2E5A
P 9050 2150
F 0 "R11" V 8843 2150 50  0000 C CNN
F 1 "910R" V 8934 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8980 2150 50  0001 C CNN
F 3 "~" H 9050 2150 50  0001 C CNN
	1    9050 2150
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C12
U 1 1 5E0B3AAD
P 9050 1950
F 0 "C12" H 9165 1996 50  0000 L CNN
F 1 "4n7" H 9165 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9088 1800 50  0001 C CNN
F 3 "~" H 9050 1950 50  0001 C CNN
	1    9050 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R9
U 1 1 5E0B406D
P 8650 2000
F 0 "R9" V 8443 2000 50  0000 C CNN
F 1 "620R" V 8534 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8580 2000 50  0001 C CNN
F 3 "~" H 8650 2000 50  0001 C CNN
	1    8650 2000
	1    0    0    -1  
$EndComp
Text HLabel 10050 2900 2    50   Input ~ 0
EXC-_OUTPUT
Text HLabel 10050 3100 2    50   Input ~ 0
EXC+_OUTPUT
$Comp
L Device:C C13
U 1 1 5E0BCC9C
P 9100 4450
F 0 "C13" H 9215 4496 50  0000 L CNN
F 1 "4n7" H 9215 4405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9138 4300 50  0001 C CNN
F 3 "~" H 9100 4450 50  0001 C CNN
	1    9100 4450
	0    1    1    0   
$EndComp
Wire Wire Line
	9200 1950 9200 2150
Wire Wire Line
	8900 1950 8900 2150
$Comp
L Device:R R12
U 1 1 5E0C414C
P 9100 4250
F 0 "R12" V 8893 4250 50  0000 C CNN
F 1 "910R" V 8984 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 9030 4250 50  0001 C CNN
F 3 "~" H 9100 4250 50  0001 C CNN
	1    9100 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 4450 9250 4250
Wire Wire Line
	8950 4450 8950 4250
$Comp
L Device:R R10
U 1 1 5E0D2F73
P 8700 4400
F 0 "R10" V 8493 4400 50  0000 C CNN
F 1 "620R" V 8584 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 8630 4400 50  0001 C CNN
F 3 "~" H 8700 4400 50  0001 C CNN
	1    8700 4400
	1    0    0    -1  
$EndComp
Connection ~ 8950 4250
Wire Wire Line
	8950 4250 8700 4250
Wire Wire Line
	8900 2150 8650 2150
Connection ~ 8900 2150
Wire Wire Line
	8650 2150 8450 2150
Wire Wire Line
	8450 2150 8450 3200
Wire Wire Line
	8450 3200 8600 3200
Connection ~ 8650 2150
Wire Wire Line
	8450 3500 8450 4250
Wire Wire Line
	8450 4250 8700 4250
Connection ~ 8700 4250
Wire Wire Line
	9200 2150 9500 2150
Wire Wire Line
	9500 2150 9500 2900
Wire Wire Line
	9500 2900 9400 2900
Connection ~ 9200 2150
Wire Wire Line
	9500 3100 9500 4250
Connection ~ 9250 4250
Wire Wire Line
	9500 2900 10050 2900
Connection ~ 9500 2900
Wire Wire Line
	10050 3100 9500 3100
Connection ~ 9500 3100
Wire Wire Line
	9400 3100 9500 3100
Wire Wire Line
	9250 4250 9500 4250
Wire Wire Line
	8450 3500 8600 3500
$Comp
L Device:C C10
U 1 1 5E0E4CE6
P 7750 3650
F 0 "C10" H 7865 3696 50  0000 L CNN
F 1 "4n7" H 7865 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7788 3500 50  0001 C CNN
F 3 "~" H 7750 3650 50  0001 C CNN
	1    7750 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 5E0E5294
P 7750 3250
F 0 "C9" H 7865 3296 50  0000 L CNN
F 1 "4n7" H 7865 3205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7788 3100 50  0001 C CNN
F 3 "~" H 7750 3250 50  0001 C CNN
	1    7750 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5E0E55AE
P 7500 3050
F 0 "R7" V 7293 3050 50  0000 C CNN
F 1 "820R" V 7384 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7430 3050 50  0001 C CNN
F 3 "~" H 7500 3050 50  0001 C CNN
	1    7500 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 3050 7750 3050
Wire Wire Line
	7750 3050 7750 3100
Wire Wire Line
	7750 3400 7750 3450
Wire Wire Line
	7550 3450 7750 3450
Connection ~ 7750 3450
Wire Wire Line
	7750 3450 7750 3500
Wire Wire Line
	7750 3800 7750 3850
Wire Wire Line
	7750 3850 7650 3850
Wire Wire Line
	8600 3300 8150 3300
Wire Wire Line
	8150 3300 8150 3050
Wire Wire Line
	8150 3050 7750 3050
Connection ~ 7750 3050
Wire Wire Line
	7750 3850 8150 3850
Wire Wire Line
	8150 3850 8150 3600
Wire Wire Line
	8150 3600 8600 3600
Connection ~ 7750 3850
Wire Wire Line
	7350 3050 6900 3050
Wire Wire Line
	6900 3050 6900 3350
Wire Wire Line
	6900 3350 6550 3350
Wire Wire Line
	6450 3550 6550 3550
Wire Wire Line
	6900 3550 6900 3850
Wire Wire Line
	6900 3850 7350 3850
Wire Wire Line
	6550 3350 6550 2600
Wire Wire Line
	6550 2600 6150 2600
Connection ~ 6550 3350
Wire Wire Line
	6550 3350 6450 3350
$Comp
L Device:C C7
U 1 1 5E10E170
P 6000 4700
F 0 "C7" H 6115 4746 50  0000 L CNN
F 1 "100p" H 6115 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6038 4550 50  0001 C CNN
F 3 "~" H 6000 4700 50  0001 C CNN
	1    6000 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 4700 6550 4700
Wire Wire Line
	6550 4700 6550 3550
Connection ~ 6550 3550
Wire Wire Line
	6550 3550 6900 3550
$Comp
L Device:R R4
U 1 1 5E114588
P 4950 4500
F 0 "R4" V 4743 4500 50  0000 C CNN
F 1 "6k2" V 4834 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4880 4500 50  0001 C CNN
F 3 "~" H 4950 4500 50  0001 C CNN
	1    4950 4500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C5
U 1 1 5E117F22
P 4600 4300
F 0 "C5" H 4715 4346 50  0000 L CNN
F 1 "1n" H 4715 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4638 4150 50  0001 C CNN
F 3 "~" H 4600 4300 50  0001 C CNN
	1    4600 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E11CD4C
P 4250 3350
F 0 "R1" V 4043 3350 50  0000 C CNN
F 1 "20k" V 4134 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4180 3350 50  0001 C CNN
F 3 "~" H 4250 3350 50  0001 C CNN
	1    4250 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5E12D430
P 6000 2100
F 0 "R5" V 5793 2100 50  0000 C CNN
F 1 "20k" V 5884 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5930 2100 50  0001 C CNN
F 3 "~" H 6000 2100 50  0001 C CNN
	1    6000 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5E12E24A
P 6000 5300
F 0 "R6" V 5793 5300 50  0000 C CNN
F 1 "20k" V 5884 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5930 5300 50  0001 C CNN
F 3 "~" H 6000 5300 50  0001 C CNN
	1    6000 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 5300 6550 5300
Wire Wire Line
	6550 5300 6550 4700
Connection ~ 6550 4700
Wire Wire Line
	6150 2100 6550 2100
Wire Wire Line
	6550 2100 6550 2600
Connection ~ 6550 2600
Wire Wire Line
	4600 2100 4600 3350
Wire Wire Line
	4600 3350 4800 3350
Wire Wire Line
	4600 3400 4600 3350
Connection ~ 4600 3350
Wire Wire Line
	4400 3350 4600 3350
Wire Wire Line
	4600 4450 4600 4500
Wire Wire Line
	4600 4500 4800 4500
Wire Wire Line
	4600 5300 4600 4500
Connection ~ 4600 4500
Wire Wire Line
	4400 4500 4600 4500
Wire Wire Line
	4600 5300 5850 5300
$Comp
L agg-kicad:AD8692ARMZ IC1
U 1 1 5E08D293
P 6050 3750
F 0 "IC1" H 6050 4375 50  0000 C CNN
F 1 "AD8692ARMZ" H 6050 4284 50  0000 C CNN
F 2 "agg:MSOP-8" H 5750 3150 50  0001 L CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/AD8691_8692_8694.pdf" H 5750 3050 50  0001 L CNN
F 4 "584-AD8692ARMZ-R7" H 5750 2950 50  0001 L CNN "Mouser"
	1    6050 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2100 5850 2100
Wire Wire Line
	5100 4500 5300 4500
Wire Wire Line
	5300 4500 5300 3950
Wire Wire Line
	5300 3950 5650 3950
Wire Wire Line
	5300 4500 5300 4700
Wire Wire Line
	5300 4700 5850 4700
Connection ~ 5300 4500
$Comp
L Device:R R3
U 1 1 5E0AF875
P 4950 3350
F 0 "R3" V 4743 3350 50  0000 C CNN
F 1 "6k2" V 4834 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4880 3350 50  0001 C CNN
F 3 "~" H 4950 3350 50  0001 C CNN
	1    4950 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3350 5300 3350
Wire Wire Line
	5300 3350 5300 3650
Wire Wire Line
	5300 3650 5650 3650
Wire Wire Line
	5300 3350 5300 2600
Connection ~ 5300 3350
Wire Wire Line
	5300 2600 5850 2600
Wire Wire Line
	5050 4050 5650 4050
Wire Wire Line
	5050 3750 5650 3750
Wire Wire Line
	3700 3750 3900 3750
Text HLabel 3700 3350 0    50   Input ~ 0
AD2S1210_EXC-
Text HLabel 3700 4500 0    50   Input ~ 0
AD2S1210_EXC+
Wire Wire Line
	4100 4500 3700 4500
Wire Wire Line
	3700 3350 4100 3350
Text Notes 7400 6000 2    98   ~ 0
3-Pole Butterworth Filter\nG = -1, Fc = approx. 40KHz
$Comp
L Device:C C11
U 1 1 5E1AE594
P 7850 2350
F 0 "C11" H 7965 2396 50  0000 L CNN
F 1 "100n" H 7965 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7888 2200 50  0001 C CNN
F 3 "~" H 7850 2350 50  0001 C CNN
	1    7850 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5E1AEB96
P 7400 2350
F 0 "C8" H 7515 2396 50  0000 L CNN
F 1 "10u" H 7515 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 7438 2200 50  0001 C CNN
F 3 "~" H 7400 2350 50  0001 C CNN
	1    7400 2350
	1    0    0    -1  
$EndComp
Text HLabel 7250 2200 0    50   Input ~ 0
EXC_12V
Wire Wire Line
	7400 2200 7850 2200
Wire Wire Line
	7250 2550 7250 2500
Wire Wire Line
	7250 2500 7400 2500
Connection ~ 7400 2500
Wire Wire Line
	7400 2500 7850 2500
Wire Wire Line
	7850 2500 8250 2500
Wire Wire Line
	8250 2500 8250 3000
Wire Wire Line
	8250 3000 8600 3000
Connection ~ 7850 2500
Wire Wire Line
	8600 2900 8300 2900
Wire Wire Line
	8300 2900 8300 2200
Wire Wire Line
	8300 2200 7850 2200
Connection ~ 7850 2200
Connection ~ 5050 3750
Wire Wire Line
	5050 3750 5050 4050
$Comp
L Device:C C3
U 1 1 5E1DAB26
P 3900 3900
F 0 "C3" H 4015 3946 50  0000 L CNN
F 1 "100n" H 4015 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3938 3750 50  0001 C CNN
F 3 "~" H 3900 3900 50  0001 C CNN
	1    3900 3900
	1    0    0    -1  
$EndComp
Connection ~ 3900 3750
Wire Wire Line
	3900 3750 5050 3750
Wire Wire Line
	4600 3700 4600 4050
Wire Wire Line
	4600 4050 4250 4050
Wire Wire Line
	4250 4050 4250 4100
Connection ~ 4600 4050
Wire Wire Line
	4600 4050 4600 4150
Wire Wire Line
	4250 4050 3900 4050
Connection ~ 4250 4050
$Comp
L Device:C C1
U 1 1 5E1EF1ED
P 3250 2500
F 0 "C1" H 3365 2546 50  0000 L CNN
F 1 "10u" H 3365 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3288 2350 50  0001 C CNN
F 3 "~" H 3250 2500 50  0001 C CNN
	1    3250 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5E1EF70E
P 3700 2500
F 0 "C2" H 3815 2546 50  0000 L CNN
F 1 "100n" H 3815 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3738 2350 50  0001 C CNN
F 3 "~" H 3700 2500 50  0001 C CNN
	1    3700 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2350 3250 2350
Connection ~ 3250 2350
Wire Wire Line
	3250 2350 3700 2350
Wire Wire Line
	3050 2700 3050 2650
Wire Wire Line
	3050 2650 3250 2650
Connection ~ 3250 2650
Wire Wire Line
	3250 2650 3700 2650
Wire Wire Line
	3700 2650 4100 2650
Wire Wire Line
	4100 2650 4100 2900
Wire Wire Line
	4100 2900 5450 2900
Wire Wire Line
	5450 2900 5450 3450
Wire Wire Line
	5450 3450 5650 3450
Connection ~ 3700 2650
Wire Wire Line
	5650 3350 5500 3350
Wire Wire Line
	5500 3350 5500 2850
Wire Wire Line
	5500 2850 4150 2850
Wire Wire Line
	4150 2850 4150 2350
Connection ~ 3700 2350
Wire Wire Line
	7400 2200 7250 2200
Connection ~ 7400 2200
Wire Wire Line
	4150 2350 3700 2350
Text HLabel 3050 2350 0    50   Input ~ 0
EXC_5V
$Comp
L power:GNDA #PWR0104
U 1 1 5E286735
P 3050 2700
F 0 "#PWR0104" H 3050 2450 50  0001 C CNN
F 1 "GNDA" H 3055 2527 50  0000 C CNN
F 2 "" H 3050 2700 50  0001 C CNN
F 3 "" H 3050 2700 50  0001 C CNN
	1    3050 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0105
U 1 1 5E288CE0
P 4250 4100
F 0 "#PWR0105" H 4250 3850 50  0001 C CNN
F 1 "GNDA" H 4255 3927 50  0000 C CNN
F 2 "" H 4250 4100 50  0001 C CNN
F 3 "" H 4250 4100 50  0001 C CNN
	1    4250 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0106
U 1 1 5E289B5A
P 7550 3450
F 0 "#PWR0106" H 7550 3200 50  0001 C CNN
F 1 "GNDA" V 7555 3323 50  0000 R CNN
F 2 "" H 7550 3450 50  0001 C CNN
F 3 "" H 7550 3450 50  0001 C CNN
	1    7550 3450
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR0107
U 1 1 5E28AC14
P 7250 2550
F 0 "#PWR0107" H 7250 2300 50  0001 C CNN
F 1 "GNDA" H 7255 2377 50  0000 C CNN
F 2 "" H 7250 2550 50  0001 C CNN
F 3 "" H 7250 2550 50  0001 C CNN
	1    7250 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0108
U 1 1 5E28B88D
P 8700 4550
F 0 "#PWR0108" H 8700 4300 50  0001 C CNN
F 1 "GNDA" H 8705 4377 50  0000 C CNN
F 2 "" H 8700 4550 50  0001 C CNN
F 3 "" H 8700 4550 50  0001 C CNN
	1    8700 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0109
U 1 1 5E28BEA1
P 8650 1850
F 0 "#PWR0109" H 8650 1600 50  0001 C CNN
F 1 "GNDA" H 8655 1677 50  0000 C CNN
F 2 "" H 8650 1850 50  0001 C CNN
F 3 "" H 8650 1850 50  0001 C CNN
	1    8650 1850
	-1   0    0    1   
$EndComp
$EndSCHEMATC
