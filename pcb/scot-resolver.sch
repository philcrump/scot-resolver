EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1550 3450 1700 3450
Wire Wire Line
	1700 2600 1550 2600
$Sheet
S 7550 2600 1750 450 
U 5E253905
F0 "Resolver Receiver SIN+" 50
F1 "scot-resolver-receiver.sch" 50
F2 "RECEIVER_INPUT" I R 9300 2950 50 
F3 "AD2S1210_VREF" I L 7550 2800 50 
F4 "AD2S1210_INPUT" I L 7550 2950 50 
F5 "RECEIVER_5V" I L 7550 2700 50 
$EndSheet
$Sheet
S 2200 950  1350 1050
U 5E2C28ED
F0 "Power Supplies" 50
F1 "scot-resolver-power.sch" 50
F2 "POWER_28V+" I L 2200 1050 50 
F3 "POWER_28V-" I L 2200 1150 50 
F4 "EXCITER_16V+" I R 3550 1050 50 
F5 "0V_EXCITER" I R 3550 1150 50 
F6 "3.3V_MCU" I R 3550 1850 50 
F7 "5V_CAN_TXRX" I R 3550 1700 50 
F8 "5V_RESOLVER_DIGITAL" I R 3550 1550 50 
F9 "5V_RESOLVER_ANALOGUE" I R 3550 1300 50 
F10 "0V_ANALOG" I R 3550 1400 50 
F11 "0V_DIGITAL" I R 3550 1950 50 
$EndSheet
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 5E44F232
P 1350 1150
F 0 "J1" H 1242 825 50  0000 C CNN
F 1 "Conn_01x02_Female" H 1242 916 50  0000 C CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-2_1x02_P2.54mm_Horizontal" H 1350 1150 50  0001 C CNN
F 3 "~" H 1350 1150 50  0001 C CNN
	1    1350 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2200 1050 1550 1050
Wire Wire Line
	1550 1150 2200 1150
$Sheet
S 7550 4200 1750 450 
U 5E46F57D
F0 "Resolver Receiver COS+" 50
F1 "scot-resolver-receiver.sch" 50
F2 "RECEIVER_INPUT" I R 9300 4550 50 
F3 "AD2S1210_VREF" I L 7550 4400 50 
F4 "AD2S1210_INPUT" I L 7550 4550 50 
F5 "RECEIVER_5V" I L 7550 4300 50 
$EndSheet
$Sheet
S 2200 2650 1350 750 
U 5E4877AC
F0 "CAN TXRX" 50
F1 "scot-resolver-can-txrx.sch" 50
F2 "CAN_L" I L 2200 3100 50 
F3 "CAN_H" I L 2200 2900 50 
F4 "CAN_MCU_RXD" I R 3550 3300 50 
F5 "CAN_MCU_TXD" I R 3550 3150 50 
F6 "3.3V_MCU" I R 3550 2900 50 
F7 "5V_CAN" I R 3550 2750 50 
$EndSheet
Wire Wire Line
	1700 2600 1700 2900
Wire Wire Line
	1700 2900 2200 2900
Connection ~ 1700 2900
Wire Wire Line
	1700 2900 1700 3450
Wire Wire Line
	2200 3100 1600 3100
Wire Wire Line
	1600 3100 1600 3550
Wire Wire Line
	1600 3550 1550 3550
Wire Wire Line
	1600 3100 1600 2700
Wire Wire Line
	1600 2700 1550 2700
Connection ~ 1600 3100
Wire Wire Line
	3550 2900 3800 2900
Wire Wire Line
	3800 2900 3800 2700
Wire Wire Line
	3800 1850 3550 1850
Wire Wire Line
	3550 1700 3700 1700
Wire Wire Line
	3700 1700 3700 2750
Wire Wire Line
	3700 2750 3550 2750
Wire Wire Line
	7100 1300 7100 1450
Wire Wire Line
	7100 1450 7550 1450
Wire Wire Line
	7100 1450 7100 2700
Wire Wire Line
	7100 2700 7550 2700
Connection ~ 7100 1450
Connection ~ 7100 2700
Wire Wire Line
	7100 4300 7550 4300
$Sheet
S 4400 2250 1900 1650
U 5E4C3ECD
F0 "Microcontroller & Interface" 50
F1 "scot-resolver-mcu.sch" 50
F2 "MCU_CAN_TXD" I L 4400 2950 50 
F3 "MCU_CAN_RXD" I L 4400 3100 50 
F4 "3.3V_MCU" I L 4400 2700 50 
F5 "VREF_AD2S1210" I R 6300 2450 50 
F6 "RESOLVER_EXC+" I R 6300 2700 50 
F7 "RESOLVER_EXC-" I R 6300 2850 50 
F8 "RESOLVER_SIN+" I R 6300 3100 50 
F9 "RESOLVER_SIN-" I R 6300 3250 50 
F10 "RESOLVER_COS+" I R 6300 3500 50 
F11 "RESOLVER_COS-" I R 6300 3650 50 
F12 "5V_RESOLVER_ANALOGUE" I L 4400 2400 50 
F13 "5V_RESOLVER_DIGITAL" I L 4400 2550 50 
F14 "0V_ANALOGUE" I L 4400 3600 50 
F15 "0V_DIGITAL" I L 4400 3750 50 
$EndSheet
Wire Wire Line
	4200 1300 4200 2400
Wire Wire Line
	4200 2400 4400 2400
Wire Wire Line
	4200 1300 7100 1300
Wire Wire Line
	3800 2700 4400 2700
Connection ~ 3800 2700
Wire Wire Line
	3800 2700 3800 1850
Wire Wire Line
	4400 2950 4000 2950
Wire Wire Line
	4000 2950 4000 3150
Wire Wire Line
	4000 3150 3550 3150
Wire Wire Line
	4150 3300 4150 3100
Wire Wire Line
	4150 3100 4400 3100
Wire Wire Line
	7550 1550 6800 1550
Wire Wire Line
	6800 1550 6800 2450
Wire Wire Line
	6800 2450 6300 2450
Wire Wire Line
	6800 2450 6800 2800
Wire Wire Line
	6800 2800 7550 2800
Connection ~ 6800 2450
Connection ~ 6800 2800
Wire Wire Line
	6800 4400 7550 4400
Wire Wire Line
	6300 3500 6650 3500
Wire Wire Line
	6650 3500 6650 4550
Wire Wire Line
	6650 4550 7250 4550
Wire Wire Line
	6300 3100 6950 3100
Wire Wire Line
	6950 3100 6950 2950
Wire Wire Line
	6950 2950 7250 2950
Wire Wire Line
	6300 2700 6550 2700
Wire Wire Line
	6550 2700 6550 1700
Wire Wire Line
	6550 1700 7550 1700
Wire Wire Line
	7550 1850 6650 1850
Wire Wire Line
	6650 1850 6650 2850
Wire Wire Line
	6650 2850 6300 2850
Text Notes 1800 1300 2    50   ~ 0
0.1" Terminal Block
Text Notes 10500 1950 2    50   ~ 0
Resolver Exciter Coil
Text Notes 10750 3250 2    50   ~ 0
Resolver Sine Receiver Coil
Text Notes 10850 4900 2    50   ~ 0
Resolver Cosine Receiver Coil
Wire Wire Line
	4200 1300 3550 1300
Connection ~ 4200 1300
Wire Wire Line
	4400 2550 4050 2550
Wire Wire Line
	4050 2550 4050 1550
Wire Wire Line
	4050 1550 3550 1550
$Comp
L power:GNDA #PWR0102
U 1 1 5E62D3A8
P 9950 3050
F 0 "#PWR0102" H 9950 2800 50  0001 C CNN
F 1 "GNDA" V 9955 2923 50  0000 R CNN
F 2 "" H 9950 3050 50  0001 C CNN
F 3 "" H 9950 3050 50  0001 C CNN
	1    9950 3050
	0    1    1    0   
$EndComp
$Comp
L power:GNDA #PWR0103
U 1 1 5E638B63
P 9950 4650
F 0 "#PWR0103" H 9950 4400 50  0001 C CNN
F 1 "GNDA" V 9955 4523 50  0000 R CNN
F 2 "" H 9950 4650 50  0001 C CNN
F 3 "" H 9950 4650 50  0001 C CNN
	1    9950 4650
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x03_Female J4
U 1 1 5E63F585
P 10150 1650
F 0 "J4" H 10042 1325 50  0000 C CNN
F 1 "Conn_01x03_Female" H 10042 1416 50  0000 C CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-3_1x03_P2.54mm_Horizontal" H 10150 1650 50  0001 C CNN
F 3 "~" H 10150 1650 50  0001 C CNN
	1    10150 1650
	1    0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5E4FCB16
P 5400 900
F 0 "H1" H 5500 946 50  0000 L CNN
F 1 "MountingHole" H 5500 855 50  0000 L CNN
F 2 "agg:M3_MOUNT" H 5400 900 50  0001 C CNN
F 3 "~" H 5400 900 50  0001 C CNN
	1    5400 900 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5E4FD6C4
P 5550 4950
F 0 "H2" H 5650 4996 50  0000 L CNN
F 1 "MountingHole" H 5650 4905 50  0000 L CNN
F 2 "agg:M3_MOUNT" H 5550 4950 50  0001 C CNN
F 3 "~" H 5550 4950 50  0001 C CNN
	1    5550 4950
	1    0    0    -1  
$EndComp
Text Notes 1500 2950 2    50   ~ 0
0.1" Terminal Block
Text Notes 1500 3800 2    50   ~ 0
0.1" Terminal Block
Text Notes 11000 1700 2    50   ~ 0
0.1" Terminal Block
Text Notes 11000 3000 2    50   ~ 0
0.1" Terminal Block
Text Notes 11000 4600 2    50   ~ 0
0.1" Terminal Block
$Comp
L Connector:Conn_01x02_Female J5
U 1 1 5EAD507C
P 10150 3050
F 0 "J5" H 10042 2725 50  0000 C CNN
F 1 "Conn_01x02_Female" H 10042 2816 50  0000 C CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-2_1x02_P2.54mm_Horizontal" H 10150 3050 50  0001 C CNN
F 3 "~" H 10150 3050 50  0001 C CNN
	1    10150 3050
	1    0    0    1   
$EndComp
Wire Wire Line
	9300 2950 9950 2950
$Comp
L Connector:Conn_01x02_Female J8
U 1 1 5EADF09C
P 10150 4650
F 0 "J8" H 10042 4325 50  0000 C CNN
F 1 "Conn_01x02_Female" H 10042 4416 50  0000 C CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-2_1x02_P2.54mm_Horizontal" H 10150 4650 50  0001 C CNN
F 3 "~" H 10150 4650 50  0001 C CNN
	1    10150 4650
	1    0    0    1   
$EndComp
Wire Wire Line
	9300 4550 9950 4550
Text Notes 10300 4050 2    50   ~ 0
Receiver Bias
$Comp
L power:GNDA #PWR0113
U 1 1 5EAE45AD
P 9950 3800
F 0 "#PWR0113" H 9950 3550 50  0001 C CNN
F 1 "GNDA" V 9955 3673 50  0000 R CNN
F 2 "" H 9950 3800 50  0001 C CNN
F 3 "" H 9950 3800 50  0001 C CNN
	1    9950 3800
	0    1    1    0   
$EndComp
Text Notes 11000 3750 2    50   ~ 0
0.1" Terminal Block
$Comp
L Connector:Conn_01x02_Female J6
U 1 1 5EAE45B8
P 10150 3800
F 0 "J6" H 10042 3475 50  0000 C CNN
F 1 "Conn_01x02_Female" H 10042 3566 50  0000 C CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-2_1x02_P2.54mm_Horizontal" H 10150 3800 50  0001 C CNN
F 3 "~" H 10150 3800 50  0001 C CNN
	1    10150 3800
	1    0    0    1   
$EndComp
Wire Wire Line
	7100 2700 7100 4300
Wire Wire Line
	6800 2800 6800 3250
Wire Wire Line
	6800 3700 9950 3700
Connection ~ 6800 3700
Wire Wire Line
	6800 3700 6800 4400
Wire Wire Line
	6300 3650 6800 3650
Connection ~ 6800 3650
Wire Wire Line
	6800 3650 6800 3700
Wire Wire Line
	6300 3250 6800 3250
Connection ~ 6800 3250
Wire Wire Line
	6800 3250 6800 3650
$Comp
L Connector:Conn_01x03_Female J2
U 1 1 5EAEEF38
P 1350 2700
F 0 "J2" H 1242 2375 50  0000 C CNN
F 1 "Conn_01x03_Female" H 1242 2466 50  0000 C CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-3_1x03_P2.54mm_Horizontal" H 1350 2700 50  0001 C CNN
F 3 "~" H 1350 2700 50  0001 C CNN
	1    1350 2700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Female J3
U 1 1 5EAF204B
P 1350 3550
F 0 "J3" H 1242 3225 50  0000 C CNN
F 1 "Conn_01x03_Female" H 1242 3316 50  0000 C CNN
F 2 "TerminalBlock_TE-Connectivity:TerminalBlock_TE_282834-3_1x03_P2.54mm_Horizontal" H 1350 3550 50  0001 C CNN
F 3 "~" H 1350 3550 50  0001 C CNN
	1    1350 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 2800 1800 2800
Wire Wire Line
	1800 2800 1800 3650
Wire Wire Line
	1800 3650 1550 3650
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5EAF4284
P 1800 3850
F 0 "JP1" V 1754 3918 50  0000 L CNN
F 1 "SolderJumper_2_Open" V 1845 3918 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 1800 3850 50  0001 C CNN
F 3 "~" H 1800 3850 50  0001 C CNN
	1    1800 3850
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5EAF4C43
P 1800 4050
F 0 "#PWR0114" H 1800 3800 50  0001 C CNN
F 1 "GND" H 1805 3877 50  0000 C CNN
F 2 "" H 1800 4050 50  0001 C CNN
F 3 "" H 1800 4050 50  0001 C CNN
	1    1800 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4050 1800 4000
Wire Wire Line
	1800 3700 1800 3650
Connection ~ 1800 3650
$Comp
L Connector:TestPoint_Alt TP1
U 1 1 5EA970D9
P 7600 5200
F 0 "TP1" H 7658 5318 50  0000 L CNN
F 1 "TestPoint_Alt" H 7658 5227 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch7.62mm_Drill1.3mm" H 7800 5200 50  0001 C CNN
F 3 "~" H 7800 5200 50  0001 C CNN
	1    7600 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 5EA99834
P 7250 4550
F 0 "TP3" H 7192 4576 50  0000 R CNN
F 1 "TestPoint" H 7192 4667 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 7450 4550 50  0001 C CNN
F 3 "~" H 7450 4550 50  0001 C CNN
	1    7250 4550
	-1   0    0    1   
$EndComp
Connection ~ 7250 4550
Wire Wire Line
	7250 4550 7550 4550
$Comp
L Connector:TestPoint TP2
U 1 1 5EA99EA7
P 7250 2950
F 0 "TP2" H 7192 2976 50  0000 R CNN
F 1 "TestPoint" H 7192 3067 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_D1.5mm" H 7450 2950 50  0001 C CNN
F 3 "~" H 7450 2950 50  0001 C CNN
	1    7250 2950
	-1   0    0    1   
$EndComp
Connection ~ 7250 2950
Wire Wire Line
	7250 2950 7550 2950
$Comp
L power:GNDA #PWR0115
U 1 1 5EAA1A37
P 7600 5200
F 0 "#PWR0115" H 7600 4950 50  0001 C CNN
F 1 "GNDA" V 7605 5073 50  0000 R CNN
F 2 "" H 7600 5200 50  0001 C CNN
F 3 "" H 7600 5200 50  0001 C CNN
	1    7600 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3300 4150 3300
Wire Wire Line
	4400 3600 3950 3600
Wire Wire Line
	3950 3600 3950 1400
Wire Wire Line
	3950 1400 3550 1400
Wire Wire Line
	3550 1950 3900 1950
Wire Wire Line
	3900 1950 3900 3750
Wire Wire Line
	3900 3750 4400 3750
$Sheet
S 7550 1150 1650 800 
U 5E0AB524
F0 "Resolver Exciter" 50
F1 "scot-resolver-exciter.sch" 50
F2 "AD2S1210_VREF" I L 7550 1550 50 
F3 "EXC+_OUTPUT" I R 9200 1650 50 
F4 "EXC-_OUTPUT" I R 9200 1550 50 
F5 "AD2S1210_EXC+" I L 7550 1700 50 
F6 "AD2S1210_EXC-" I L 7550 1850 50 
F7 "EXC_5V" I L 7550 1450 50 
F8 "EXC_16V" I L 7550 1200 50 
F9 "EXC_0V" I L 7550 1300 50 
$EndSheet
Wire Wire Line
	9200 1550 9950 1550
Wire Wire Line
	9200 1650 9950 1650
Wire Wire Line
	7450 1050 7450 1200
Wire Wire Line
	7450 1200 7550 1200
Wire Wire Line
	3550 1050 7450 1050
Wire Wire Line
	7550 1300 7300 1300
Wire Wire Line
	7300 1300 7300 1150
Wire Wire Line
	7300 1150 3550 1150
Wire Wire Line
	7300 1150 7300 950 
Wire Wire Line
	7300 950  9400 950 
Wire Wire Line
	9400 950  9400 1750
Wire Wire Line
	9400 1750 9950 1750
Connection ~ 7300 1150
$EndSCHEMATC
