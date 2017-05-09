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
L 74ls670 U1
U 1 1 590D0E8E
P 3550 2550
F 0 "U1" H 3600 2550 50  0000 C CNN
F 1 "74ls670" H 3600 2300 50  0000 C CNN
F 2 "" H 3550 2550 50  0000 C CNN
F 3 "" H 3550 2550 50  0000 C CNN
	1    3550 2550
	1    0    0    -1  
$EndComp
$Comp
L 74ls670 U2
U 1 1 590D0ED1
P 3550 4200
F 0 "U2" H 3600 4200 50  0000 C CNN
F 1 "74ls670" H 3600 3950 50  0000 C CNN
F 2 "" H 3550 4200 50  0000 C CNN
F 3 "" H 3550 4200 50  0000 C CNN
	1    3550 4200
	1    0    0    -1  
$EndComp
Text Label 2650 2500 0    60   ~ 0
WA0
Text Label 2650 2600 0    60   ~ 0
WA1
Text Label 2650 2850 0    60   ~ 0
RA0
Text Label 2650 2950 0    60   ~ 0
RA1
Text Label 2650 4150 0    60   ~ 0
WA0
Text Label 2650 4250 0    60   ~ 0
WA1
Text Label 2650 4500 0    60   ~ 0
RA0
Text Label 2650 4600 0    60   ~ 0
RA1
Text Label 1600 3050 0    60   ~ 0
-RE
Text Label 1600 2700 0    60   ~ 0
-WE
Text Label 2650 2050 0    60   ~ 0
DIN0
Text Label 2650 2150 0    60   ~ 0
DIN1
Text Label 2650 2250 0    60   ~ 0
DIN2
Text Label 2650 2350 0    60   ~ 0
DIN3
Text Label 2650 3700 0    60   ~ 0
DIN4
Text Label 2650 3800 0    60   ~ 0
DIN5
Text Label 2650 3900 0    60   ~ 0
DIN6
Text Label 2650 4000 0    60   ~ 0
DIN7
Wire Wire Line
	2850 2500 2600 2500
Wire Wire Line
	2850 2600 2600 2600
Wire Wire Line
	1550 2700 2850 2700
Wire Wire Line
	2850 2850 2600 2850
Wire Wire Line
	2850 2950 2600 2950
Wire Wire Line
	1550 3050 2850 3050
Wire Wire Line
	2850 4150 2600 4150
Wire Wire Line
	2850 4250 2600 4250
Wire Wire Line
	2100 4350 2850 4350
Wire Wire Line
	2850 4500 2600 4500
Wire Wire Line
	2850 4600 2600 4600
Wire Wire Line
	1950 4700 2850 4700
Wire Wire Line
	1950 4700 1950 3050
Connection ~ 1950 3050
Wire Wire Line
	2100 4350 2100 2700
Connection ~ 2100 2700
Wire Wire Line
	2850 2050 2600 2050
Wire Wire Line
	2850 2150 2600 2150
Wire Wire Line
	2850 2250 2600 2250
Wire Wire Line
	2850 2350 2600 2350
Wire Wire Line
	2850 3700 2600 3700
Wire Wire Line
	2850 3800 2600 3800
Wire Wire Line
	2850 3900 2600 3900
Wire Wire Line
	2850 4000 2600 4000
Wire Wire Line
	4250 2050 4650 2050
Wire Wire Line
	4250 2150 4650 2150
Wire Wire Line
	4250 2250 4650 2250
Wire Wire Line
	4250 2350 4650 2350
Wire Wire Line
	4250 3700 4650 3700
Wire Wire Line
	4250 3800 4650 3800
Wire Wire Line
	4250 3900 4650 3900
Wire Wire Line
	4250 4000 4650 4000
Text Label 4300 2050 0    60   ~ 0
DOUT0
Text Label 4300 2150 0    60   ~ 0
DOUT1
Text Label 4300 2250 0    60   ~ 0
DOUT2
Text Label 4300 2350 0    60   ~ 0
DOUT3
Text Label 4300 3700 0    60   ~ 0
DOUT4
Text Label 4300 3800 0    60   ~ 0
DOUT5
Text Label 4300 3900 0    60   ~ 0
DOUT6
Text Label 4300 4000 0    60   ~ 0
DOUT7
Text Notes 2850 1750 0    118  ~ 0
4x 8 bit registers
$EndSCHEMATC
