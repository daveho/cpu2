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
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1150 3250 0    60   Input ~ 0
ucodeEnd
Text HLabel 9000 3550 2    60   Output ~ 0
-opfetch
Text HLabel 9000 3350 2    60   Output ~ 0
-ucode
Text HLabel 1200 1550 0    60   Input ~ 0
-RST
Text HLabel 1200 2150 0    60   Input ~ 0
CLK
$Comp
L 74LS175 U?
U 1 1 5929A5F9
P 7000 3700
F 0 "U?" H 7000 3700 50  0000 C CNN
F 1 "74LS175" H 7100 3300 50  0000 C CNN
F 2 "" H 7000 3700 50  0001 C CNN
F 3 "" H 7000 3700 50  0001 C CNN
	1    7000 3700
	1    0    0    -1  
$EndComp
$Comp
L 74LS02 U?
U 1 1 5929A6F9
P 3750 3150
F 0 "U?" H 3750 3200 50  0000 C CNN
F 1 "74LS02" H 3800 3100 50  0000 C CNN
F 2 "" H 3750 3150 50  0001 C CNN
F 3 "" H 3750 3150 50  0001 C CNN
	1    3750 3150
	1    0    0    -1  
$EndComp
$Comp
L 74LS02 U?
U 2 1 5929A716
P 3750 3650
F 0 "U?" H 3750 3700 50  0000 C CNN
F 1 "74LS02" H 3800 3600 50  0000 C CNN
F 2 "" H 3750 3650 50  0001 C CNN
F 3 "" H 3750 3650 50  0001 C CNN
	2    3750 3650
	1    0    0    -1  
$EndComp
$Comp
L 74LS32 U?
U 1 1 5929AA34
P 5250 3250
F 0 "U?" H 5250 3300 50  0000 C CNN
F 1 "74LS32" H 5250 3200 50  0000 C CNN
F 2 "" H 5250 3250 50  0001 C CNN
F 3 "" H 5250 3250 50  0001 C CNN
	1    5250 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3150 4650 3150
Wire Wire Line
	7700 3350 9000 3350
Wire Wire Line
	5850 3250 6300 3250
Wire Wire Line
	4350 3650 4500 3650
Wire Wire Line
	4500 3650 4500 3350
Wire Wire Line
	4500 3350 4650 3350
Text HLabel 1150 3750 0    60   Input ~ 0
-opfetchEnd
Wire Wire Line
	7700 3550 9000 3550
Wire Wire Line
	1150 3250 3150 3250
Wire Wire Line
	1150 3750 3150 3750
Wire Wire Line
	7700 3250 8400 3250
Text Label 7750 3250 0    60   ~ 0
ucode
Text Label 7750 3350 0    60   ~ 0
-ucode
Wire Wire Line
	7700 3450 8300 3450
Text Label 7750 3450 0    60   ~ 0
opfetch
Text Label 7750 3550 0    60   ~ 0
-opfetch
$Comp
L 74LS02 U?
U 3 1 5929B0A2
P 3750 4800
F 0 "U?" H 3750 4850 50  0000 C CNN
F 1 "74LS02" H 3800 4750 50  0000 C CNN
F 2 "" H 3750 4800 50  0001 C CNN
F 3 "" H 3750 4800 50  0001 C CNN
	3    3750 4800
	1    0    0    -1  
$EndComp
$Comp
L 74LS02 U?
U 4 1 5929B12B
P 3750 5300
F 0 "U?" H 3750 5350 50  0000 C CNN
F 1 "74LS02" H 3800 5250 50  0000 C CNN
F 2 "" H 3750 5300 50  0001 C CNN
F 3 "" H 3750 5300 50  0001 C CNN
	4    3750 5300
	1    0    0    -1  
$EndComp
$Comp
L 74LS32 U?
U 2 1 5929B25C
P 5100 4900
F 0 "U?" H 5100 4950 50  0000 C CNN
F 1 "74LS32" H 5100 4850 50  0000 C CNN
F 2 "" H 5100 4900 50  0001 C CNN
F 3 "" H 5100 4900 50  0001 C CNN
	2    5100 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4800 4500 4800
Wire Wire Line
	5900 3450 6300 3450
Wire Wire Line
	6300 4150 1650 4150
Wire Wire Line
	1650 4150 1650 1550
Wire Wire Line
	1650 1550 1200 1550
Wire Wire Line
	1200 2150 1550 2150
Wire Wire Line
	1550 2150 1550 4050
Wire Wire Line
	1550 4050 6300 4050
Wire Wire Line
	5900 3450 5900 4900
Text Label 5900 3250 0    60   ~ 0
ucodeNext
Wire Wire Line
	3150 3050 2600 3050
Wire Wire Line
	3150 3550 2600 3550
Wire Wire Line
	3150 4700 2600 4700
Wire Wire Line
	3150 4900 2600 4900
Text Label 2650 3050 0    60   ~ 0
-ucode
Text Label 2650 3550 0    60   ~ 0
-opfetch
Text Notes 7250 6800 0    60   ~ 0
phase logic
Text Label 2650 4700 0    60   ~ 0
opfetch
Text Label 2650 4900 0    60   ~ 0
ucode
Wire Wire Line
	3150 5200 3000 5200
Wire Wire Line
	3000 5200 3000 5400
Wire Wire Line
	3000 5300 2300 5300
Wire Wire Line
	3000 5400 3150 5400
Connection ~ 3000 5300
Text Label 2350 5300 0    60   ~ 0
ucodeNext
Wire Wire Line
	6300 3650 6100 3650
Wire Wire Line
	6100 3650 6100 4500
Wire Wire Line
	6300 3850 6100 3850
Connection ~ 6100 3850
$Comp
L GND #PWR?
U 1 1 5929BC1E
P 6100 4500
F 0 "#PWR?" H 6100 4250 50  0001 C CNN
F 1 "GND" H 6100 4350 50  0000 C CNN
F 2 "" H 6100 4500 50  0001 C CNN
F 3 "" H 6100 4500 50  0001 C CNN
	1    6100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5300 4400 5300
Wire Wire Line
	4400 5300 4400 5000
Wire Wire Line
	4400 5000 4500 5000
Wire Wire Line
	5900 4900 5700 4900
$Comp
L 74LS32 U?
U 3 1 5929BF66
P 1650 6250
F 0 "U?" H 1650 6300 50  0000 C CNN
F 1 "74LS32" H 1650 6200 50  0000 C CNN
F 2 "" H 1650 6250 50  0001 C CNN
F 3 "" H 1650 6250 50  0001 C CNN
	3    1650 6250
	1    0    0    -1  
$EndComp
$Comp
L 74LS32 U?
U 4 1 5929C0A9
P 1650 6700
F 0 "U?" H 1650 6750 50  0000 C CNN
F 1 "74LS32" H 1650 6650 50  0000 C CNN
F 2 "" H 1650 6700 50  0001 C CNN
F 3 "" H 1650 6700 50  0001 C CNN
	4    1650 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 6150 800  6150
Wire Wire Line
	800  6150 800  7150
Wire Wire Line
	1050 6350 800  6350
Connection ~ 800  6350
Wire Wire Line
	1050 6600 800  6600
Connection ~ 800  6600
Wire Wire Line
	1050 6800 800  6800
Connection ~ 800  6800
$Comp
L GND #PWR?
U 1 1 5929C1E3
P 800 7150
F 0 "#PWR?" H 800 6900 50  0001 C CNN
F 1 "GND" H 800 7000 50  0000 C CNN
F 2 "" H 800 7150 50  0001 C CNN
F 3 "" H 800 7150 50  0001 C CNN
	1    800  7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6250 2500 6250
Wire Wire Line
	2250 6700 2500 6700
NoConn ~ 2500 6250
NoConn ~ 2500 6700
Text Notes 1350 5900 0    60   ~ 0
unused gates
$EndSCHEMATC
