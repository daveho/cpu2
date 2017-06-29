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
Sheet 2 9
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
L 74ls670 U501
U 1 1 5928487F
P 6050 2350
F 0 "U501" H 6100 2350 50  0000 C CNN
F 1 "74HC670" H 6100 2100 50  0000 C CNN
F 2 "" H 6050 2350 50  0000 C CNN
F 3 "" H 6050 2350 50  0000 C CNN
	1    6050 2350
	1    0    0    -1  
$EndComp
$Comp
L 74ls670 U502
U 1 1 59284886
P 6050 3600
F 0 "U502" H 6100 3600 50  0000 C CNN
F 1 "74HC670" H 6100 3350 50  0000 C CNN
F 2 "" H 6050 3600 50  0000 C CNN
F 3 "" H 6050 3600 50  0000 C CNN
	1    6050 3600
	1    0    0    -1  
$EndComp
Text Label 4950 1850 0    60   ~ 0
ALU0
Text Label 4950 1950 0    60   ~ 0
ALU1
Text Label 4950 2050 0    60   ~ 0
ALU2
Text Label 4950 2150 0    60   ~ 0
ALU3
Text Label 4950 3100 0    60   ~ 0
ALU4
Text Label 4950 3200 0    60   ~ 0
ALU5
Text Label 4950 3300 0    60   ~ 0
ALU6
Text Label 4950 3400 0    60   ~ 0
ALU7
$Comp
L 74ls670 U503
U 1 1 5958F864
P 6050 4850
F 0 "U503" H 6100 4850 50  0000 C CNN
F 1 "74HC670" H 6100 4600 50  0000 C CNN
F 2 "" H 6050 4850 50  0000 C CNN
F 3 "" H 6050 4850 50  0000 C CNN
	1    6050 4850
	1    0    0    -1  
$EndComp
$Comp
L 74ls670 U504
U 1 1 5958F86A
P 6050 6100
F 0 "U504" H 6100 6100 50  0000 C CNN
F 1 "74HC670" H 6100 5850 50  0000 C CNN
F 2 "" H 6050 6100 50  0000 C CNN
F 3 "" H 6050 6100 50  0000 C CNN
	1    6050 6100
	1    0    0    -1  
$EndComp
Text Label 4950 4350 0    60   ~ 0
ALU0
Text Label 4950 4450 0    60   ~ 0
ALU1
Text Label 4950 4550 0    60   ~ 0
ALU2
Text Label 4950 4650 0    60   ~ 0
ALU3
Text Label 4950 5600 0    60   ~ 0
ALU4
Text Label 4950 5700 0    60   ~ 0
ALU5
Text Label 4950 5800 0    60   ~ 0
ALU6
Text Label 4950 5900 0    60   ~ 0
ALU7
Text Label 6800 1850 0    60   ~ 0
LEFT0
Text Label 6800 1950 0    60   ~ 0
LEFT1
Text Label 6800 2050 0    60   ~ 0
LEFT2
Text Label 6800 2150 0    60   ~ 0
LEFT3
Text Label 6800 3100 0    60   ~ 0
LEFT4
Text Label 6800 3200 0    60   ~ 0
LEFT5
Text Label 6800 3300 0    60   ~ 0
LEFT6
Text Label 6800 3400 0    60   ~ 0
LEFT7
Text Label 6800 4350 0    60   ~ 0
RIGHT0
Text Label 6800 4450 0    60   ~ 0
RIGHT1
Text Label 6800 4550 0    60   ~ 0
RIGHT2
Text Label 6800 4650 0    60   ~ 0
RIGHT3
Text Label 6800 5600 0    60   ~ 0
RIGHT4
Text Label 6800 5700 0    60   ~ 0
RIGHT5
Text Label 6800 5800 0    60   ~ 0
RIGHT6
Text Label 6800 5900 0    60   ~ 0
RIGHT7
Text Label 3050 2500 0    60   ~ 0
-wrLo
Text Label 3050 2850 0    60   ~ 0
-read
Text HLabel 3000 800  0    60   Input ~ 0
ALU0
Text HLabel 3000 900  0    60   Input ~ 0
ALU1
Text HLabel 3000 1000 0    60   Input ~ 0
ALU2
Text HLabel 3000 1100 0    60   Input ~ 0
ALU3
Text HLabel 3000 1200 0    60   Input ~ 0
ALU4
Text HLabel 3000 1300 0    60   Input ~ 0
ALU5
Text HLabel 3000 1400 0    60   Input ~ 0
ALU6
Text HLabel 3000 1500 0    60   Input ~ 0
ALU7
Text Label 3100 800  0    60   ~ 0
ALU0
Text Label 3100 900  0    60   ~ 0
ALU1
Text Label 3100 1000 0    60   ~ 0
ALU2
Text Label 3100 1100 0    60   ~ 0
ALU3
Text Label 3100 1200 0    60   ~ 0
ALU4
Text Label 3100 1300 0    60   ~ 0
ALU5
Text Label 3100 1400 0    60   ~ 0
ALU6
Text Label 3100 1500 0    60   ~ 0
ALU7
Text Label 3050 5000 0    60   ~ 0
-wrHi
Entry Wire Line
	4700 800  4800 900 
Entry Wire Line
	4700 900  4800 1000
Entry Wire Line
	4700 1000 4800 1100
Entry Wire Line
	4700 1100 4800 1200
Entry Wire Line
	4700 1200 4800 1300
Entry Wire Line
	4700 1300 4800 1400
Entry Wire Line
	4700 1400 4800 1500
Entry Wire Line
	4700 1500 4800 1600
Entry Wire Line
	4800 1750 4900 1850
Entry Wire Line
	4800 1850 4900 1950
Entry Wire Line
	4800 1950 4900 2050
Entry Wire Line
	4800 2050 4900 2150
Entry Wire Line
	4800 3000 4900 3100
Entry Wire Line
	4800 3100 4900 3200
Entry Wire Line
	4800 3200 4900 3300
Entry Wire Line
	4800 3300 4900 3400
Entry Wire Line
	4800 4250 4900 4350
Entry Wire Line
	4800 4350 4900 4450
Entry Wire Line
	4800 4450 4900 4550
Entry Wire Line
	4800 4550 4900 4650
Entry Wire Line
	4800 5500 4900 5600
Entry Wire Line
	4800 5600 4900 5700
Entry Wire Line
	4800 5700 4900 5800
Entry Wire Line
	4800 5800 4900 5900
Text Label 3050 2300 0    60   ~ 0
WA0
Text Label 3050 2400 0    60   ~ 0
WA1
Text HLabel 3000 2300 0    60   Input ~ 0
WA0
Text HLabel 3000 2400 0    60   Input ~ 0
WA1
Text Label 3050 2650 0    60   ~ 0
RA0
Text Label 3050 2750 0    60   ~ 0
RA1
Text HLabel 3000 2650 0    60   Input ~ 0
RA0
Text HLabel 3000 2750 0    60   Input ~ 0
RA1
Wire Wire Line
	3000 2300 4100 2300
Wire Wire Line
	4100 2300 5350 2300
Wire Wire Line
	3000 2400 4000 2400
Wire Wire Line
	4000 2400 5350 2400
Wire Wire Line
	3000 2650 3800 2650
Wire Wire Line
	3800 2650 5350 2650
Wire Wire Line
	3000 2750 3700 2750
Wire Wire Line
	3700 2750 5350 2750
Wire Wire Line
	4100 3550 5350 3550
Wire Wire Line
	4000 3650 5350 3650
Wire Wire Line
	3800 3900 5350 3900
Wire Wire Line
	3700 4000 5350 4000
Wire Wire Line
	5350 1850 4900 1850
Wire Wire Line
	5350 1950 4900 1950
Wire Wire Line
	5350 2050 4900 2050
Wire Wire Line
	5350 2150 4900 2150
Wire Wire Line
	5350 3100 4900 3100
Wire Wire Line
	5350 3200 4900 3200
Wire Wire Line
	5350 3300 4900 3300
Wire Wire Line
	5350 3400 4900 3400
Wire Wire Line
	3000 2500 3900 2500
Wire Wire Line
	3900 2500 5350 2500
Wire Wire Line
	3000 2850 3600 2850
Wire Wire Line
	3600 2850 5350 2850
Wire Wire Line
	3900 3750 5350 3750
Wire Wire Line
	5350 4100 3600 4100
Wire Wire Line
	4100 4800 5350 4800
Wire Wire Line
	4000 4900 5350 4900
Wire Wire Line
	3800 5150 5350 5150
Wire Wire Line
	3700 5250 5350 5250
Wire Wire Line
	4100 6050 5350 6050
Wire Wire Line
	4000 6150 5350 6150
Wire Wire Line
	3800 6400 5350 6400
Wire Wire Line
	3700 6500 5350 6500
Wire Wire Line
	5350 4350 4900 4350
Wire Wire Line
	5350 4450 4900 4450
Wire Wire Line
	5350 4550 4900 4550
Wire Wire Line
	5350 4650 4900 4650
Wire Wire Line
	5350 5600 4900 5600
Wire Wire Line
	5350 5700 4900 5700
Wire Wire Line
	5350 5800 4900 5800
Wire Wire Line
	5350 5900 4900 5900
Wire Wire Line
	3900 6250 5350 6250
Wire Wire Line
	3600 6600 5350 6600
Wire Wire Line
	6750 1850 7200 1850
Wire Wire Line
	6750 1950 7200 1950
Wire Wire Line
	6750 2050 7200 2050
Wire Wire Line
	6750 2150 7200 2150
Wire Wire Line
	6750 3100 7200 3100
Wire Wire Line
	6750 3200 7200 3200
Wire Wire Line
	6750 3300 7200 3300
Wire Wire Line
	6750 3400 7200 3400
Wire Wire Line
	6750 4350 7200 4350
Wire Wire Line
	6750 4450 7200 4450
Wire Wire Line
	6750 4550 7200 4550
Wire Wire Line
	6750 4650 7200 4650
Wire Wire Line
	6750 5600 7200 5600
Wire Wire Line
	6750 5700 7200 5700
Wire Wire Line
	6750 5800 7200 5800
Wire Wire Line
	6750 5900 7200 5900
Wire Wire Line
	3000 800  4700 800 
Wire Wire Line
	3000 900  4700 900 
Wire Wire Line
	3000 1000 4700 1000
Wire Wire Line
	3000 1100 4700 1100
Wire Wire Line
	3000 1200 4700 1200
Wire Wire Line
	3000 1300 4700 1300
Wire Wire Line
	3000 1400 4700 1400
Wire Wire Line
	3000 1500 4700 1500
Wire Wire Line
	3000 5000 3900 5000
Wire Wire Line
	3900 5000 5350 5000
Wire Wire Line
	3600 2850 3600 4100
Wire Wire Line
	3600 4100 3600 5350
Wire Wire Line
	3600 5350 3600 6600
Connection ~ 3600 2850
Connection ~ 3600 4100
Wire Bus Line
	4800 900  4800 1000
Wire Bus Line
	4800 1000 4800 1100
Wire Bus Line
	4800 1100 4800 1200
Wire Bus Line
	4800 1200 4800 1300
Wire Bus Line
	4800 1300 4800 1400
Wire Bus Line
	4800 1400 4800 1500
Wire Bus Line
	4800 1500 4800 1600
Wire Bus Line
	4800 1600 4800 1750
Wire Bus Line
	4800 1750 4800 1850
Wire Bus Line
	4800 1850 4800 1950
Wire Bus Line
	4800 1950 4800 2050
Wire Bus Line
	4800 2050 4800 3000
Wire Bus Line
	4800 3000 4800 3100
Wire Bus Line
	4800 3100 4800 3200
Wire Bus Line
	4800 3200 4800 3300
Wire Bus Line
	4800 3300 4800 4250
Wire Bus Line
	4800 4250 4800 4350
Wire Bus Line
	4800 4350 4800 4450
Wire Bus Line
	4800 4450 4800 4550
Wire Bus Line
	4800 4550 4800 5500
Wire Bus Line
	4800 5500 4800 5600
Wire Bus Line
	4800 5600 4800 5700
Wire Bus Line
	4800 5700 4800 5800
Wire Wire Line
	3700 2750 3700 4000
Wire Wire Line
	3700 4000 3700 5250
Wire Wire Line
	3700 5250 3700 6500
Connection ~ 3700 2750
Wire Wire Line
	3800 2650 3800 3900
Wire Wire Line
	3800 3900 3800 5150
Wire Wire Line
	3800 5150 3800 6400
Connection ~ 3800 2650
Wire Wire Line
	3900 3750 3900 2500
Connection ~ 3900 2500
Wire Wire Line
	4000 2400 4000 3650
Wire Wire Line
	4000 3650 4000 4900
Wire Wire Line
	4000 4900 4000 6150
Connection ~ 4000 2400
Wire Wire Line
	4100 2300 4100 3550
Wire Wire Line
	4100 3550 4100 4800
Wire Wire Line
	4100 4800 4100 6050
Connection ~ 4100 2300
Wire Wire Line
	5350 5350 3600 5350
Connection ~ 3600 5350
Connection ~ 3700 4000
Connection ~ 3800 3900
Connection ~ 4000 3650
Connection ~ 4100 3550
Connection ~ 3700 5250
Connection ~ 3800 5150
Wire Wire Line
	3900 6250 3900 5000
Connection ~ 3900 5000
Connection ~ 4000 4900
Connection ~ 4100 4800
Text HLabel 3000 2500 0    60   Input ~ 0
-wrLo
Text HLabel 3000 2850 0    60   Input ~ 0
-read
Text HLabel 3000 5000 0    60   Input ~ 0
-wrHi
Text HLabel 7200 1850 2    60   Output ~ 0
LEFT0
Text HLabel 7200 1950 2    60   Output ~ 0
LEFT1
Text HLabel 7200 2050 2    60   Output ~ 0
LEFT2
Text HLabel 7200 2150 2    60   Output ~ 0
LEFT3
Text HLabel 7200 3100 2    60   Output ~ 0
LEFT4
Text HLabel 7200 3200 2    60   Output ~ 0
LEFT5
Text HLabel 7200 3300 2    60   Output ~ 0
LEFT6
Text HLabel 7200 3400 2    60   Output ~ 0
LEFT7
Text HLabel 7200 4350 2    60   Output ~ 0
RIGHT0
Text HLabel 7200 4450 2    60   Output ~ 0
RIGHT1
Text HLabel 7200 4550 2    60   Output ~ 0
RIGHT2
Text HLabel 7200 4650 2    60   Output ~ 0
RIGHT3
Text HLabel 7200 5600 2    60   Output ~ 0
RIGHT4
Text HLabel 7200 5700 2    60   Output ~ 0
RIGHT5
Text HLabel 7200 5800 2    60   Output ~ 0
RIGHT6
Text HLabel 7200 5900 2    60   Output ~ 0
RIGHT7
Text Notes 7150 6800 0    60   ~ 0
GP registers
$EndSCHEMATC
