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
Sheet 3 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1100 900  0    60   Input ~ 0
-RST
Text HLabel 1100 1800 0    60   Input ~ 0
CLK
Text HLabel 1100 2100 0    60   Input ~ 0
-CLK
Text HLabel 1100 1450 0    60   Input ~ 0
-DIS
$Comp
L 74LS00 U?
U 1 1 59284C1B
P 2650 1000
F 0 "U?" H 2650 1050 50  0000 C CNN
F 1 "74LS00" H 2650 900 50  0000 C CNN
F 2 "" H 2650 1000 50  0001 C CNN
F 3 "" H 2650 1000 50  0001 C CNN
	1    2650 1000
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U?
U 2 1 59284C82
P 2650 1600
F 0 "U?" H 2650 1650 50  0000 C CNN
F 1 "74LS00" H 2650 1500 50  0000 C CNN
F 2 "" H 2650 1600 50  0001 C CNN
F 3 "" H 2650 1600 50  0001 C CNN
	2    2650 1600
	1    0    0    -1  
$EndComp
$Comp
L 74LS193 U?
U 1 1 59284D07
P 5450 1900
F 0 "U?" H 5450 2050 50  0000 C CNN
F 1 "74LS193" H 5450 1900 50  0000 C CNN
F 2 "" H 5450 1900 50  0001 C CNN
F 3 "" H 5450 1900 50  0001 C CNN
	1    5450 1900
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U?
U 1 1 59284D99
P 5400 4200
F 0 "U?" H 5400 4200 50  0000 C CNN
F 1 "74LS175" H 5500 3800 50  0000 C CNN
F 2 "" H 5400 4200 50  0001 C CNN
F 3 "" H 5400 4200 50  0001 C CNN
	1    5400 4200
	1    0    0    -1  
$EndComp
Text HLabel 7600 4750 0    60   Input ~ 0
ALU0
Text HLabel 7600 4850 0    60   Input ~ 0
ALU1
Text HLabel 7600 4950 0    60   Input ~ 0
ALU2
Text HLabel 7600 5050 0    60   Input ~ 0
ALU3
Text HLabel 7600 5150 0    60   Input ~ 0
ALU4
Text HLabel 7600 5250 0    60   Input ~ 0
ALU5
Text HLabel 7600 5350 0    60   Input ~ 0
ALU6
Text HLabel 7600 5450 0    60   Input ~ 0
ALU7
$Comp
L VCC #PWR?
U 1 1 59285A53
P 4600 1350
F 0 "#PWR?" H 4600 1200 50  0001 C CNN
F 1 "VCC" H 4600 1500 50  0000 C CNN
F 2 "" H 4600 1350 50  0001 C CNN
F 3 "" H 4600 1350 50  0001 C CNN
	1    4600 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59285A95
P 4500 2450
F 0 "#PWR?" H 4500 2200 50  0001 C CNN
F 1 "GND" H 4500 2300 50  0000 C CNN
F 2 "" H 4500 2450 50  0001 C CNN
F 3 "" H 4500 2450 50  0001 C CNN
	1    4500 2450
	1    0    0    -1  
$EndComp
$Comp
L 74LS02 U?
U 1 1 59285C63
P 8100 1600
F 0 "U?" H 8100 1650 50  0000 C CNN
F 1 "74LS02" H 8150 1550 50  0000 C CNN
F 2 "" H 8100 1600 50  0001 C CNN
F 3 "" H 8100 1600 50  0001 C CNN
	1    8100 1600
	1    0    0    -1  
$EndComp
$Comp
L 74LS02 U?
U 2 1 59285CBA
P 9600 1600
F 0 "U?" H 9600 1650 50  0000 C CNN
F 1 "74LS02" H 9650 1550 50  0000 C CNN
F 2 "" H 9600 1600 50  0001 C CNN
F 3 "" H 9600 1600 50  0001 C CNN
	2    9600 1600
	1    0    0    -1  
$EndComp
$Comp
L 74LS02 U?
U 3 1 59285CDB
P 8100 2500
F 0 "U?" H 8100 2550 50  0000 C CNN
F 1 "74LS02" H 8150 2450 50  0000 C CNN
F 2 "" H 8100 2500 50  0001 C CNN
F 3 "" H 8100 2500 50  0001 C CNN
	3    8100 2500
	1    0    0    -1  
$EndComp
$Comp
L 74LS02 U?
U 4 1 59285CFE
P 9600 2150
F 0 "U?" H 9600 2200 50  0000 C CNN
F 1 "74LS02" H 9650 2100 50  0000 C CNN
F 2 "" H 9600 2150 50  0001 C CNN
F 3 "" H 9600 2150 50  0001 C CNN
	4    9600 2150
	1    0    0    -1  
$EndComp
Text Label 6200 1500 0    60   ~ 0
CT0
Text Label 6200 1600 0    60   ~ 0
CT1
Text Label 10200 1600 0    60   ~ 0
opReadMem
Text Label 10250 2150 0    60   ~ 0
wrOpReg
$Comp
L 74LS00 U?
U 3 1 59286333
P 3150 5900
F 0 "U?" H 3150 5950 50  0000 C CNN
F 1 "74LS00" H 3150 5800 50  0000 C CNN
F 2 "" H 3150 5900 50  0001 C CNN
F 3 "" H 3150 5900 50  0001 C CNN
	3    3150 5900
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U?
U 4 1 5928636E
P 3150 6400
F 0 "U?" H 3150 6450 50  0000 C CNN
F 1 "74LS00" H 3150 6300 50  0000 C CNN
F 2 "" H 3150 6400 50  0001 C CNN
F 3 "" H 3150 6400 50  0001 C CNN
	4    3150 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 900  1100 900 
Wire Wire Line
	1100 1450 1650 1450
Wire Wire Line
	1650 1450 1650 1100
Wire Wire Line
	1650 1100 2050 1100
Wire Wire Line
	3250 1000 4300 1000
Wire Wire Line
	1850 1600 1950 1600
Wire Wire Line
	1950 1500 1950 1700
Wire Wire Line
	1950 1500 2050 1500
Wire Wire Line
	1950 1700 2050 1700
Connection ~ 1950 1600
Wire Wire Line
	4750 2300 4300 2300
Wire Wire Line
	4300 2300 4300 1000
Wire Wire Line
	3400 1600 3400 4650
Wire Wire Line
	3400 4650 4700 4650
Wire Wire Line
	1100 2100 4750 2100
Wire Wire Line
	1500 4550 4700 4550
Wire Wire Line
	1500 1800 1500 4550
Wire Wire Line
	1500 1800 1100 1800
Wire Wire Line
	4750 2200 4600 2200
Wire Wire Line
	4600 2200 4600 1350
Wire Wire Line
	4750 1950 4600 1950
Connection ~ 4600 1950
Wire Wire Line
	4750 1800 4500 1800
Wire Wire Line
	4500 1500 4500 2450
Wire Wire Line
	4750 1700 4500 1700
Connection ~ 4500 1800
Wire Wire Line
	4750 1600 4500 1600
Connection ~ 4500 1700
Wire Wire Line
	4750 1500 4500 1500
Connection ~ 4500 1600
Wire Wire Line
	6150 1500 7500 1500
Wire Wire Line
	6150 1600 7200 1600
Wire Wire Line
	7200 1600 7200 1700
Wire Wire Line
	7200 1700 7500 1700
Wire Wire Line
	7500 2600 6750 2600
Wire Wire Line
	6750 2600 6750 1600
Connection ~ 6750 1600
Wire Wire Line
	7500 2400 6750 2400
Connection ~ 6750 2400
Wire Wire Line
	9000 2050 6900 2050
Wire Wire Line
	6900 2050 6900 1500
Connection ~ 6900 1500
Wire Wire Line
	8700 2500 8800 2500
Wire Wire Line
	8800 2500 8800 2250
Wire Wire Line
	8800 2250 9000 2250
Wire Wire Line
	9000 1500 8900 1500
Wire Wire Line
	8900 1500 8900 1700
Wire Wire Line
	8900 1600 8700 1600
Wire Wire Line
	8900 1700 9000 1700
Connection ~ 8900 1600
Wire Wire Line
	10200 1600 10700 1600
Wire Wire Line
	10200 2150 10700 2150
Wire Wire Line
	4700 3750 4100 3750
Wire Wire Line
	4700 3950 4100 3950
Wire Wire Line
	4700 4350 4450 4350
Wire Wire Line
	4450 4350 4450 4950
$Comp
L GND #PWR?
U 1 1 59286A61
P 4450 4950
F 0 "#PWR?" H 4450 4700 50  0001 C CNN
F 1 "GND" H 4450 4800 50  0000 C CNN
F 2 "" H 4450 4950 50  0001 C CNN
F 3 "" H 4450 4950 50  0001 C CNN
	1    4450 4950
	1    0    0    -1  
$EndComp
Text Label 4150 3750 0    60   ~ 0
opReadMem
Text Label 4150 3950 0    60   ~ 0
wrOpReg
Wire Wire Line
	6100 3850 10000 3850
Wire Wire Line
	6100 4050 7000 4050
Text Label 6200 3850 0    60   ~ 0
-opReadMem
Text Label 6200 4050 0    60   ~ 0
-wrOpReg
Text HLabel 10000 3850 2    60   Output ~ 0
-opReadMem
Text HLabel 10000 4150 2    60   Output ~ 0
opfetchEnd
$Comp
L 74LS574 U?
U 1 1 59287645
P 8700 5250
F 0 "U?" H 8700 5250 50  0000 C CNN
F 1 "74LS574" H 8750 4900 50  0000 C CNN
F 2 "" H 8700 5250 50  0001 C CNN
F 3 "" H 8700 5250 50  0001 C CNN
	1    8700 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5650 7000 5650
Wire Wire Line
	7000 5650 7000 4050
Wire Wire Line
	8000 5750 7900 5750
Wire Wire Line
	7900 5750 7900 5850
$Comp
L GND #PWR?
U 1 1 59287754
P 7900 5850
F 0 "#PWR?" H 7900 5600 50  0001 C CNN
F 1 "GND" H 7900 5700 50  0000 C CNN
F 2 "" H 7900 5850 50  0001 C CNN
F 3 "" H 7900 5850 50  0001 C CNN
	1    7900 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4750 7600 4750
Wire Wire Line
	8000 4850 7600 4850
Wire Wire Line
	8000 4950 7600 4950
Wire Wire Line
	8000 5050 7600 5050
Wire Wire Line
	8000 5150 7600 5150
Wire Wire Line
	8000 5250 7600 5250
Wire Wire Line
	8000 5350 7600 5350
Wire Wire Line
	8000 5450 7600 5450
Text HLabel 9900 4750 2    60   Output ~ 0
OPC0
Text HLabel 9900 4850 2    60   Output ~ 0
OPC1
Text HLabel 9900 4950 2    60   Output ~ 0
OPC2
Text HLabel 9900 5050 2    60   Output ~ 0
OPC3
Text HLabel 9900 5150 2    60   Output ~ 0
OPC4
Text HLabel 9900 5250 2    60   Output ~ 0
OPC5
Text HLabel 9900 5350 2    60   Output ~ 0
OPC6
Text HLabel 9900 5450 2    60   Output ~ 0
OPC7
Wire Wire Line
	9400 4750 9900 4750
Wire Wire Line
	9400 4850 9900 4850
Wire Wire Line
	9400 4950 9900 4950
Wire Wire Line
	9400 5050 9900 5050
Wire Wire Line
	9400 5150 9900 5150
Wire Wire Line
	9400 5250 9900 5250
Wire Wire Line
	9400 5350 9900 5350
Wire Wire Line
	9400 5450 9900 5450
Wire Wire Line
	6150 1700 6450 1700
Wire Wire Line
	6450 1700 6450 3250
Wire Wire Line
	6450 3250 3850 3250
Wire Wire Line
	3850 3250 3850 4150
Wire Wire Line
	3850 4150 4700 4150
Text Label 6200 1700 0    60   ~ 0
CT2
Wire Wire Line
	2550 5800 2250 5800
Wire Wire Line
	2250 5800 2250 6850
Wire Wire Line
	2550 6000 2250 6000
Connection ~ 2250 6000
Wire Wire Line
	2550 6300 2250 6300
Connection ~ 2250 6300
Wire Wire Line
	2550 6500 2250 6500
Connection ~ 2250 6500
$Comp
L GND #PWR?
U 1 1 59296CBE
P 2250 6850
F 0 "#PWR?" H 2250 6600 50  0001 C CNN
F 1 "GND" H 2250 6700 50  0000 C CNN
F 2 "" H 2250 6850 50  0001 C CNN
F 3 "" H 2250 6850 50  0001 C CNN
	1    2250 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 5900 4050 5900
Wire Wire Line
	3750 6400 4050 6400
NoConn ~ 4050 5900
NoConn ~ 4050 6400
Text Notes 2850 5550 0    60   ~ 0
unused gates
Text HLabel 10000 4250 2    60   Input ~ 0
-opfetchEnd
Wire Wire Line
	10000 4150 6100 4150
Wire Wire Line
	10000 4250 6100 4250
Wire Wire Line
	1850 1600 1850 1300
Wire Wire Line
	1850 1300 3400 1300
Wire Wire Line
	3400 1300 3400 1000
Connection ~ 3400 1000
Wire Wire Line
	3250 1600 3400 1600
Text Label 6200 4150 0    60   ~ 0
opfetchEnd
Text Label 6200 4250 0    60   ~ 0
-opfetchEnd
Text Notes 8350 4600 0    60   ~ 0
opcode register
$EndSCHEMATC
