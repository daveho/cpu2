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
Sheet 2 3
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
L 74ls670 U?
U 1 1 5928487F
P 4650 2350
F 0 "U?" H 4700 2350 50  0000 C CNN
F 1 "74ls670" H 4700 2100 50  0000 C CNN
F 2 "" H 4650 2350 50  0000 C CNN
F 3 "" H 4650 2350 50  0000 C CNN
	1    4650 2350
	1    0    0    -1  
$EndComp
$Comp
L 74ls670 U?
U 1 1 59284886
P 4650 4000
F 0 "U?" H 4700 4000 50  0000 C CNN
F 1 "74ls670" H 4700 3750 50  0000 C CNN
F 2 "" H 4650 4000 50  0000 C CNN
F 3 "" H 4650 4000 50  0000 C CNN
	1    4650 4000
	1    0    0    -1  
$EndComp
Text Label 3750 2300 0    60   ~ 0
WA0
Text Label 3750 2400 0    60   ~ 0
WA1
Text Label 3750 2650 0    60   ~ 0
RA0
Text Label 3750 2750 0    60   ~ 0
RA1
Text Label 3750 3950 0    60   ~ 0
WA0
Text Label 3750 4050 0    60   ~ 0
WA1
Text Label 3750 4300 0    60   ~ 0
RA0
Text Label 3750 4400 0    60   ~ 0
RA1
Text Label 2700 2850 0    60   ~ 0
-RE
Text Label 2700 2500 0    60   ~ 0
-WE
Text Label 3750 1850 0    60   ~ 0
DIN0
Text Label 3750 1950 0    60   ~ 0
DIN1
Text Label 3750 2050 0    60   ~ 0
DIN2
Text Label 3750 2150 0    60   ~ 0
DIN3
Text Label 3750 3500 0    60   ~ 0
DIN4
Text Label 3750 3600 0    60   ~ 0
DIN5
Text Label 3750 3700 0    60   ~ 0
DIN6
Text Label 3750 3800 0    60   ~ 0
DIN7
Wire Wire Line
	3950 2300 3700 2300
Wire Wire Line
	3950 2400 3700 2400
Wire Wire Line
	2650 2500 3950 2500
Wire Wire Line
	3950 2650 3700 2650
Wire Wire Line
	3950 2750 3700 2750
Wire Wire Line
	2650 2850 3950 2850
Wire Wire Line
	3950 3950 3700 3950
Wire Wire Line
	3950 4050 3700 4050
Wire Wire Line
	3200 4150 3950 4150
Wire Wire Line
	3950 4300 3700 4300
Wire Wire Line
	3950 4400 3700 4400
Wire Wire Line
	3050 4500 3950 4500
Wire Wire Line
	3050 4500 3050 2850
Connection ~ 3050 2850
Wire Wire Line
	3200 4150 3200 2500
Connection ~ 3200 2500
Wire Wire Line
	3950 1850 3700 1850
Wire Wire Line
	3950 1950 3700 1950
Wire Wire Line
	3950 2050 3700 2050
Wire Wire Line
	3950 2150 3700 2150
Wire Wire Line
	3950 3500 3700 3500
Wire Wire Line
	3950 3600 3700 3600
Wire Wire Line
	3950 3700 3700 3700
Wire Wire Line
	3950 3800 3700 3800
Wire Wire Line
	5350 1850 5750 1850
Wire Wire Line
	5350 1950 5750 1950
Wire Wire Line
	5350 2050 5750 2050
Wire Wire Line
	5350 2150 5750 2150
Wire Wire Line
	5350 3500 5750 3500
Wire Wire Line
	5350 3600 5750 3600
Wire Wire Line
	5350 3700 5750 3700
Wire Wire Line
	5350 3800 5750 3800
Text Label 5400 1850 0    60   ~ 0
DOUT0
Text Label 5400 1950 0    60   ~ 0
DOUT1
Text Label 5400 2050 0    60   ~ 0
DOUT2
Text Label 5400 2150 0    60   ~ 0
DOUT3
Text Label 5400 3500 0    60   ~ 0
DOUT4
Text Label 5400 3600 0    60   ~ 0
DOUT5
Text Label 5400 3700 0    60   ~ 0
DOUT6
Text Label 5400 3800 0    60   ~ 0
DOUT7
Text Notes 3950 1550 0    118  ~ 0
4x 8 bit registers
$EndSCHEMATC
