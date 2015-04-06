EESchema Schematic File Version 2
LIBS:conn
LIBS:nordicsemi
LIBS:dc-dc
LIBS:device
LIBS:igrow
LIBS:power
LIBS:guan
LIBS:PIEZO
LIBS:linear
LIBS:adc-dac
LIBS:igrow-101-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L NRF51822-MODULE U1
U 1 1 54CE7872
P 3200 2900
F 0 "U1" H 3100 3300 60  0000 C CNN
F 1 "NRF51822-MODULE" H 3150 2550 60  0000 C CNN
F 2 "igrow:XL51822-D01" H 3100 1950 60  0001 C CNN
F 3 "" H 3100 1950 60  0000 C CNN
	1    3200 2900
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X05 P1
U 1 1 54CE7AC5
P 4850 3150
F 0 "P1" H 4850 3450 50  0000 C CNN
F 1 "CONN_02X05" H 4850 2850 50  0000 C CNN
F 2 "igrow:harwin_m50-3600542" H 4850 1950 60  0001 C CNN
F 3 "" H 4850 1950 60  0000 C CNN
	1    4850 3150
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 54CE7CB6
P 5500 3700
F 0 "D2" H 5500 3800 50  0000 C CNN
F 1 "LED" H 5500 3600 50  0000 C CNN
F 2 "LEDs:LED-0805" H 5500 3700 60  0001 C CNN
F 3 "" H 5500 3700 60  0000 C CNN
	1    5500 3700
	0    1    1    0   
$EndComp
$Comp
L LED D3
U 1 1 54CE7D13
P 5800 4300
F 0 "D3" H 5800 4400 50  0000 C CNN
F 1 "LED" H 5800 4200 50  0000 C CNN
F 2 "LEDs:LED-0805" H 5800 4300 60  0001 C CNN
F 3 "" H 5800 4300 60  0000 C CNN
	1    5800 4300
	0    1    1    0   
$EndComp
$Comp
L VCC #PWR01
U 1 1 54CF8394
P 1800 3200
F 0 "#PWR01" H 1800 3050 60  0001 C CNN
F 1 "VCC" H 1800 3350 60  0000 C CNN
F 2 "" H 1800 3200 60  0000 C CNN
F 3 "" H 1800 3200 60  0000 C CNN
	1    1800 3200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 54CF8409
P 1000 3200
F 0 "#PWR02" H 1000 2950 60  0001 C CNN
F 1 "GND" H 1000 3050 60  0000 C CNN
F 2 "" H 1000 3200 60  0000 C CNN
F 3 "" H 1000 3200 60  0000 C CNN
	1    1000 3200
	1    0    0    -1  
$EndComp
$Comp
L BATTERY BT1
U 1 1 54CF8EB0
P 1550 5850
F 0 "BT1" H 1550 6050 50  0000 C CNN
F 1 "BATTERY" H 1550 5660 50  0000 C CNN
F 2 "igrow:CR2032_THRUHOLE" H 1550 5850 60  0001 C CNN
F 3 "" H 1550 5850 60  0000 C CNN
	1    1550 5850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR03
U 1 1 54CF8F44
P 1550 6450
F 0 "#PWR03" H 1550 6200 60  0001 C CNN
F 1 "GND" H 1550 6300 60  0000 C CNN
F 2 "" H 1550 6450 60  0000 C CNN
F 3 "" H 1550 6450 60  0000 C CNN
	1    1550 6450
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 54CF8F68
P 1950 5550
F 0 "#PWR04" H 1950 5400 60  0001 C CNN
F 1 "VCC" H 1950 5700 60  0000 C CNN
F 2 "" H 1950 5550 60  0000 C CNN
F 3 "" H 1950 5550 60  0000 C CNN
	1    1950 5550
	0    1    1    0   
$EndComp
$Comp
L DIODE D1
U 1 1 54CF8F9C
P 1100 5850
F 0 "D1" H 1100 5950 40  0000 C CNN
F 1 "DIODE" H 1100 5750 40  0000 C CNN
F 2 "Diodes_SMD:Diode-SMC_Handsoldering" H 1100 5850 60  0001 C CNN
F 3 "" H 1100 5850 60  0000 C CNN
	1    1100 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 6050 1100 6150
Wire Wire Line
	1100 6150 1550 6150
Wire Wire Line
	1550 6150 1550 6450
Wire Wire Line
	1100 5650 1100 5550
Wire Wire Line
	1100 5550 1950 5550
Wire Wire Line
	1800 3200 2200 3200
Wire Wire Line
	1000 3200 1000 3100
Wire Wire Line
	1000 3100 2200 3100
$Comp
L GND #PWR05
U 1 1 54CF9BD2
P 4900 3650
F 0 "#PWR05" H 4900 3400 60  0001 C CNN
F 1 "GND" H 4900 3500 60  0000 C CNN
F 2 "" H 4900 3650 60  0000 C CNN
F 3 "" H 4900 3650 60  0000 C CNN
	1    4900 3650
	1    0    0    -1  
$EndComp
$Comp
L VTG #PWR06
U 1 1 54CF9E28
P 4500 3400
F 0 "#PWR06" H 4500 3250 60  0001 C CNN
F 1 "VTG" H 4500 3550 60  0000 C CNN
F 2 "" H 4500 3400 60  0000 C CNN
F 3 "" H 4500 3400 60  0000 C CNN
	1    4500 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 3400 4650 3400
Wire Wire Line
	4100 2700 4650 2700
Wire Wire Line
	4650 2700 4650 2900
Wire Wire Line
	4750 2600 4750 2900
Wire Wire Line
	4750 3400 4750 3500
Wire Wire Line
	4750 3500 5050 3500
Wire Wire Line
	4900 3500 4900 3650
Wire Wire Line
	5050 3500 5050 3400
Connection ~ 4900 3500
Wire Wire Line
	4850 3400 4850 3500
Connection ~ 4850 3500
$Comp
L SHT21 U2
U 1 1 54D0FB67
P 1900 2100
F 0 "U2" H 1600 2300 60  0000 C CNN
F 1 "SHT21" H 1600 2400 60  0000 C CNN
F 2 "igrow:SHT21" H 1900 2100 60  0001 C CNN
F 3 "" H 1900 2100 60  0000 C CNN
	1    1900 2100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR07
U 1 1 54D0FC74
P 1050 1850
F 0 "#PWR07" H 1050 1700 60  0001 C CNN
F 1 "VCC" H 1050 2000 60  0000 C CNN
F 2 "" H 1050 1850 60  0000 C CNN
F 3 "" H 1050 1850 60  0000 C CNN
	1    1050 1850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 54D0FCB0
P 1050 2550
F 0 "#PWR08" H 1050 2300 60  0001 C CNN
F 1 "GND" H 1050 2400 60  0000 C CNN
F 2 "" H 1050 2550 60  0000 C CNN
F 3 "" H 1050 2550 60  0000 C CNN
	1    1050 2550
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 54D0FCD8
P 1050 2200
F 0 "C1" H 1050 2300 40  0000 L CNN
F 1 "C" H 1056 2115 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1088 2050 30  0001 C CNN
F 3 "" H 1050 2200 60  0000 C CNN
	1    1050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2000 1050 2000
Wire Wire Line
	1050 2000 1050 1850
Wire Wire Line
	1050 2400 1050 2550
Wire Wire Line
	1300 2100 1250 2100
Wire Wire Line
	1250 2100 1250 2300
Wire Wire Line
	1250 2300 2200 2300
Wire Wire Line
	1900 2100 2050 2100
Wire Wire Line
	2050 2100 2050 2200
Wire Wire Line
	2050 2200 2200 2200
$Comp
L GND #PWR09
U 1 1 54D0FFED
P 2100 2000
F 0 "#PWR09" H 2100 1750 60  0001 C CNN
F 1 "GND" H 2100 1850 60  0000 C CNN
F 2 "" H 2100 2000 60  0000 C CNN
F 3 "" H 2100 2000 60  0000 C CNN
	1    2100 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2100 2000 1900 2000
$Comp
L R R1
U 1 1 54D10405
P 4650 4200
F 0 "R1" V 4730 4200 40  0000 C CNN
F 1 "R" V 4657 4201 40  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4580 4200 30  0001 C CNN
F 3 "" H 4650 4200 30  0000 C CNN
	1    4650 4200
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 54D10451
P 4750 4800
F 0 "R2" V 4830 4800 40  0000 C CNN
F 1 "R" V 4757 4801 40  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4680 4800 30  0001 C CNN
F 3 "" H 4750 4800 30  0000 C CNN
	1    4750 4800
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 54D1054F
P 5800 5100
F 0 "#PWR010" H 5800 4850 60  0001 C CNN
F 1 "GND" H 5800 4950 60  0000 C CNN
F 2 "" H 5800 5100 60  0000 C CNN
F 3 "" H 5800 5100 60  0000 C CNN
	1    5800 5100
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 54D8A9FD
P 4300 5350
F 0 "#PWR011" H 4300 5200 60  0001 C CNN
F 1 "VCC" H 4300 5500 60  0000 C CNN
F 2 "" H 4300 5350 60  0000 C CNN
F 3 "" H 4300 5350 60  0000 C CNN
	1    4300 5350
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 54D8AA25
P 4300 5750
F 0 "R4" V 4380 5750 40  0000 C CNN
F 1 "R" V 4307 5751 40  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4230 5750 30  0001 C CNN
F 3 "" H 4300 5750 30  0000 C CNN
	1    4300 5750
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 54D8AA66
P 4700 6450
F 0 "R5" V 4780 6450 40  0000 C CNN
F 1 "R" V 4707 6451 40  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4630 6450 30  0001 C CNN
F 3 "" H 4700 6450 30  0000 C CNN
	1    4700 6450
	1    0    0    -1  
$EndComp
$Comp
L PIEZO PIEZO1
U 1 1 54D8ABBE
P 4300 6400
F 0 "PIEZO1" H 4400 6450 40  0000 L CNN
F 1 "PIEZO" H 4400 6350 40  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 4300 6400 60  0001 C CNN
F 3 "" H 4300 6400 60  0000 C CNN
	1    4300 6400
	1    0    0    -1  
$EndComp
$Comp
L ZENER D4
U 1 1 54D8ABFE
P 3900 6400
F 0 "D4" H 3900 6500 50  0000 C CNN
F 1 "ZENER" H 3900 6300 40  0000 C CNN
F 2 "igrow:SOD123" H 3900 6400 60  0001 C CNN
F 3 "" H 3900 6400 60  0000 C CNN
	1    3900 6400
	0    -1   -1   0   
$EndComp
$Comp
L NPN Q1
U 1 1 54D8AD15
P 4200 7100
F 0 "Q1" H 4200 6950 50  0000 R CNN
F 1 "NPN" H 4200 7250 50  0000 R CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23_Handsoldering" H 4200 7100 60  0001 C CNN
F 3 "" H 4200 7100 60  0000 C CNN
	1    4200 7100
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 54D8AD64
P 3650 7100
F 0 "R3" V 3730 7100 40  0000 C CNN
F 1 "R" V 3657 7101 40  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3580 7100 30  0001 C CNN
F 3 "" H 3650 7100 30  0000 C CNN
	1    3650 7100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR012
U 1 1 54D8ADBC
P 4300 7450
F 0 "#PWR012" H 4300 7200 60  0001 C CNN
F 1 "GND" H 4300 7300 60  0000 C CNN
F 2 "" H 4300 7450 60  0000 C CNN
F 3 "" H 4300 7450 60  0000 C CNN
	1    4300 7450
	1    0    0    -1  
$EndComp
$Comp
L TL972 U3
U 1 1 54EAE7A7
P 1600 4400
F 0 "U3" H 1550 4600 60  0000 L CNN
F 1 "TL972" H 1550 4150 60  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 1600 4400 60  0001 C CNN
F 3 "" H 1600 4400 60  0000 C CNN
	1    1600 4400
	1    0    0    -1  
$EndComp
$Comp
L TL972 U3
U 2 1 54EAE865
P 7550 4150
F 0 "U3" H 7500 4350 60  0000 L CNN
F 1 "TL972" H 7500 3900 60  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7550 4150 60  0001 C CNN
F 3 "" H 7550 4150 60  0000 C CNN
	2    7550 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4050 7050 4700
$Comp
L GND #PWR013
U 1 1 54EAEC5D
P 7050 4700
F 0 "#PWR013" H 7050 4450 60  0001 C CNN
F 1 "GND" H 7050 4550 60  0000 C CNN
F 2 "" H 7050 4700 60  0000 C CNN
F 3 "" H 7050 4700 60  0000 C CNN
	1    7050 4700
	1    0    0    -1  
$EndComp
Connection ~ 7050 4250
$Comp
L VCC #PWR014
U 1 1 54EAEE08
P 7450 3600
F 0 "#PWR014" H 7450 3450 60  0001 C CNN
F 1 "VCC" H 7450 3750 60  0000 C CNN
F 2 "" H 7450 3600 60  0000 C CNN
F 3 "" H 7450 3600 60  0000 C CNN
	1    7450 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3600 7450 3750
Wire Wire Line
	7450 4550 7050 4550
Connection ~ 7050 4550
$Comp
L R R6
U 1 1 54EAF52E
P 750 4100
F 0 "R6" V 830 4100 40  0000 C CNN
F 1 "R" V 757 4101 40  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 680 4100 30  0001 C CNN
F 3 "" H 750 4100 30  0000 C CNN
	1    750  4100
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 54EAF5B7
P 750 4900
F 0 "R7" V 830 4900 40  0000 C CNN
F 1 "R" V 757 4901 40  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 680 4900 30  0001 C CNN
F 3 "" H 750 4900 30  0000 C CNN
	1    750  4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  4350 750  4650
Wire Wire Line
	750  4500 1100 4500
Connection ~ 750  4500
$Comp
L GND #PWR015
U 1 1 54EAF748
P 750 5300
F 0 "#PWR015" H 750 5050 60  0001 C CNN
F 1 "GND" H 750 5150 60  0000 C CNN
F 2 "" H 750 5300 60  0000 C CNN
F 3 "" H 750 5300 60  0000 C CNN
	1    750  5300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR016
U 1 1 54EAF784
P 750 3700
F 0 "#PWR016" H 750 3550 60  0001 C CNN
F 1 "VCC" H 750 3850 60  0000 C CNN
F 2 "" H 750 3700 60  0000 C CNN
F 3 "" H 750 3700 60  0000 C CNN
	1    750  3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  3700 750  3850
Wire Wire Line
	750  5150 750  5300
$Comp
L NPN Q2
U 1 1 54F1A32E
P 5400 4200
F 0 "Q2" H 5400 4050 50  0000 R CNN
F 1 "NPN" H 5400 4350 50  0000 R CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23_Handsoldering" H 5400 4200 60  0001 C CNN
F 3 "" H 5400 4200 60  0000 C CNN
	1    5400 4200
	1    0    0    -1  
$EndComp
$Comp
L NPN Q3
U 1 1 54F1A430
P 5700 4800
F 0 "Q3" H 5700 4650 50  0000 R CNN
F 1 "NPN" H 5700 4950 50  0000 R CNN
F 2 "Housings_SOT-23_SOT-143_TSOT-6:SOT-23_Handsoldering" H 5700 4800 60  0001 C CNN
F 3 "" H 5700 4800 60  0000 C CNN
	1    5700 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 54F1A792
P 5500 4550
F 0 "#PWR017" H 5500 4300 60  0001 C CNN
F 1 "GND" H 5500 4400 60  0000 C CNN
F 2 "" H 5500 4550 60  0000 C CNN
F 3 "" H 5500 4550 60  0000 C CNN
	1    5500 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4400 5500 4550
Wire Wire Line
	5800 5000 5800 5100
Wire Wire Line
	5500 3900 5500 4000
Wire Wire Line
	5800 4500 5800 4600
$Comp
L VCC #PWR018
U 1 1 54F1ABAC
P 5500 2800
F 0 "#PWR018" H 5500 2650 60  0001 C CNN
F 1 "VCC" H 5500 2950 60  0000 C CNN
F 2 "" H 5500 2800 60  0000 C CNN
F 3 "" H 5500 2800 60  0000 C CNN
	1    5500 2800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR019
U 1 1 54F1AC2C
P 5800 3400
F 0 "#PWR019" H 5800 3250 60  0001 C CNN
F 1 "VCC" H 5800 3550 60  0000 C CNN
F 2 "" H 5800 3400 60  0000 C CNN
F 3 "" H 5800 3400 60  0000 C CNN
	1    5800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3500 5500 3400
Wire Wire Line
	5800 4100 5800 4000
$Comp
L R R8
U 1 1 54F1B2F9
P 5500 3150
F 0 "R8" V 5580 3150 40  0000 C CNN
F 1 "R" V 5507 3151 40  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5430 3150 30  0001 C CNN
F 3 "" H 5500 3150 30  0000 C CNN
	1    5500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2800 5500 2900
Wire Wire Line
	4100 2600 4750 2600
Wire Wire Line
	5000 4800 5500 4800
$Comp
L R R9
U 1 1 54F1B9F8
P 5800 3750
F 0 "R9" V 5880 3750 40  0000 C CNN
F 1 "R" V 5807 3751 40  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5730 3750 30  0001 C CNN
F 3 "" H 5800 3750 30  0000 C CNN
	1    5800 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3400 5800 3500
$Comp
L SW_PUSH SW1
U 1 1 54F1CE9D
P 2400 5000
F 0 "SW1" H 2550 5110 50  0000 C CNN
F 1 "SW_PUSH" H 2400 4920 50  0000 C CNN
F 2 "igrow:SPSTSW" H 2400 5000 60  0001 C CNN
F 3 "" H 2400 5000 60  0000 C CNN
	1    2400 5000
	0    1    1    0   
$EndComp
$Comp
L R R10
U 1 1 54F1CF92
P 2400 4350
F 0 "R10" V 2480 4350 40  0000 C CNN
F 1 "R" V 2407 4351 40  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2330 4350 30  0001 C CNN
F 3 "" H 2400 4350 30  0000 C CNN
	1    2400 4350
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR020
U 1 1 54F1D024
P 2400 4000
F 0 "#PWR020" H 2400 3850 60  0001 C CNN
F 1 "VCC" H 2400 4150 60  0000 C CNN
F 2 "" H 2400 4000 60  0000 C CNN
F 3 "" H 2400 4000 60  0000 C CNN
	1    2400 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4000 2400 4100
$Comp
L GND #PWR021
U 1 1 54F1D139
P 2400 5400
F 0 "#PWR021" H 2400 5150 60  0001 C CNN
F 1 "GND" H 2400 5250 60  0000 C CNN
F 2 "" H 2400 5400 60  0000 C CNN
F 3 "" H 2400 5400 60  0000 C CNN
	1    2400 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 5300 2400 5400
Wire Wire Line
	2400 4600 2400 4700
$Comp
L R R11
U 1 1 54F1D2C3
P 2750 4600
F 0 "R11" V 2830 4600 40  0000 C CNN
F 1 "R" V 2757 4601 40  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2680 4600 30  0001 C CNN
F 3 "" H 2750 4600 30  0000 C CNN
	1    2750 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 4600 3000 3900
Wire Wire Line
	2400 4600 2500 4600
Wire Wire Line
	3200 3900 3200 7100
Wire Wire Line
	3200 7100 3400 7100
Wire Wire Line
	3900 7100 4000 7100
Wire Wire Line
	4300 6900 4300 6550
Wire Wire Line
	4300 6250 4300 6000
Wire Wire Line
	4300 5500 4300 5350
Wire Wire Line
	3900 6200 4700 6200
Connection ~ 4300 6200
Wire Wire Line
	3900 6600 4300 6600
Connection ~ 4300 6600
Wire Wire Line
	4700 6700 4300 6700
Connection ~ 4300 6700
Wire Wire Line
	4300 7300 4300 7450
Wire Wire Line
	5200 4200 4900 4200
Wire Wire Line
	4400 4200 3400 4200
Wire Wire Line
	3400 4200 3400 3900
Wire Wire Line
	4500 4800 3300 4800
Wire Wire Line
	3300 4800 3300 3900
$EndSCHEMATC
