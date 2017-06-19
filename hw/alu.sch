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
LIBS:cpu2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 9
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
L 74LS181 U?
U 1 1 5947DB88
P 4050 3550
F 0 "U?" H 4310 4350 50  0000 C CNN
F 1 "74LS181" H 4340 2740 50  0000 C CNN
F 2 "" H 4050 3550 50  0001 C CNN
F 3 "" H 4050 3550 50  0001 C CNN
	1    4050 3550
	1    0    0    -1  
$EndComp
$Comp
L 74LS181 U?
U 1 1 5947DBB7
P 4050 6650
F 0 "U?" H 4310 7450 50  0000 C CNN
F 1 "74LS181" H 4340 5840 50  0000 C CNN
F 2 "" H 4050 6650 50  0001 C CNN
F 3 "" H 4050 6650 50  0001 C CNN
	1    4050 6650
	1    0    0    -1  
$EndComp
$Comp
L 74LS182 U?
U 1 1 5947DC18
P 4050 5150
F 0 "U?" H 4100 5050 50  0000 C CNN
F 1 "74LS182" H 4100 4850 50  0000 C CNN
F 2 "" H 4050 5150 50  0001 C CNN
F 3 "" H 4050 5150 50  0001 C CNN
	1    4050 5150
	1    0    0    -1  
$EndComp
Text HLabel 1000 750  0    60   Input ~ 0
LEFT0
Text HLabel 1000 850  0    60   Input ~ 0
LEFT1
Text HLabel 1000 950  0    60   Input ~ 0
LEFT2
Text HLabel 1000 1050 0    60   Input ~ 0
LEFT3
Text HLabel 1000 1150 0    60   Input ~ 0
LEFT4
Text HLabel 1000 1250 0    60   Input ~ 0
LEFT5
Text HLabel 1000 1350 0    60   Input ~ 0
LEFT6
Text HLabel 1000 1450 0    60   Input ~ 0
LEFT7
Text Label 1050 750  0    60   ~ 0
LEFT0
Text Label 1050 850  0    60   ~ 0
LEFT1
Text Label 1050 950  0    60   ~ 0
LEFT2
Text Label 1050 1050 0    60   ~ 0
LEFT3
Text Label 1050 1150 0    60   ~ 0
LEFT4
Text Label 1050 1250 0    60   ~ 0
LEFT5
Text Label 1050 1350 0    60   ~ 0
LEFT6
Text Label 1050 1450 0    60   ~ 0
LEFT7
Text HLabel 1000 1750 0    60   Input ~ 0
RIGHT0
Text HLabel 1000 1850 0    60   Input ~ 0
RIGHT1
Text HLabel 1000 1950 0    60   Input ~ 0
RIGHT2
Text HLabel 1000 2050 0    60   Input ~ 0
RIGHT3
Text HLabel 1000 2150 0    60   Input ~ 0
RIGHT4
Text HLabel 1000 2250 0    60   Input ~ 0
RIGHT5
Text HLabel 1000 2350 0    60   Input ~ 0
RIGHT6
Text HLabel 1000 2450 0    60   Input ~ 0
RIGHT7
Entry Wire Line
	1900 750  2000 850 
Entry Wire Line
	1900 850  2000 950 
Entry Wire Line
	1900 950  2000 1050
Entry Wire Line
	1900 1050 2000 1150
Entry Wire Line
	1900 1150 2000 1250
Entry Wire Line
	1900 1250 2000 1350
Entry Wire Line
	1900 1350 2000 1450
Entry Wire Line
	1900 1450 2000 1550
Text Label 2950 2850 0    60   ~ 0
LEFT0
Text Label 2950 2950 0    60   ~ 0
LEFT1
Text Label 2950 3050 0    60   ~ 0
LEFT2
Text Label 2950 3150 0    60   ~ 0
LEFT3
Entry Wire Line
	2000 2750 2100 2850
Entry Wire Line
	2000 2850 2100 2950
Entry Wire Line
	2000 2950 2100 3050
Entry Wire Line
	2000 3050 2100 3150
Text Label 2850 5950 0    60   ~ 0
LEFT4
Text Label 2850 6050 0    60   ~ 0
LEFT5
Text Label 2850 6150 0    60   ~ 0
LEFT6
Text Label 2850 6250 0    60   ~ 0
LEFT7
Entry Wire Line
	2000 5850 2100 5950
Entry Wire Line
	2000 5950 2100 6050
Entry Wire Line
	2000 6050 2100 6150
Entry Wire Line
	2000 6150 2100 6250
Wire Wire Line
	1000 750  1900 750 
Wire Wire Line
	1000 850  1900 850 
Wire Wire Line
	1000 950  1900 950 
Wire Wire Line
	1000 1050 1900 1050
Wire Wire Line
	1000 1150 1900 1150
Wire Wire Line
	1000 1250 1900 1250
Wire Wire Line
	1000 1350 1900 1350
Wire Wire Line
	1000 1450 1900 1450
Wire Bus Line
	2000 850  2000 6150
Wire Wire Line
	2100 2850 3350 2850
Wire Wire Line
	2100 2950 3350 2950
Wire Wire Line
	2100 3050 3350 3050
Wire Wire Line
	2100 3150 3350 3150
Wire Wire Line
	3350 5950 2100 5950
Wire Wire Line
	3350 6050 2100 6050
Wire Wire Line
	3350 6150 2100 6150
Wire Wire Line
	3350 6250 2100 6250
Wire Wire Line
	1000 1750 1500 1750
Wire Wire Line
	1000 1950 1500 1950
Wire Wire Line
	1000 2050 1500 2050
Wire Wire Line
	1000 2150 1500 2150
Wire Wire Line
	1000 2250 1500 2250
Wire Wire Line
	1000 2350 1500 2350
Wire Wire Line
	1000 2450 1500 2450
Text Label 1050 1750 0    60   ~ 0
RIGHT0
Text Label 1050 1850 0    60   ~ 0
RIGHT1
Text Label 1050 1950 0    60   ~ 0
RIGHT2
Text Label 1050 2050 0    60   ~ 0
RIGHT3
Text Label 1050 2150 0    60   ~ 0
RIGHT4
Text Label 1050 2250 0    60   ~ 0
RIGHT5
Text Label 1050 2350 0    60   ~ 0
RIGHT6
Text Label 1050 2450 0    60   ~ 0
RIGHT7
Wire Bus Line
	1600 1850 1600 6550
Entry Wire Line
	1500 1750 1600 1850
Entry Wire Line
	1500 2050 1600 2150
Entry Wire Line
	1500 2150 1600 2250
Entry Wire Line
	1500 2250 1600 2350
Entry Wire Line
	1500 2350 1600 2450
Entry Wire Line
	1500 2450 1600 2550
Wire Wire Line
	3350 3250 1700 3250
Wire Wire Line
	3350 3350 1700 3350
Wire Wire Line
	3350 3450 1700 3450
Wire Wire Line
	3350 3550 1700 3550
Text Label 2900 3250 0    60   ~ 0
RIGHT0
Text Label 2900 3350 0    60   ~ 0
RIGHT1
Text Label 2900 3450 0    60   ~ 0
RIGHT2
Text Label 2900 3550 0    60   ~ 0
RIGHT3
Entry Wire Line
	1600 3150 1700 3250
Entry Wire Line
	1600 3250 1700 3350
Entry Wire Line
	1600 3350 1700 3450
Entry Wire Line
	1600 3450 1700 3550
Wire Wire Line
	1000 1850 1500 1850
Entry Wire Line
	1500 1850 1600 1950
Entry Wire Line
	1500 1950 1600 2050
Wire Wire Line
	3350 6350 1700 6350
Wire Wire Line
	3350 6450 1700 6450
Wire Wire Line
	3350 6550 1700 6550
Wire Wire Line
	3350 6650 1700 6650
Text Label 2800 6350 0    60   ~ 0
RIGHT4
Text Label 2800 6450 0    60   ~ 0
RIGHT5
Text Label 2800 6550 0    60   ~ 0
RIGHT6
Text Label 2800 6650 0    60   ~ 0
RIGHT7
Entry Wire Line
	1600 6250 1700 6350
Entry Wire Line
	1600 6350 1700 6450
Entry Wire Line
	1600 6450 1700 6550
Entry Wire Line
	1600 6550 1700 6650
Text Notes 7150 6750 0    60   ~ 0
ALU
$EndSCHEMATC
