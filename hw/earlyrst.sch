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
Sheet 5 7
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
L 74LS541 U?
U 1 1 592B638E
P 6600 4800
F 0 "U?" H 6600 5375 50  0000 C BNN
F 1 "74LS541" H 6600 4225 50  0000 C TNN
F 2 "" H 6600 4800 50  0001 C CNN
F 3 "" H 6600 4800 50  0001 C CNN
	1    6600 4800
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 592B6395
P 4750 4750
F 0 "#PWR?" H 4750 4600 50  0001 C CNN
F 1 "VCC" H 4750 4900 50  0000 C CNN
F 2 "" H 4750 4750 50  0001 C CNN
F 3 "" H 4750 4750 50  0001 C CNN
	1    4750 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 5000 5900 5000
Wire Wire Line
	4750 4750 4750 5000
Wire Wire Line
	5900 4900 4750 4900
Connection ~ 4750 4900
Wire Wire Line
	5900 4300 5200 4300
Wire Wire Line
	5200 4300 5200 5200
Wire Wire Line
	5900 4400 5200 4400
Connection ~ 5200 4400
Wire Wire Line
	5900 4500 5200 4500
Connection ~ 5200 4500
Wire Wire Line
	5900 4600 5200 4600
Connection ~ 5200 4600
Wire Wire Line
	5900 4700 5200 4700
Connection ~ 5200 4700
Wire Wire Line
	5900 4800 5200 4800
Connection ~ 5200 4800
$Comp
L GND #PWR?
U 1 1 592B63DA
P 5200 5200
F 0 "#PWR?" H 5200 4950 50  0001 C CNN
F 1 "GND" H 5200 5050 50  0000 C CNN
F 2 "" H 5200 5200 50  0001 C CNN
F 3 "" H 5200 5200 50  0001 C CNN
	1    5200 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4300 7700 4300
Wire Wire Line
	7300 4400 7700 4400
Wire Wire Line
	7300 4500 7700 4500
Wire Wire Line
	7300 4600 7700 4600
Wire Wire Line
	7300 4700 7700 4700
Wire Wire Line
	7300 4800 7700 4800
Wire Wire Line
	7300 4900 7700 4900
Wire Wire Line
	7300 5000 7700 5000
Text Label 7400 4300 0    60   ~ 0
ALU0
Text Label 7400 4400 0    60   ~ 0
ALU1
Text Label 7400 4500 0    60   ~ 0
ALU2
Text Label 7400 4600 0    60   ~ 0
ALU3
Text Label 7400 4700 0    60   ~ 0
ALU4
Text Label 7400 4800 0    60   ~ 0
ALU5
Text Label 7400 4900 0    60   ~ 0
ALU6
Text Label 7400 5000 0    60   ~ 0
ALU7
Text Notes 6150 5700 0    60   ~ 0
the initial PC value is\n0xC0C0
Text HLabel 950  1050 0    60   Input ~ 0
-RST
Text HLabel 950  1250 0    60   Input ~ 0
RST
Text HLabel 950  1550 0    60   Input ~ 0
CLK
Text HLabel 7700 4300 2    60   Output ~ 0
ALU0
Text HLabel 7700 4400 2    60   Output ~ 0
ALU1
Text HLabel 7700 4500 2    60   Output ~ 0
ALU2
Text HLabel 7700 4600 2    60   Output ~ 0
ALU3
Text HLabel 7700 4700 2    60   Output ~ 0
ALU4
Text HLabel 7700 4800 2    60   Output ~ 0
ALU5
Text HLabel 7700 4900 2    60   Output ~ 0
ALU6
Text HLabel 7700 5000 2    60   Output ~ 0
ALU7
$Comp
L 74LS393 U?
U 1 1 592C3941
P 3800 1900
F 0 "U?" H 3950 2150 50  0000 C CNN
F 1 "74LS393" H 4000 1650 50  0000 C CNN
F 2 "" H 3800 1900 50  0000 C CNN
F 3 "" H 3800 1900 50  0000 C CNN
	1    3800 1900
	1    0    0    -1  
$EndComp
$Comp
L 74LS393 U?
U 2 1 592C397A
P 3800 2650
F 0 "U?" H 3950 2900 50  0000 C CNN
F 1 "74LS393" H 4000 2400 50  0000 C CNN
F 2 "" H 3800 2650 50  0000 C CNN
F 3 "" H 3800 2650 50  0000 C CNN
	2    3800 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2050 5300 2050
Wire Wire Line
	4650 2050 4650 2250
Wire Wire Line
	4650 2250 2900 2250
Wire Wire Line
	2900 2250 2900 2500
Wire Wire Line
	2900 2500 3100 2500
Wire Wire Line
	950  1250 1850 1250
Wire Wire Line
	1850 1250 1850 2800
Wire Wire Line
	1850 2050 3100 2050
Wire Wire Line
	1750 1750 3100 1750
Wire Wire Line
	1850 2800 3100 2800
Connection ~ 1850 2050
Wire Wire Line
	1750 1550 1750 3500
Wire Wire Line
	1750 1550 950  1550
Wire Wire Line
	4500 1950 5300 1950
Wire Wire Line
	5300 1950 5300 1750
Wire Wire Line
	5300 1750 5850 1750
Wire Wire Line
	5850 2200 5300 2200
Wire Wire Line
	5300 2200 5300 2050
Connection ~ 4650 2050
Wire Wire Line
	5850 2650 5300 2650
Wire Wire Line
	5300 2650 5300 2500
Wire Wire Line
	5300 2500 4500 2500
$Comp
L 74LS175 U?
U 1 1 592C3E92
P 8600 2300
F 0 "U?" H 8600 2300 50  0000 C CNN
F 1 "74LS175" H 8700 1900 50  0000 C CNN
F 2 "" H 8600 2300 50  0000 C CNN
F 3 "" H 8600 2300 50  0000 C CNN
	1    8600 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1850 7900 1850
Wire Wire Line
	7150 2050 7900 2050
Wire Wire Line
	7150 2050 7150 2300
Wire Wire Line
	7150 2300 7050 2300
Wire Wire Line
	7900 2250 7300 2250
Wire Wire Line
	7050 2750 7300 2750
Wire Wire Line
	7300 2750 7300 2250
Wire Wire Line
	9300 1850 10500 1850
Wire Wire Line
	9600 1850 9600 3050
Wire Wire Line
	9600 3050 5400 3050
Wire Wire Line
	5400 3050 5400 1950
Wire Wire Line
	5400 1950 5850 1950
Wire Wire Line
	9300 2050 10500 2050
Wire Wire Line
	9750 2050 9750 3200
Wire Wire Line
	9750 3200 5550 3200
Wire Wire Line
	5550 3200 5550 2400
Wire Wire Line
	5550 2400 5850 2400
Wire Wire Line
	9300 2250 10500 2250
Wire Wire Line
	9900 2250 9900 3350
Wire Wire Line
	9900 3350 5700 3350
Wire Wire Line
	5700 3350 5700 2850
Wire Wire Line
	5700 2850 5850 2850
Wire Wire Line
	4500 1750 4750 1750
Wire Wire Line
	4500 1850 4750 1850
Wire Wire Line
	4500 2600 4750 2600
Wire Wire Line
	4500 2700 4750 2700
Wire Wire Line
	4500 2800 4750 2800
NoConn ~ 4750 1750
NoConn ~ 4750 1850
NoConn ~ 4750 2600
NoConn ~ 4750 2700
NoConn ~ 4750 2800
Wire Wire Line
	7900 2450 7750 2450
Wire Wire Line
	7750 2450 7750 3550
$Comp
L GND #PWR?
U 1 1 592C4651
P 7750 3550
F 0 "#PWR?" H 7750 3300 50  0001 C CNN
F 1 "GND" H 7750 3400 50  0000 C CNN
F 2 "" H 7750 3550 50  0000 C CNN
F 3 "" H 7750 3550 50  0000 C CNN
	1    7750 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2650 7450 2650
Wire Wire Line
	7450 2650 7450 3500
Wire Wire Line
	7450 3500 1750 3500
Connection ~ 1750 1750
Connection ~ 9600 1850
Connection ~ 9750 2050
Connection ~ 9900 2250
Wire Wire Line
	950  1050 1650 1050
Wire Wire Line
	1650 1050 1650 3650
Wire Wire Line
	1650 3650 7550 3650
Wire Wire Line
	7550 3650 7550 2750
Wire Wire Line
	7550 2750 7900 2750
Text Label 10000 1850 0    60   ~ 0
-wrPC
Text Label 10000 2050 0    60   ~ 0
-initPC
Text Label 10000 2250 0    60   ~ 0
-lateRST
Wire Wire Line
	5900 5200 5700 5200
Wire Wire Line
	5700 5200 5700 5550
Wire Wire Line
	5700 5550 4750 5550
Wire Wire Line
	5900 5300 5700 5300
Connection ~ 5700 5300
Text Label 4800 5550 0    60   ~ 0
-initPC
$Comp
L 74LS32 U?
U 1 1 592C519D
P 6450 1850
F 0 "U?" H 6450 1900 50  0000 C CNN
F 1 "74LS32" H 6450 1800 50  0000 C CNN
F 2 "" H 6450 1850 50  0000 C CNN
F 3 "" H 6450 1850 50  0000 C CNN
	1    6450 1850
	1    0    0    -1  
$EndComp
$Comp
L 74LS32 U?
U 2 1 592C51C0
P 6450 2300
F 0 "U?" H 6450 2350 50  0000 C CNN
F 1 "74LS32" H 6450 2250 50  0000 C CNN
F 2 "" H 6450 2300 50  0000 C CNN
F 3 "" H 6450 2300 50  0000 C CNN
	2    6450 2300
	1    0    0    -1  
$EndComp
$Comp
L 74LS32 U?
U 3 1 592C51E7
P 6450 2750
F 0 "U?" H 6450 2800 50  0000 C CNN
F 1 "74LS32" H 6450 2700 50  0000 C CNN
F 2 "" H 6450 2750 50  0000 C CNN
F 3 "" H 6450 2750 50  0000 C CNN
	3    6450 2750
	1    0    0    -1  
$EndComp
Text HLabel 10500 1850 2    60   Output ~ 0
-wrPC
Text HLabel 10500 2250 2    60   Output ~ 0
-lateRST
$Comp
L 74LS32 U?
U 4 1 592C610C
P 2450 5200
F 0 "U?" H 2450 5250 50  0000 C CNN
F 1 "74LS32" H 2450 5150 50  0000 C CNN
F 2 "" H 2450 5200 50  0000 C CNN
F 3 "" H 2450 5200 50  0000 C CNN
	4    2450 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 5100 1650 5100
Wire Wire Line
	1650 5100 1650 5700
Wire Wire Line
	1850 5300 1650 5300
Connection ~ 1650 5300
Wire Wire Line
	3050 5200 3300 5200
$Comp
L GND #PWR?
U 1 1 592C6298
P 1650 5700
F 0 "#PWR?" H 1650 5450 50  0001 C CNN
F 1 "GND" H 1650 5550 50  0000 C CNN
F 2 "" H 1650 5700 50  0000 C CNN
F 3 "" H 1650 5700 50  0000 C CNN
	1    1650 5700
	1    0    0    -1  
$EndComp
NoConn ~ 3300 5200
Text Notes 2650 4850 2    60   ~ 0
unused gate
$EndSCHEMATC
