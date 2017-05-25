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
LIBS:earlyrst-cache
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
Text Notes 7150 6800 0    60   ~ 0
early reset logic
$Comp
L 74LS193 U3
U 1 1 59258F23
P 3900 2900
F 0 "U3" H 3900 3050 50  0000 C CNN
F 1 "74LS193" H 3900 2900 50  0000 C CNN
F 2 "" H 3900 2900 50  0001 C CNN
F 3 "" H 3900 2900 50  0001 C CNN
	1    3900 2900
	1    0    0    -1  
$EndComp
$Comp
L 74LS04 U1
U 1 1 59258F5A
P 1750 2950
F 0 "U1" H 1945 3065 50  0000 C CNN
F 1 "74LS04" H 1940 2825 50  0000 C CNN
F 2 "" H 1750 2950 50  0001 C CNN
F 3 "" H 1750 2950 50  0001 C CNN
	1    1750 2950
	1    0    0    -1  
$EndComp
$Comp
L 74LS04 U1
U 2 1 59258FEB
P 1750 3300
F 0 "U1" H 1945 3415 50  0000 C CNN
F 1 "74LS04" H 1940 3175 50  0000 C CNN
F 2 "" H 1750 3300 50  0001 C CNN
F 3 "" H 1750 3300 50  0001 C CNN
	2    1750 3300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR2
U 1 1 592590E2
P 2650 2700
F 0 "#PWR2" H 2650 2550 50  0001 C CNN
F 1 "VCC" H 2650 2850 50  0000 C CNN
F 2 "" H 2650 2700 50  0001 C CNN
F 3 "" H 2650 2700 50  0001 C CNN
	1    2650 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR3
U 1 1 5925914D
P 2800 3600
F 0 "#PWR3" H 2800 3350 50  0001 C CNN
F 1 "GND" H 2800 3450 50  0000 C CNN
F 2 "" H 2800 3600 50  0001 C CNN
F 3 "" H 2800 3600 50  0001 C CNN
	1    2800 3600
	1    0    0    -1  
$EndComp
NoConn ~ 4900 3000
NoConn ~ 4900 3200
NoConn ~ 4900 2700
NoConn ~ 4900 2800
$Comp
L 74LS32 U2
U 3 1 592592CC
P 2900 5000
F 0 "U2" H 2900 5050 50  0000 C CNN
F 1 "74LS32" H 2900 4950 50  0000 C CNN
F 2 "" H 2900 5000 50  0001 C CNN
F 3 "" H 2900 5000 50  0001 C CNN
	3    2900 5000
	1    0    0    -1  
$EndComp
$Comp
L 74LS04 U1
U 5 1 59259341
P 2750 6300
F 0 "U1" H 2945 6415 50  0000 C CNN
F 1 "74LS04" H 2940 6175 50  0000 C CNN
F 2 "" H 2750 6300 50  0001 C CNN
F 3 "" H 2750 6300 50  0001 C CNN
	5    2750 6300
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U5
U 1 1 59259407
P 8550 3050
F 0 "U5" H 8550 3050 50  0000 C CNN
F 1 "74LS175" H 8650 2650 50  0000 C CNN
F 2 "" H 8550 3050 50  0001 C CNN
F 3 "" H 8550 3050 50  0001 C CNN
	1    8550 3050
	1    0    0    -1  
$EndComp
$Comp
L 74LS32 U2
U 4 1 59259471
P 2900 5500
F 0 "U2" H 2900 5550 50  0000 C CNN
F 1 "74LS32" H 2900 5450 50  0000 C CNN
F 2 "" H 2900 5500 50  0001 C CNN
F 3 "" H 2900 5500 50  0001 C CNN
	4    2900 5500
	1    0    0    -1  
$EndComp
Text Label 10100 2800 0    60   ~ 0
-lateRST
$Comp
L GND #PWR6
U 1 1 59259887
P 7700 4500
F 0 "#PWR6" H 7700 4250 50  0001 C CNN
F 1 "GND" H 7700 4350 50  0000 C CNN
F 2 "" H 7700 4500 50  0001 C CNN
F 3 "" H 7700 4500 50  0001 C CNN
	1    7700 4500
	1    0    0    -1  
$EndComp
Text Label 600  1050 0    60   ~ 0
CLK
Text Label 600  1400 0    60   ~ 0
-RST
Text Label 2200 2950 0    60   ~ 0
RST
Text Label 2250 3300 0    60   ~ 0
INVCLK
$Comp
L 74LS32 U2
U 2 1 5925A3F5
P 6750 3100
F 0 "U2" H 6750 3150 50  0000 C CNN
F 1 "74LS32" H 6750 3050 50  0000 C CNN
F 2 "" H 6750 3100 50  0001 C CNN
F 3 "" H 6750 3100 50  0001 C CNN
	2    6750 3100
	1    0    0    -1  
$EndComp
$Comp
L 74LS04 U1
U 6 1 5925A468
P 2750 6650
F 0 "U1" H 2945 6765 50  0000 C CNN
F 1 "74LS04" H 2940 6525 50  0000 C CNN
F 2 "" H 2750 6650 50  0001 C CNN
F 3 "" H 2750 6650 50  0001 C CNN
	6    2750 6650
	1    0    0    -1  
$EndComp
$Comp
L 74LS04 U1
U 3 1 5925A4A5
P 5550 2500
F 0 "U1" H 5745 2615 50  0000 C CNN
F 1 "74LS04" H 5740 2375 50  0000 C CNN
F 2 "" H 5550 2500 50  0001 C CNN
F 3 "" H 5550 2500 50  0001 C CNN
	3    5550 2500
	1    0    0    -1  
$EndComp
$Comp
L 74LS04 U1
U 4 1 5925A4D4
P 5550 3000
F 0 "U1" H 5745 3115 50  0000 C CNN
F 1 "74LS04" H 5740 2875 50  0000 C CNN
F 2 "" H 5550 3000 50  0001 C CNN
F 3 "" H 5550 3000 50  0001 C CNN
	4    5550 3000
	1    0    0    -1  
$EndComp
Text Notes 10050 3250 0    60   ~ 0
-lateRST is the\nactive-low reset\nsignal for all other\ndevices
$Comp
L GND #PWR1
U 1 1 5925AADF
P 1900 6950
F 0 "#PWR1" H 1900 6700 50  0001 C CNN
F 1 "GND" H 1900 6800 50  0000 C CNN
F 2 "" H 1900 6950 50  0001 C CNN
F 3 "" H 1900 6950 50  0001 C CNN
	1    1900 6950
	1    0    0    -1  
$EndComp
NoConn ~ 3750 5500
NoConn ~ 3750 6300
NoConn ~ 3750 6650
Text Notes 2600 4650 0    60   ~ 0
unused gates
$Comp
L 74LS541 U4
U 1 1 5925B1A9
P 6800 5400
F 0 "U4" H 6800 5975 50  0000 C BNN
F 1 "74LS541" H 6800 4825 50  0000 C TNN
F 2 "" H 6800 5400 50  0001 C CNN
F 3 "" H 6800 5400 50  0001 C CNN
	1    6800 5400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR4
U 1 1 5925B2D7
P 4950 5350
F 0 "#PWR4" H 4950 5200 50  0001 C CNN
F 1 "VCC" H 4950 5500 50  0000 C CNN
F 2 "" H 4950 5350 50  0001 C CNN
F 3 "" H 4950 5350 50  0001 C CNN
	1    4950 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  1400 750  4300
Wire Wire Line
	1000 1050 1000 4150
Wire Wire Line
	1000 2950 1300 2950
Wire Wire Line
	750  3300 1300 3300
Wire Wire Line
	2200 2950 2400 2950
Wire Wire Line
	2400 2950 2400 3100
Wire Wire Line
	2400 3100 3200 3100
Wire Wire Line
	3200 2950 2650 2950
Wire Wire Line
	2650 2700 2650 3200
Wire Wire Line
	3200 2800 2800 2800
Wire Wire Line
	2800 2500 2800 3600
Wire Wire Line
	3200 2700 2800 2700
Connection ~ 2800 2800
Wire Wire Line
	3200 2600 2800 2600
Connection ~ 2800 2700
Wire Wire Line
	3200 2500 2800 2500
Connection ~ 2800 2600
Wire Wire Line
	3200 3300 2200 3300
Wire Wire Line
	2650 3200 3200 3200
Connection ~ 2650 2950
Wire Wire Line
	4600 3000 4900 3000
Wire Wire Line
	4600 3200 4900 3200
Wire Wire Line
	4600 2800 4900 2800
Wire Wire Line
	4600 2700 4900 2700
Wire Wire Line
	7350 2600 7850 2600
Wire Wire Line
	9250 2800 10600 2800
Wire Wire Line
	9850 3850 9850 2800
Connection ~ 9850 2800
Wire Wire Line
	750  4300 7550 4300
Connection ~ 750  3300
Wire Wire Line
	1000 1050 550  1050
Wire Wire Line
	750  1400 550  1400
Wire Wire Line
	1000 4150 7450 4150
Connection ~ 1000 2950
Wire Wire Line
	2300 5400 1900 5400
Wire Wire Line
	1900 4900 1900 6950
Wire Wire Line
	2300 5600 1900 5600
Connection ~ 1900 5600
Wire Wire Line
	2300 6300 1900 6300
Connection ~ 1900 6300
Wire Wire Line
	2300 6650 1900 6650
Connection ~ 1900 6650
Wire Wire Line
	3500 5500 3750 5500
Wire Wire Line
	3200 6300 3750 6300
Wire Wire Line
	3200 6650 3750 6650
Wire Wire Line
	6100 5600 4950 5600
Wire Wire Line
	4950 5600 4950 5350
Wire Wire Line
	6100 5500 4950 5500
Connection ~ 4950 5500
Wire Wire Line
	6100 5800 5900 5800
Wire Wire Line
	5900 5800 5900 6450
Wire Wire Line
	5900 6450 4950 6450
Wire Wire Line
	6100 5900 5900 5900
Connection ~ 5900 5900
Text Label 5000 6450 0    60   ~ 0
-pcLoad
Wire Wire Line
	6100 4900 5400 4900
Wire Wire Line
	5400 4900 5400 5800
Wire Wire Line
	6100 5000 5400 5000
Connection ~ 5400 5000
Wire Wire Line
	6100 5100 5400 5100
Connection ~ 5400 5100
Wire Wire Line
	6100 5200 5400 5200
Connection ~ 5400 5200
Wire Wire Line
	6100 5300 5400 5300
Connection ~ 5400 5300
Wire Wire Line
	6100 5400 5400 5400
Connection ~ 5400 5400
$Comp
L GND #PWR5
U 1 1 5925B869
P 5400 5800
F 0 "#PWR5" H 5400 5550 50  0001 C CNN
F 1 "GND" H 5400 5650 50  0000 C CNN
F 2 "" H 5400 5800 50  0001 C CNN
F 3 "" H 5400 5800 50  0001 C CNN
	1    5400 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 4900 7900 4900
Wire Wire Line
	7500 5000 7900 5000
Wire Wire Line
	7500 5100 7900 5100
Wire Wire Line
	7500 5200 7900 5200
Wire Wire Line
	7500 5300 7900 5300
Wire Wire Line
	7500 5400 7900 5400
Wire Wire Line
	7500 5500 7900 5500
Wire Wire Line
	7500 5600 7900 5600
Text Label 7600 4900 0    60   ~ 0
ALU0
Text Label 7600 5000 0    60   ~ 0
ALU1
Text Label 7600 5100 0    60   ~ 0
ALU2
Text Label 7600 5200 0    60   ~ 0
ALU3
Text Label 7600 5300 0    60   ~ 0
ALU4
Text Label 7600 5400 0    60   ~ 0
ALU5
Text Label 7600 5500 0    60   ~ 0
ALU6
Text Label 7600 5600 0    60   ~ 0
ALU7
Text Notes 6350 6300 0    60   ~ 0
the initial PC value is\n0xC0C0
Wire Wire Line
	9250 2600 10600 2600
Text Label 10100 2600 0    60   ~ 0
-pcLoad
Wire Wire Line
	6150 2500 6000 2500
Wire Wire Line
	7850 3000 7700 3000
Wire Wire Line
	7700 3000 7700 4500
Wire Wire Line
	7850 3200 7700 3200
Connection ~ 7700 3200
Wire Wire Line
	4600 2500 5100 2500
Wire Wire Line
	4600 2600 5100 2600
Wire Wire Line
	5100 2600 5100 3000
Text Label 4600 2500 0    60   ~ 0
CT0
Text Label 4600 2600 0    60   ~ 0
CT1
Wire Wire Line
	6000 3000 6150 3000
Wire Wire Line
	7850 3500 7550 3500
Wire Wire Line
	7550 3500 7550 4300
Wire Wire Line
	7850 3400 7450 3400
Wire Wire Line
	7450 3400 7450 4150
Wire Wire Line
	9850 3850 6050 3850
Wire Wire Line
	6050 3850 6050 2700
Wire Wire Line
	6050 2700 6150 2700
Wire Wire Line
	6150 3200 6050 3200
Connection ~ 6050 3200
Wire Wire Line
	7350 3100 7500 3100
Wire Wire Line
	7500 3100 7500 2800
Wire Wire Line
	7500 2800 7850 2800
Text Notes 9600 2450 0    60   ~ 0
-pcLoad asserts the initial PC\nupper/lower byte value on the\nALU data bus
$Comp
L 74LS32 U2
U 1 1 5926DE4E
P 6750 2600
F 0 "U2" H 6750 2650 50  0000 C CNN
F 1 "74LS32" H 6750 2550 50  0000 C CNN
F 2 "" H 6750 2600 50  0001 C CNN
F 3 "" H 6750 2600 50  0001 C CNN
	1    6750 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 4900 1900 4900
Connection ~ 1900 5400
Wire Wire Line
	2300 5100 1900 5100
Connection ~ 1900 5100
NoConn ~ 3750 5000
Wire Wire Line
	3500 5000 3750 5000
$EndSCHEMATC
