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
LIBS:switches
LIBS:ttl_ieee
LIBS:cpu2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 10
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
L 74LS191 U601
U 1 1 592B94A0
P 3300 2450
F 0 "U601" H 3300 2450 50  0000 C CNN
F 1 "74HC191" H 3350 2250 50  0000 C CNN
F 2 "" H 3300 2450 50  0001 C CNN
F 3 "" H 3300 2450 50  0001 C CNN
	1    3300 2450
	1    0    0    -1  
$EndComp
$Comp
L 74LS191 U602
U 1 1 592B94A7
P 5450 2450
F 0 "U602" H 5450 2450 50  0000 C CNN
F 1 "74HC191" H 5500 2250 50  0000 C CNN
F 2 "" H 5450 2450 50  0001 C CNN
F 3 "" H 5450 2450 50  0001 C CNN
	1    5450 2450
	1    0    0    -1  
$EndComp
$Comp
L 74LS191 U603
U 1 1 592B94AE
P 8050 2450
F 0 "U603" H 8050 2450 50  0000 C CNN
F 1 "74HC191" H 8100 2250 50  0000 C CNN
F 2 "" H 8050 2450 50  0001 C CNN
F 3 "" H 8050 2450 50  0001 C CNN
	1    8050 2450
	1    0    0    -1  
$EndComp
$Comp
L 74LS191 U604
U 1 1 592B94B5
P 10150 2450
F 0 "U604" H 10150 2450 50  0000 C CNN
F 1 "74HC191" H 10200 2250 50  0000 C CNN
F 2 "" H 10150 2450 50  0001 C CNN
F 3 "" H 10150 2450 50  0001 C CNN
	1    10150 2450
	1    0    0    -1  
$EndComp
Text Notes 7150 6750 0    60   ~ 0
program counter
Text Label 10900 2050 0    60   ~ 0
PC12
Text Label 10900 2150 0    60   ~ 0
PC13
Text Label 10900 2250 0    60   ~ 0
PC14
Text Label 10900 2350 0    60   ~ 0
PC15
$Comp
L GND #PWR?
U 1 1 592B94DC
P 2400 3100
F 0 "#PWR?" H 2400 2850 50  0001 C CNN
F 1 "GND" H 2400 2950 50  0000 C CNN
F 2 "" H 2400 3100 50  0001 C CNN
F 3 "" H 2400 3100 50  0001 C CNN
	1    2400 3100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 592B94E2
P 4650 2950
F 0 "#PWR?" H 4650 2700 50  0001 C CNN
F 1 "GND" H 4650 2800 50  0000 C CNN
F 2 "" H 4650 2950 50  0001 C CNN
F 3 "" H 4650 2950 50  0001 C CNN
	1    4650 2950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 592B94E8
P 7200 2900
F 0 "#PWR?" H 7200 2650 50  0001 C CNN
F 1 "GND" H 7200 2750 50  0000 C CNN
F 2 "" H 7200 2900 50  0001 C CNN
F 3 "" H 7200 2900 50  0001 C CNN
	1    7200 2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 592B94EE
P 9300 3000
F 0 "#PWR?" H 9300 2750 50  0001 C CNN
F 1 "GND" H 9300 2850 50  0000 C CNN
F 2 "" H 9300 3000 50  0001 C CNN
F 3 "" H 9300 3000 50  0001 C CNN
	1    9300 3000
	1    0    0    -1  
$EndComp
$Comp
L 74LS541 U607
U 1 1 592B94F7
P 2400 6950
F 0 "U607" H 2400 7525 50  0000 C BNN
F 1 "74HC541" H 2400 6375 50  0000 C TNN
F 2 "" H 2400 6950 50  0001 C CNN
F 3 "" H 2400 6950 50  0001 C CNN
	1    2400 6950
	1    0    0    -1  
$EndComp
$Comp
L 74LS541 U608
U 1 1 592B94FE
P 5400 6950
F 0 "U608" H 5400 7525 50  0000 C BNN
F 1 "74HC541" H 5400 6375 50  0000 C TNN
F 2 "" H 5400 6950 50  0001 C CNN
F 3 "" H 5400 6950 50  0001 C CNN
	1    5400 6950
	1    0    0    -1  
$EndComp
Text Label 1350 6450 0    60   ~ 0
PC0
Text Label 1350 6550 0    60   ~ 0
PC1
Text Label 1350 6650 0    60   ~ 0
PC2
Text Label 1350 6750 0    60   ~ 0
PC3
Text Label 1350 6850 0    60   ~ 0
PC4
Text Label 1350 6950 0    60   ~ 0
PC5
Text Label 1350 7050 0    60   ~ 0
PC6
Text Label 1350 7150 0    60   ~ 0
PC7
Text Label 4200 6450 0    60   ~ 0
PC8
Text Label 4200 6550 0    60   ~ 0
PC9
Text Label 4200 6650 0    60   ~ 0
PC10
Text Label 4200 6750 0    60   ~ 0
PC11
Text Label 4200 6850 0    60   ~ 0
PC12
Text Label 4200 6950 0    60   ~ 0
PC13
Text Label 4200 7050 0    60   ~ 0
PC14
Text Label 4200 7150 0    60   ~ 0
PC15
Text Label 8800 2350 0    60   ~ 0
PC11
Text Label 8800 2250 0    60   ~ 0
PC10
Text Label 8800 2150 0    60   ~ 0
PC9
Text Label 8800 2050 0    60   ~ 0
PC8
Text Label 6200 2350 0    60   ~ 0
PC7
Text Label 6200 2250 0    60   ~ 0
PC6
Text Label 6200 2150 0    60   ~ 0
PC5
Text Label 6200 2050 0    60   ~ 0
PC4
Text Label 4050 2350 0    60   ~ 0
PC3
Text Label 4050 2250 0    60   ~ 0
PC2
Text Label 4050 2150 0    60   ~ 0
PC1
Text Label 4050 2050 0    60   ~ 0
PC0
Text Label 2300 2050 0    60   ~ 0
ALU0
Text Label 2300 2150 0    60   ~ 0
ALU1
Text Label 2300 2250 0    60   ~ 0
ALU2
Text Label 2300 2350 0    60   ~ 0
ALU3
Text Label 4550 2050 0    60   ~ 0
ALU4
Text Label 4550 2150 0    60   ~ 0
ALU5
Text Label 4550 2250 0    60   ~ 0
ALU6
Text Label 4550 2350 0    60   ~ 0
ALU7
Text Label 7100 2050 0    60   ~ 0
ALU0
Text Label 7100 2150 0    60   ~ 0
ALU1
Text Label 7100 2250 0    60   ~ 0
ALU2
Text Label 7100 2350 0    60   ~ 0
ALU3
Text Label 9200 2050 0    60   ~ 0
ALU4
Text Label 9200 2150 0    60   ~ 0
ALU5
Text Label 9200 2250 0    60   ~ 0
ALU6
Text Label 9200 2350 0    60   ~ 0
ALU7
Text Label 3150 6450 0    60   ~ 0
LEFT0
Text Label 3150 6550 0    60   ~ 0
LEFT1
Text Label 3150 6650 0    60   ~ 0
LEFT2
Text Label 3150 6750 0    60   ~ 0
LEFT3
Text Label 3150 6850 0    60   ~ 0
LEFT4
Text Label 3150 6950 0    60   ~ 0
LEFT5
Text Label 3150 7050 0    60   ~ 0
LEFT6
Text Label 3150 7150 0    60   ~ 0
LEFT7
Text Label 6200 6450 0    60   ~ 0
RIGHT0
Text Label 6200 6550 0    60   ~ 0
RIGHT1
Text Label 6200 6650 0    60   ~ 0
RIGHT2
Text Label 6200 6750 0    60   ~ 0
RIGHT3
Text Label 6200 6850 0    60   ~ 0
RIGHT4
Text Label 6200 6950 0    60   ~ 0
RIGHT5
Text Label 6200 7050 0    60   ~ 0
RIGHT6
Text Label 6200 7150 0    60   ~ 0
RIGHT7
Text HLabel 1550 5800 0    60   Input ~ 0
-OE1
Text HLabel 1000 2050 0    60   Input ~ 0
ALU0
Text HLabel 1000 2150 0    60   Input ~ 0
ALU1
Text HLabel 1000 2250 0    60   Input ~ 0
ALU2
Text HLabel 1000 2350 0    60   Input ~ 0
ALU3
Text HLabel 1000 2450 0    60   Input ~ 0
ALU4
Text HLabel 1000 2550 0    60   Input ~ 0
ALU5
Text HLabel 1000 2650 0    60   Input ~ 0
ALU6
Text HLabel 1000 2750 0    60   Input ~ 0
ALU7
Text Label 1050 2050 0    60   ~ 0
ALU0
Text Label 1050 2150 0    60   ~ 0
ALU1
Text Label 1050 2250 0    60   ~ 0
ALU2
Text Label 1050 2350 0    60   ~ 0
ALU3
Text Label 1050 2450 0    60   ~ 0
ALU4
Text Label 1050 2550 0    60   ~ 0
ALU5
Text Label 1050 2650 0    60   ~ 0
ALU6
Text Label 1050 2750 0    60   ~ 0
ALU7
Text HLabel 10450 4750 2    60   Output ~ 0
LEFT0
Text HLabel 10450 4850 2    60   Output ~ 0
LEFT1
Text HLabel 10450 4950 2    60   Output ~ 0
LEFT2
Text HLabel 10450 5050 2    60   Output ~ 0
LEFT3
Text HLabel 10450 5150 2    60   Output ~ 0
LEFT4
Text HLabel 10450 5250 2    60   Output ~ 0
LEFT5
Text HLabel 10450 5350 2    60   Output ~ 0
LEFT6
Text HLabel 10450 5450 2    60   Output ~ 0
LEFT7
Text HLabel 10450 5650 2    60   Output ~ 0
RIGHT0
Text HLabel 10450 5750 2    60   Output ~ 0
RIGHT1
Text HLabel 10450 5850 2    60   Output ~ 0
RIGHT2
Text HLabel 10450 5950 2    60   Output ~ 0
RIGHT3
Text HLabel 10450 6050 2    60   Output ~ 0
RIGHT4
Text HLabel 10450 6150 2    60   Output ~ 0
RIGHT5
Text HLabel 10450 6250 2    60   Output ~ 0
RIGHT6
Text HLabel 10450 6350 2    60   Output ~ 0
RIGHT7
Text Label 10100 4750 0    60   ~ 0
LEFT0
Text Label 10100 4850 0    60   ~ 0
LEFT1
Text Label 10100 4950 0    60   ~ 0
LEFT2
Text Label 10100 5050 0    60   ~ 0
LEFT3
Text Label 10100 5150 0    60   ~ 0
LEFT4
Text Label 10100 5250 0    60   ~ 0
LEFT5
Text Label 10100 5350 0    60   ~ 0
LEFT6
Text Label 10100 5450 0    60   ~ 0
LEFT7
Text Label 10100 5650 0    60   ~ 0
RIGHT0
Text Label 10100 5750 0    60   ~ 0
RIGHT1
Text Label 10100 5850 0    60   ~ 0
RIGHT2
Text Label 10100 5950 0    60   ~ 0
RIGHT3
Text Label 10100 6050 0    60   ~ 0
RIGHT4
Text Label 10100 6150 0    60   ~ 0
RIGHT5
Text Label 10100 6250 0    60   ~ 0
RIGHT6
Text Label 10100 6350 0    60   ~ 0
RIGHT7
$Comp
L 74LS10 U605
U 1 1 593BD338
P 4450 3700
F 0 "U605" H 4450 3750 50  0000 C CNN
F 1 "74HC10" H 4450 3650 50  0000 C CNN
F 2 "" H 4450 3700 50  0001 C CNN
F 3 "" H 4450 3700 50  0001 C CNN
	1    4450 3700
	1    0    0    -1  
$EndComp
$Comp
L 74LS10 U605
U 2 1 593BD864
P 6650 3700
F 0 "U605" H 6650 3750 50  0000 C CNN
F 1 "74HC10" H 6650 3650 50  0000 C CNN
F 2 "" H 6650 3700 50  0001 C CNN
F 3 "" H 6650 3700 50  0001 C CNN
	2    6650 3700
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 593BDA8A
P 5650 4000
F 0 "#PWR?" H 5650 3850 50  0001 C CNN
F 1 "VCC" H 5650 4150 50  0000 C CNN
F 2 "" H 5650 4000 50  0001 C CNN
F 3 "" H 5650 4000 50  0001 C CNN
	1    5650 4000
	1    0    0    -1  
$EndComp
$Comp
L 74LS10 U605
U 3 1 593BDD15
P 9000 3700
F 0 "U605" H 9000 3750 50  0000 C CNN
F 1 "74HC10" H 9000 3650 50  0000 C CNN
F 2 "" H 9000 3700 50  0001 C CNN
F 3 "" H 9000 3700 50  0001 C CNN
	3    9000 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2750 4300 2750
Wire Wire Line
	4500 2750 4750 2750
Wire Wire Line
	6150 2750 6450 2750
Wire Wire Line
	6950 2750 7350 2750
Wire Wire Line
	8750 2750 8900 2750
Wire Wire Line
	9150 2750 9450 2750
Wire Wire Line
	10850 2050 11150 2050
Wire Wire Line
	10850 2150 11150 2150
Wire Wire Line
	10850 2250 11150 2250
Wire Wire Line
	10850 2350 11150 2350
Wire Wire Line
	2600 2600 2400 2600
Wire Wire Line
	2400 2600 2400 3100
Wire Wire Line
	4750 2600 4650 2600
Wire Wire Line
	4650 2600 4650 2950
Wire Wire Line
	7350 2600 7200 2600
Wire Wire Line
	7200 2600 7200 2900
Wire Wire Line
	9450 2600 9300 2600
Wire Wire Line
	9300 2600 9300 3000
Wire Wire Line
	9450 2850 9050 2850
Wire Wire Line
	9050 2850 9050 1500
Wire Wire Line
	9050 1500 1350 1500
Wire Wire Line
	7350 2850 6700 2850
Wire Wire Line
	6700 2850 6700 1500
Connection ~ 6700 1500
Wire Wire Line
	4750 2850 4400 2850
Wire Wire Line
	4400 2850 4400 1500
Connection ~ 4400 1500
Wire Wire Line
	2600 2850 2150 2850
Wire Wire Line
	2150 2850 2150 1500
Connection ~ 2150 1500
Wire Wire Line
	2600 2500 1800 2500
Wire Wire Line
	1800 2500 1800 1000
Wire Wire Line
	1350 1000 4500 1000
Wire Wire Line
	4750 2500 4500 2500
Wire Wire Line
	4500 2500 4500 1000
Connection ~ 1800 1000
Wire Wire Line
	7350 2500 6800 2500
Wire Wire Line
	6800 2500 6800 700 
Wire Wire Line
	1350 700  9150 700 
Wire Wire Line
	9450 2500 9150 2500
Wire Wire Line
	9150 2500 9150 700 
Connection ~ 6800 700 
Wire Wire Line
	1700 6450 1300 6450
Wire Wire Line
	1700 6550 1300 6550
Wire Wire Line
	1700 6650 1300 6650
Wire Wire Line
	1700 6750 1300 6750
Wire Wire Line
	1700 6850 1300 6850
Wire Wire Line
	1700 6950 1300 6950
Wire Wire Line
	1700 7050 1300 7050
Wire Wire Line
	1700 7150 1300 7150
Wire Wire Line
	4700 6450 4150 6450
Wire Wire Line
	4700 6550 4150 6550
Wire Wire Line
	4700 6650 4150 6650
Wire Wire Line
	4700 6750 4150 6750
Wire Wire Line
	4700 6850 4150 6850
Wire Wire Line
	4700 6950 4150 6950
Wire Wire Line
	4700 7050 4150 7050
Wire Wire Line
	4700 7150 4150 7150
Wire Wire Line
	1700 7350 1450 7350
Wire Wire Line
	1450 7350 1450 7650
Wire Wire Line
	1700 7450 1450 7450
Connection ~ 1450 7450
Wire Wire Line
	1000 7650 4450 7650
Wire Wire Line
	4700 7350 4450 7350
Wire Wire Line
	4450 7350 4450 7650
Connection ~ 1450 7650
Wire Wire Line
	4700 7450 4450 7450
Connection ~ 4450 7450
Wire Wire Line
	8750 2350 8950 2350
Wire Wire Line
	8750 2250 8950 2250
Wire Wire Line
	8750 2150 8950 2150
Wire Wire Line
	8750 2050 8950 2050
Wire Wire Line
	6150 2350 6450 2350
Wire Wire Line
	6150 2250 6450 2250
Wire Wire Line
	6150 2150 6450 2150
Wire Wire Line
	6150 2050 6450 2050
Wire Wire Line
	4000 2350 4250 2350
Wire Wire Line
	4000 2250 4250 2250
Wire Wire Line
	4000 2150 4250 2150
Wire Wire Line
	4000 2050 4250 2050
Wire Wire Line
	2600 2050 2300 2050
Wire Wire Line
	2600 2150 2300 2150
Wire Wire Line
	2600 2250 2300 2250
Wire Wire Line
	2600 2350 2300 2350
Wire Wire Line
	4750 2050 4550 2050
Wire Wire Line
	4750 2150 4550 2150
Wire Wire Line
	4750 2250 4550 2250
Wire Wire Line
	4750 2350 4550 2350
Wire Wire Line
	7350 2050 7050 2050
Wire Wire Line
	7350 2150 7050 2150
Wire Wire Line
	7350 2250 7050 2250
Wire Wire Line
	7350 2350 7050 2350
Wire Wire Line
	9450 2050 9200 2050
Wire Wire Line
	9450 2150 9200 2150
Wire Wire Line
	9450 2250 9200 2250
Wire Wire Line
	9450 2350 9200 2350
Wire Wire Line
	3100 6450 3500 6450
Wire Wire Line
	3100 6550 3500 6550
Wire Wire Line
	3100 6650 3500 6650
Wire Wire Line
	3100 6750 3500 6750
Wire Wire Line
	3100 6850 3500 6850
Wire Wire Line
	3100 6950 3500 6950
Wire Wire Line
	3100 7050 3500 7050
Wire Wire Line
	3100 7150 3500 7150
Wire Wire Line
	6100 6450 6600 6450
Wire Wire Line
	6100 6550 6600 6550
Wire Wire Line
	6100 6650 6600 6650
Wire Wire Line
	6100 6750 6600 6750
Wire Wire Line
	6100 6850 6600 6850
Wire Wire Line
	6100 6950 6600 6950
Wire Wire Line
	6100 7050 6600 7050
Wire Wire Line
	6100 7150 6600 7150
Wire Wire Line
	1000 2050 1300 2050
Wire Wire Line
	1000 2150 1300 2150
Wire Wire Line
	1000 2250 1300 2250
Wire Wire Line
	1000 2350 1300 2350
Wire Wire Line
	1000 2450 1300 2450
Wire Wire Line
	1000 2550 1300 2550
Wire Wire Line
	1000 2650 1300 2650
Wire Wire Line
	1000 2750 1300 2750
Wire Wire Line
	10450 4750 10050 4750
Wire Wire Line
	10450 4850 10050 4850
Wire Wire Line
	10450 4950 10050 4950
Wire Wire Line
	10450 5050 10050 5050
Wire Wire Line
	10450 5150 10050 5150
Wire Wire Line
	10450 5250 10050 5250
Wire Wire Line
	10450 5350 10050 5350
Wire Wire Line
	10450 5450 10050 5450
Wire Wire Line
	10450 5650 10050 5650
Wire Wire Line
	10450 5750 10050 5750
Wire Wire Line
	10450 5850 10050 5850
Wire Wire Line
	10450 5950 10050 5950
Wire Wire Line
	10450 6050 10050 6050
Wire Wire Line
	10450 6150 10050 6150
Wire Wire Line
	10450 6250 10050 6250
Wire Wire Line
	10450 6350 10050 6350
Wire Wire Line
	2600 2750 2400 2750
Connection ~ 2400 2750
Wire Wire Line
	4300 2750 4300 3400
Wire Wire Line
	4300 3400 3650 3400
Wire Wire Line
	5050 3400 5050 3700
Wire Wire Line
	5050 3400 4500 3400
Wire Wire Line
	4500 3400 4500 2750
Wire Wire Line
	6450 2750 6450 3400
Wire Wire Line
	6450 3400 5800 3400
Wire Wire Line
	5800 3400 5800 3700
Wire Wire Line
	5800 3700 6050 3700
Wire Wire Line
	6050 3850 5800 3850
Wire Wire Line
	5800 3850 5800 4100
Wire Wire Line
	5800 4100 5650 4100
Wire Wire Line
	5650 4100 5650 4000
Wire Wire Line
	7400 3700 7400 3400
Wire Wire Line
	7400 3400 6950 3400
Wire Wire Line
	6950 3400 6950 2750
Wire Wire Line
	8400 3550 7550 3550
Wire Wire Line
	7550 3550 7550 3250
Wire Wire Line
	7550 3250 4300 3250
Wire Wire Line
	8900 2750 8900 3250
Wire Wire Line
	8900 3250 8250 3250
Wire Wire Line
	8250 3250 8250 3850
Wire Wire Line
	8250 3850 8400 3850
Wire Wire Line
	9600 3700 9750 3700
Wire Wire Line
	9750 3700 9750 3250
Wire Wire Line
	9750 3250 9150 3250
Wire Wire Line
	9150 3250 9150 2750
Wire Wire Line
	3850 3550 3650 3550
Wire Wire Line
	3650 3550 3650 3400
Wire Wire Line
	3850 3850 3650 3850
Wire Wire Line
	3650 3700 3650 4100
Wire Wire Line
	3650 4100 3450 4100
Wire Wire Line
	3450 4100 3450 4000
Wire Wire Line
	3850 3700 3650 3700
Connection ~ 3650 3850
$Comp
L VCC #PWR?
U 1 1 593BE65E
P 3450 4000
F 0 "#PWR?" H 3450 3850 50  0001 C CNN
F 1 "VCC" H 3450 4150 50  0000 C CNN
F 2 "" H 3450 4000 50  0001 C CNN
F 3 "" H 3450 4000 50  0001 C CNN
	1    3450 4000
	1    0    0    -1  
$EndComp
Connection ~ 4300 3250
Wire Wire Line
	6050 3550 5150 3550
Wire Wire Line
	5150 3550 5150 3250
Connection ~ 5150 3250
Wire Wire Line
	7400 3700 7250 3700
Wire Wire Line
	8400 3700 7700 3700
Wire Wire Line
	7700 3700 7700 3150
Wire Wire Line
	7700 3150 6450 3150
Connection ~ 6450 3150
Wire Wire Line
	1550 4300 3250 4300
Text Label 1650 4300 0    60   ~ 0
-wrPC
Wire Wire Line
	3250 4800 2750 4800
Wire Wire Line
	2750 4800 2750 4300
Connection ~ 2750 4300
Wire Wire Line
	4450 4400 5550 4400
Wire Wire Line
	4450 4900 4550 4900
Wire Wire Line
	4550 4900 4550 4500
Wire Wire Line
	4550 4500 5550 4500
Wire Wire Line
	1550 5300 3250 5300
Wire Wire Line
	1550 5500 3250 5500
Wire Wire Line
	4450 5400 5550 5400
Text Label 1600 5300 0    60   ~ 0
opIncPC
Wire Wire Line
	3250 4500 1550 4500
Wire Wire Line
	3250 5000 1550 5000
Text Label 1600 4500 0    60   ~ 0
-uWrPCHi
Text Label 1600 5000 0    60   ~ 0
-uWrPCLo
Text Label 1600 5500 0    60   ~ 0
uPcClk
Text Label 1450 700  0    60   ~ 0
-pcLoadHi
Text Label 1450 1000 0    60   ~ 0
-pcLoadLo
Text HLabel 1550 4300 0    60   Input ~ 0
-wrPC
Text HLabel 1550 4500 0    60   Input ~ 0
-uWrPCHi
Text HLabel 1550 5000 0    60   Input ~ 0
-uWrPCLo
Text Label 5050 4400 0    60   ~ 0
-pcLoadHi
Text Label 5050 4500 0    60   ~ 0
-pcLoadLo
Text Label 1400 1500 0    60   ~ 0
pcClk
Text Label 5250 5400 0    60   ~ 0
pcClk
Text HLabel 1550 5300 0    60   Input ~ 0
opIncPC
Text HLabel 1550 5500 0    60   Input ~ 0
uPcClk
$Comp
L 74LS08 U606
U 1 1 5943D28D
P 3850 4400
F 0 "U606" H 3850 4450 50  0000 C CNN
F 1 "74HC08" H 3850 4350 50  0000 C CNN
F 2 "" H 3850 4400 50  0001 C CNN
F 3 "" H 3850 4400 50  0001 C CNN
	1    3850 4400
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U606
U 2 1 5943D2BC
P 3850 4900
F 0 "U606" H 3850 4950 50  0000 C CNN
F 1 "74HC08" H 3850 4850 50  0000 C CNN
F 2 "" H 3850 4900 50  0001 C CNN
F 3 "" H 3850 4900 50  0001 C CNN
	2    3850 4900
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U606
U 3 1 5943D307
P 3850 5400
F 0 "U606" H 3850 5450 50  0000 C CNN
F 1 "74HC08" H 3850 5350 50  0000 C CNN
F 2 "" H 3850 5400 50  0001 C CNN
F 3 "" H 3850 5400 50  0001 C CNN
	3    3850 5400
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U606
U 4 1 5943D865
P 3850 5900
F 0 "U606" H 3850 5950 50  0000 C CNN
F 1 "74HC08" H 3850 5850 50  0000 C CNN
F 2 "" H 3850 5900 50  0001 C CNN
F 3 "" H 3850 5900 50  0001 C CNN
	4    3850 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5800 1550 5800
Wire Wire Line
	3250 6000 1550 6000
Text HLabel 1550 6000 0    60   Input ~ 0
-OE2
Wire Wire Line
	4450 5900 4950 5900
Wire Wire Line
	4950 5900 4950 6200
Wire Wire Line
	4950 6200 1000 6200
Wire Wire Line
	1000 6200 1000 7650
$EndSCHEMATC
