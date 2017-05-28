EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:cpu2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 7300 6800 0    60   ~ 0
early reset logic
$Comp
L 74LS193 U?
U 1 1 592B631F
P 3850 2750
F 0 "U?" H 3850 2900 50  0000 C CNN
F 1 "74LS193" H 3850 2750 50  0000 C CNN
F 2 "" H 3850 2750 50  0001 C CNN
F 3 "" H 3850 2750 50  0001 C CNN
	1    3850 2750
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 592B6334
P 2600 2550
F 0 "#PWR?" H 2600 2400 50  0001 C CNN
F 1 "VCC" H 2600 2700 50  0000 C CNN
F 2 "" H 2600 2550 50  0001 C CNN
F 3 "" H 2600 2550 50  0001 C CNN
	1    2600 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 592B633A
P 2750 3450
F 0 "#PWR?" H 2750 3200 50  0001 C CNN
F 1 "GND" H 2750 3300 50  0000 C CNN
F 2 "" H 2750 3450 50  0001 C CNN
F 3 "" H 2750 3450 50  0001 C CNN
	1    2750 3450
	1    0    0    -1  
$EndComp
NoConn ~ 4850 2850
NoConn ~ 4850 3050
$Comp
L 74LS32 U?
U 1 1 592B6342
P 2850 4850
F 0 "U?" H 2850 4900 50  0000 C CNN
F 1 "74LS32" H 2850 4800 50  0000 C CNN
F 2 "" H 2850 4850 50  0001 C CNN
F 3 "" H 2850 4850 50  0001 C CNN
	1    2850 4850
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U?
U 1 1 592B6350
P 8500 2900
F 0 "U?" H 8500 2900 50  0000 C CNN
F 1 "74LS175" H 8600 2500 50  0000 C CNN
F 2 "" H 8500 2900 50  0001 C CNN
F 3 "" H 8500 2900 50  0001 C CNN
	1    8500 2900
	1    0    0    -1  
$EndComp
$Comp
L 74LS32 U?
U 1 1 592B6357
P 2850 5350
F 0 "U?" H 2850 5400 50  0000 C CNN
F 1 "74LS32" H 2850 5300 50  0000 C CNN
F 2 "" H 2850 5350 50  0001 C CNN
F 3 "" H 2850 5350 50  0001 C CNN
	1    2850 5350
	1    0    0    -1  
$EndComp
Text Label 10050 2650 0    60   ~ 0
-lateRST
$Comp
L GND #PWR?
U 1 1 592B635F
P 7650 4350
F 0 "#PWR?" H 7650 4100 50  0001 C CNN
F 1 "GND" H 7650 4200 50  0000 C CNN
F 2 "" H 7650 4350 50  0001 C CNN
F 3 "" H 7650 4350 50  0001 C CNN
	1    7650 4350
	1    0    0    -1  
$EndComp
$Comp
L 74LS32 U?
U 1 1 592B6367
P 6700 2950
F 0 "U?" H 6700 3000 50  0000 C CNN
F 1 "74LS32" H 6700 2900 50  0000 C CNN
F 2 "" H 6700 2950 50  0001 C CNN
F 3 "" H 6700 2950 50  0001 C CNN
	1    6700 2950
	1    0    0    -1  
$EndComp
Text Notes 10000 3100 0    60   ~ 0
-lateRST is the\nactive-low reset\nsignal for all other\ndevices
$Comp
L GND #PWR?
U 1 1 592B6384
P 1850 6900
F 0 "#PWR?" H 1850 6650 50  0001 C CNN
F 1 "GND" H 1850 6750 50  0000 C CNN
F 2 "" H 1850 6900 50  0001 C CNN
F 3 "" H 1850 6900 50  0001 C CNN
	1    1850 6900
	1    0    0    -1  
$EndComp
NoConn ~ 3700 5350
Text Notes 2550 4500 0    60   ~ 0
unused gates
$Comp
L 74LS541 U?
U 1 1 592B638E
P 6750 5250
F 0 "U?" H 6750 5825 50  0000 C BNN
F 1 "74LS541" H 6750 4675 50  0000 C TNN
F 2 "" H 6750 5250 50  0001 C CNN
F 3 "" H 6750 5250 50  0001 C CNN
	1    6750 5250
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 592B6395
P 4900 5200
F 0 "#PWR?" H 4900 5050 50  0001 C CNN
F 1 "VCC" H 4900 5350 50  0000 C CNN
F 2 "" H 4900 5200 50  0001 C CNN
F 3 "" H 4900 5200 50  0001 C CNN
	1    4900 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2950 3150 2950
Wire Wire Line
	3150 2800 2600 2800
Wire Wire Line
	2600 2550 2600 3050
Wire Wire Line
	2750 2650 3150 2650
Wire Wire Line
	2750 2350 2750 3450
Wire Wire Line
	3150 2550 2750 2550
Connection ~ 2750 2650
Wire Wire Line
	3150 2450 2750 2450
Connection ~ 2750 2550
Wire Wire Line
	3150 2350 2750 2350
Connection ~ 2750 2450
Wire Wire Line
	1300 3150 3150 3150
Wire Wire Line
	2600 3050 3150 3050
Connection ~ 2600 2800
Wire Wire Line
	4550 2850 4850 2850
Wire Wire Line
	4550 3050 4850 3050
Wire Wire Line
	7300 2450 7800 2450
Wire Wire Line
	9200 2650 10550 2650
Wire Wire Line
	9800 3700 9800 2650
Connection ~ 9800 2650
Wire Wire Line
	1850 5250 2250 5250
Wire Wire Line
	1850 4750 1850 6900
Wire Wire Line
	2250 5450 1850 5450
Connection ~ 1850 5450
Wire Wire Line
	3450 5350 3700 5350
Wire Wire Line
	4900 5450 6050 5450
Wire Wire Line
	4900 5200 4900 5450
Wire Wire Line
	6050 5350 4900 5350
Connection ~ 4900 5350
Wire Wire Line
	6050 5650 5850 5650
Wire Wire Line
	5850 5650 5850 6300
Wire Wire Line
	5850 6300 4900 6300
Wire Wire Line
	6050 5750 5850 5750
Connection ~ 5850 5750
Text Label 4950 6300 0    60   ~ 0
-pcLoad
Wire Wire Line
	6050 4750 5350 4750
Wire Wire Line
	5350 4750 5350 5650
Wire Wire Line
	6050 4850 5350 4850
Connection ~ 5350 4850
Wire Wire Line
	6050 4950 5350 4950
Connection ~ 5350 4950
Wire Wire Line
	6050 5050 5350 5050
Connection ~ 5350 5050
Wire Wire Line
	6050 5150 5350 5150
Connection ~ 5350 5150
Wire Wire Line
	6050 5250 5350 5250
Connection ~ 5350 5250
$Comp
L GND #PWR?
U 1 1 592B63DA
P 5350 5650
F 0 "#PWR?" H 5350 5400 50  0001 C CNN
F 1 "GND" H 5350 5500 50  0000 C CNN
F 2 "" H 5350 5650 50  0001 C CNN
F 3 "" H 5350 5650 50  0001 C CNN
	1    5350 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4750 7850 4750
Wire Wire Line
	7450 4850 7850 4850
Wire Wire Line
	7450 4950 7850 4950
Wire Wire Line
	7450 5050 7850 5050
Wire Wire Line
	7450 5150 7850 5150
Wire Wire Line
	7450 5250 7850 5250
Wire Wire Line
	7450 5350 7850 5350
Wire Wire Line
	7450 5450 7850 5450
Text Label 7550 4750 0    60   ~ 0
ALU0
Text Label 7550 4850 0    60   ~ 0
ALU1
Text Label 7550 4950 0    60   ~ 0
ALU2
Text Label 7550 5050 0    60   ~ 0
ALU3
Text Label 7550 5150 0    60   ~ 0
ALU4
Text Label 7550 5250 0    60   ~ 0
ALU5
Text Label 7550 5350 0    60   ~ 0
ALU6
Text Label 7550 5450 0    60   ~ 0
ALU7
Text Notes 6300 6150 0    60   ~ 0
the initial PC value is\n0xC0C0
Wire Wire Line
	9200 2450 10550 2450
Text Label 10050 2450 0    60   ~ 0
-pcLoad
Wire Wire Line
	5050 2350 6100 2350
Wire Wire Line
	7800 2850 7650 2850
Wire Wire Line
	7650 2850 7650 4350
Wire Wire Line
	7800 3050 7650 3050
Connection ~ 7650 3050
Wire Wire Line
	5050 2850 6100 2850
Wire Wire Line
	7800 3350 7500 3350
Wire Wire Line
	7500 3350 7500 4150
Wire Wire Line
	7800 3250 7400 3250
Wire Wire Line
	7400 3250 7400 4000
Wire Wire Line
	9800 3700 6000 3700
Wire Wire Line
	5850 2550 6100 2550
Wire Wire Line
	6100 3050 6000 3050
Wire Wire Line
	7300 2950 7450 2950
Wire Wire Line
	7450 2950 7450 2650
Wire Wire Line
	7450 2650 7800 2650
Text Notes 9550 2300 0    60   ~ 0
-pcLoad asserts the initial PC\nupper/lower byte value on the\nALU data bus
$Comp
L 74LS32 U?
U 1 1 592B6404
P 6700 2450
F 0 "U?" H 6700 2500 50  0000 C CNN
F 1 "74LS32" H 6700 2400 50  0000 C CNN
F 2 "" H 6700 2450 50  0001 C CNN
F 3 "" H 6700 2450 50  0001 C CNN
	1    6700 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4750 1850 4750
Connection ~ 1850 5250
Wire Wire Line
	2250 4950 1850 4950
Connection ~ 1850 4950
NoConn ~ 3700 4850
Wire Wire Line
	3450 4850 3700 4850
Wire Wire Line
	6000 3050 6000 3700
Wire Wire Line
	5850 2550 5850 3550
Wire Wire Line
	5850 3550 9650 3550
Wire Wire Line
	9650 3550 9650 2450
Connection ~ 9650 2450
Wire Wire Line
	4550 2350 4750 2350
Wire Wire Line
	4550 2450 4750 2450
Wire Wire Line
	4550 2550 5050 2550
Wire Wire Line
	4550 2650 5050 2650
Text Label 4550 2350 0    60   ~ 0
CT0
Text Label 4550 2450 0    60   ~ 0
CT1
Text Label 4550 2550 0    60   ~ 0
CT2
Text Label 4550 2650 0    60   ~ 0
CT3
NoConn ~ 4750 2350
NoConn ~ 4750 2450
Wire Wire Line
	5050 2550 5050 2350
Wire Wire Line
	5050 2650 5050 2850
Text Label 2150 3150 0    60   ~ 0
RST
Wire Wire Line
	9200 2550 9350 2550
Wire Wire Line
	9200 2750 9350 2750
Wire Wire Line
	9200 2850 9350 2850
Wire Wire Line
	9200 2950 9350 2950
Wire Wire Line
	9200 3050 9350 3050
Wire Wire Line
	9200 3150 9350 3150
NoConn ~ 9350 2550
NoConn ~ 9350 2750
NoConn ~ 9350 2850
NoConn ~ 9350 2950
NoConn ~ 9350 3050
NoConn ~ 9350 3150
Text Notes 5600 4000 0    60   ~ 0
CLK
Text Notes 5600 4150 0    60   ~ 0
-RST
Text HLabel 950  1050 0    60   Input ~ 0
-RST
Text HLabel 950  1250 0    60   Input ~ 0
RST
Text HLabel 950  1550 0    60   Input ~ 0
CLK
Text HLabel 950  1750 0    60   Input ~ 0
-CLK
Wire Wire Line
	7400 4000 1200 4000
Wire Wire Line
	1200 4000 1200 1550
Wire Wire Line
	1200 1550 950  1550
Wire Wire Line
	1100 2950 1100 1750
Wire Wire Line
	1100 1750 950  1750
Wire Wire Line
	950  1250 1300 1250
Wire Wire Line
	1300 1250 1300 3150
Wire Wire Line
	7500 4150 1400 4150
Wire Wire Line
	1400 4150 1400 1050
Wire Wire Line
	1400 1050 950  1050
Text HLabel 10550 2650 2    60   Output ~ 0
-lateRST
Text HLabel 7850 4750 2    60   Output ~ 0
ALU0
Text HLabel 7850 4850 2    60   Output ~ 0
ALU1
Text HLabel 7850 4950 2    60   Output ~ 0
ALU2
Text HLabel 7850 5050 2    60   Output ~ 0
ALU3
Text HLabel 7850 5150 2    60   Output ~ 0
ALU4
Text HLabel 7850 5250 2    60   Output ~ 0
ALU5
Text HLabel 7850 5350 2    60   Output ~ 0
ALU6
Text HLabel 7850 5450 2    60   Output ~ 0
ALU7
$EndSCHEMATC
