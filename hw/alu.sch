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
Sheet 8 10
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
L 74LS181 U701
U 1 1 5947DB88
P 4600 3300
F 0 "U701" H 4860 4100 50  0000 C CNN
F 1 "74HC181" H 4890 2490 50  0000 C CNN
F 2 "" H 4600 3300 50  0001 C CNN
F 3 "" H 4600 3300 50  0001 C CNN
	1    4600 3300
	1    0    0    -1  
$EndComp
$Comp
L 74LS181 U702
U 1 1 5947DBB7
P 4600 6400
F 0 "U702" H 4860 7200 50  0000 C CNN
F 1 "74HC181" H 4890 5590 50  0000 C CNN
F 2 "" H 4600 6400 50  0001 C CNN
F 3 "" H 4600 6400 50  0001 C CNN
	1    4600 6400
	1    0    0    -1  
$EndComp
$Comp
L 74LS182 U703
U 1 1 5947DC18
P 4600 4900
F 0 "U703" H 4650 4800 50  0000 C CNN
F 1 "74HC182" H 4650 4600 50  0000 C CNN
F 2 "" H 4600 4900 50  0001 C CNN
F 3 "" H 4600 4900 50  0001 C CNN
	1    4600 4900
	1    0    0    -1  
$EndComp
Text HLabel 1000 650  0    60   Input ~ 0
LEFT0
Text HLabel 1000 750  0    60   Input ~ 0
LEFT1
Text HLabel 1000 850  0    60   Input ~ 0
LEFT2
Text HLabel 1000 950  0    60   Input ~ 0
LEFT3
Text HLabel 1000 1050 0    60   Input ~ 0
LEFT4
Text HLabel 1000 1150 0    60   Input ~ 0
LEFT5
Text HLabel 1000 1250 0    60   Input ~ 0
LEFT6
Text HLabel 1000 1350 0    60   Input ~ 0
LEFT7
Text Label 1050 650  0    60   ~ 0
LEFT0
Text Label 1050 750  0    60   ~ 0
LEFT1
Text Label 1050 850  0    60   ~ 0
LEFT2
Text Label 1050 950  0    60   ~ 0
LEFT3
Text Label 1050 1050 0    60   ~ 0
LEFT4
Text Label 1050 1150 0    60   ~ 0
LEFT5
Text Label 1050 1250 0    60   ~ 0
LEFT6
Text Label 1050 1350 0    60   ~ 0
LEFT7
Text HLabel 1000 1650 0    60   Input ~ 0
RIGHT0
Text HLabel 1000 1750 0    60   Input ~ 0
RIGHT1
Text HLabel 1000 1850 0    60   Input ~ 0
RIGHT2
Text HLabel 1000 1950 0    60   Input ~ 0
RIGHT3
Text HLabel 1000 2050 0    60   Input ~ 0
RIGHT4
Text HLabel 1000 2150 0    60   Input ~ 0
RIGHT5
Text HLabel 1000 2250 0    60   Input ~ 0
RIGHT6
Text HLabel 1000 2350 0    60   Input ~ 0
RIGHT7
Entry Wire Line
	2450 650  2550 750 
Entry Wire Line
	2450 750  2550 850 
Entry Wire Line
	2450 850  2550 950 
Entry Wire Line
	2450 950  2550 1050
Entry Wire Line
	2450 1050 2550 1150
Entry Wire Line
	2450 1150 2550 1250
Entry Wire Line
	2450 1250 2550 1350
Entry Wire Line
	2450 1350 2550 1450
Text Label 3500 2600 0    60   ~ 0
LEFT0
Text Label 3500 2700 0    60   ~ 0
LEFT1
Text Label 3500 2800 0    60   ~ 0
LEFT2
Text Label 3500 2900 0    60   ~ 0
LEFT3
Entry Wire Line
	2550 2500 2650 2600
Entry Wire Line
	2550 2600 2650 2700
Entry Wire Line
	2550 2700 2650 2800
Entry Wire Line
	2550 2800 2650 2900
Text Label 3400 5700 0    60   ~ 0
LEFT4
Text Label 3400 5800 0    60   ~ 0
LEFT5
Text Label 3400 5900 0    60   ~ 0
LEFT6
Text Label 3400 6000 0    60   ~ 0
LEFT7
Entry Wire Line
	2550 5600 2650 5700
Entry Wire Line
	2550 5700 2650 5800
Entry Wire Line
	2550 5800 2650 5900
Entry Wire Line
	2550 5900 2650 6000
Text Label 1050 1650 0    60   ~ 0
RIGHT0
Text Label 1050 1750 0    60   ~ 0
RIGHT1
Text Label 1050 1850 0    60   ~ 0
RIGHT2
Text Label 1050 1950 0    60   ~ 0
RIGHT3
Text Label 1050 2050 0    60   ~ 0
RIGHT4
Text Label 1050 2150 0    60   ~ 0
RIGHT5
Text Label 1050 2250 0    60   ~ 0
RIGHT6
Text Label 1050 2350 0    60   ~ 0
RIGHT7
Entry Wire Line
	2050 1650 2150 1750
Entry Wire Line
	2050 1950 2150 2050
Entry Wire Line
	2050 2050 2150 2150
Entry Wire Line
	2050 2150 2150 2250
Entry Wire Line
	2050 2250 2150 2350
Entry Wire Line
	2050 2350 2150 2450
Text Label 3450 3000 0    60   ~ 0
RIGHT0
Text Label 3450 3100 0    60   ~ 0
RIGHT1
Text Label 3450 3200 0    60   ~ 0
RIGHT2
Text Label 3450 3300 0    60   ~ 0
RIGHT3
Entry Wire Line
	2150 2900 2250 3000
Entry Wire Line
	2150 3000 2250 3100
Entry Wire Line
	2150 3100 2250 3200
Entry Wire Line
	2150 3200 2250 3300
Entry Wire Line
	2050 1750 2150 1850
Entry Wire Line
	2050 1850 2150 1950
Text Label 3350 6100 0    60   ~ 0
RIGHT4
Text Label 3350 6200 0    60   ~ 0
RIGHT5
Text Label 3350 6300 0    60   ~ 0
RIGHT6
Text Label 3350 6400 0    60   ~ 0
RIGHT7
Entry Wire Line
	2150 6000 2250 6100
Entry Wire Line
	2150 6100 2250 6200
Entry Wire Line
	2150 6200 2250 6300
Entry Wire Line
	2150 6300 2250 6400
Text Notes 7150 6750 0    60   ~ 0
ALU
Text HLabel 1000 2750 0    60   Input ~ 0
FUNC0
Text HLabel 1000 2850 0    60   Input ~ 0
FUNC1
Text HLabel 1000 2950 0    60   Input ~ 0
FUNC2
Text HLabel 1000 3050 0    60   Input ~ 0
FUNC3
Text Label 1050 2750 0    60   ~ 0
FUNC0
Text Label 1050 2850 0    60   ~ 0
FUNC1
Text Label 1050 2950 0    60   ~ 0
FUNC2
Text Label 1050 3050 0    60   ~ 0
FUNC3
Entry Wire Line
	1450 2750 1550 2850
Entry Wire Line
	1450 2850 1550 2950
Entry Wire Line
	1450 2950 1550 3050
Entry Wire Line
	1450 3050 1550 3150
Text Label 3450 3450 0    60   ~ 0
FUNC0
Text Label 3450 3550 0    60   ~ 0
FUNC1
Text Label 3450 3650 0    60   ~ 0
FUNC2
Text Label 3450 3750 0    60   ~ 0
FUNC3
Entry Wire Line
	1550 3350 1650 3450
Entry Wire Line
	1550 3450 1650 3550
Entry Wire Line
	1550 3550 1650 3650
Entry Wire Line
	1550 3650 1650 3750
Text Label 3350 6550 0    60   ~ 0
FUNC0
Text Label 3350 6650 0    60   ~ 0
FUNC1
Text Label 3350 6750 0    60   ~ 0
FUNC2
Text Label 3350 6850 0    60   ~ 0
FUNC3
Entry Wire Line
	1550 6450 1650 6550
Entry Wire Line
	1550 6550 1650 6650
Entry Wire Line
	1550 6650 1650 6750
Entry Wire Line
	1550 6750 1650 6850
Text HLabel 1000 3900 0    60   Input ~ 0
MODE
Text HLabel 1000 4000 0    60   Input ~ 0
-CIN
Text Label 5350 3850 0    60   ~ 0
-GLO
Text Label 5350 3950 0    60   ~ 0
-PLO
Text Label 3450 4450 0    60   ~ 0
-PLO
Text Label 3450 4850 0    60   ~ 0
-GLO
$Comp
L VCC #PWR?
U 1 1 594832BD
P 3100 4300
F 0 "#PWR?" H 3100 4150 50  0001 C CNN
F 1 "VCC" H 3100 4450 50  0000 C CNN
F 2 "" H 3100 4300 50  0001 C CNN
F 3 "" H 3100 4300 50  0001 C CNN
	1    3100 4300
	1    0    0    -1  
$EndComp
Text Label 5350 4550 0    60   ~ 0
-CHI
Text Label 3400 7100 0    60   ~ 0
-CHI
Text Label 5350 2800 0    60   ~ 0
OUT0
Text Label 5350 2900 0    60   ~ 0
OUT1
Text Label 5350 3000 0    60   ~ 0
OUT2
Text Label 5350 3100 0    60   ~ 0
OUT3
Text Label 5350 5900 0    60   ~ 0
OUT4
Text Label 5350 6000 0    60   ~ 0
OUT5
Text Label 5350 6100 0    60   ~ 0
OUT6
Text Label 5350 6200 0    60   ~ 0
OUT7
Entry Wire Line
	6400 2800 6500 2700
Entry Wire Line
	6400 2900 6500 2800
Entry Wire Line
	6400 3000 6500 2900
Entry Wire Line
	6400 3100 6500 3000
Entry Wire Line
	6400 5900 6500 5800
Entry Wire Line
	6400 6000 6500 5900
Entry Wire Line
	6400 6100 6500 6000
Entry Wire Line
	6400 6200 6500 6100
Entry Wire Line
	6500 1850 6600 1750
Entry Wire Line
	6500 1950 6600 1850
Entry Wire Line
	6500 2050 6600 1950
Entry Wire Line
	6500 2150 6600 2050
Entry Wire Line
	6500 2250 6600 2150
Entry Wire Line
	6500 2350 6600 2250
Entry Wire Line
	6500 2450 6600 2350
Entry Wire Line
	6500 2550 6600 2450
Text Label 8450 1750 0    60   ~ 0
OUT0
Text Label 8450 1850 0    60   ~ 0
OUT1
Text Label 8450 1950 0    60   ~ 0
OUT2
Text Label 8450 2050 0    60   ~ 0
OUT3
Text Label 8450 2150 0    60   ~ 0
OUT4
Text Label 8450 2250 0    60   ~ 0
OUT5
Text Label 8450 2350 0    60   ~ 0
OUT6
Text Label 8450 2450 0    60   ~ 0
OUT7
Text HLabel 7600 2750 0    60   Input ~ 0
-rdALU
Text HLabel 10550 1750 2    60   Output ~ 0
ALU0
Text HLabel 10550 1850 2    60   Output ~ 0
ALU1
Text HLabel 10550 1950 2    60   Output ~ 0
ALU2
Text HLabel 10550 2050 2    60   Output ~ 0
ALU3
Text HLabel 10550 2150 2    60   Output ~ 0
ALU4
Text HLabel 10550 2250 2    60   Output ~ 0
ALU5
Text HLabel 10550 2350 2    60   Output ~ 0
ALU6
Text HLabel 10550 2450 2    60   Output ~ 0
ALU7
$Comp
L R R701
U 1 1 5948610C
P 6750 3400
F 0 "R701" V 6830 3400 50  0000 C CNN
F 1 "4.7K" V 6750 3400 50  0000 C CNN
F 2 "" V 6680 3400 50  0001 C CNN
F 3 "" H 6750 3400 50  0001 C CNN
	1    6750 3400
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 59486279
P 6750 3250
F 0 "#PWR?" H 6750 3100 50  0001 C CNN
F 1 "VCC" H 6750 3400 50  0000 C CNN
F 2 "" H 6750 3250 50  0001 C CNN
F 3 "" H 6750 3250 50  0001 C CNN
	1    6750 3250
	1    0    0    -1  
$EndComp
Text Notes 9000 3500 0    60   ~ 0
condition code register
Wire Wire Line
	1000 650  2450 650 
Wire Wire Line
	1000 750  2450 750 
Wire Wire Line
	1000 850  2450 850 
Wire Wire Line
	1000 950  2450 950 
Wire Wire Line
	1000 1050 2450 1050
Wire Wire Line
	1000 1150 2450 1150
Wire Wire Line
	1000 1250 2450 1250
Wire Wire Line
	1000 1350 2450 1350
Wire Bus Line
	2550 750  2550 5900
Wire Wire Line
	2650 2600 3900 2600
Wire Wire Line
	2650 2700 3900 2700
Wire Wire Line
	2650 2800 3900 2800
Wire Wire Line
	2650 2900 3900 2900
Wire Wire Line
	3900 5700 2650 5700
Wire Wire Line
	3900 5800 2650 5800
Wire Wire Line
	3900 5900 2650 5900
Wire Wire Line
	3900 6000 2650 6000
Wire Wire Line
	1000 1650 2050 1650
Wire Wire Line
	1000 1850 2050 1850
Wire Wire Line
	1000 1950 2050 1950
Wire Wire Line
	1000 2050 2050 2050
Wire Wire Line
	1000 2150 2050 2150
Wire Wire Line
	1000 2250 2050 2250
Wire Wire Line
	1000 2350 2050 2350
Wire Bus Line
	2150 1750 2150 6300
Wire Wire Line
	3900 3000 2250 3000
Wire Wire Line
	3900 3100 2250 3100
Wire Wire Line
	3900 3200 2250 3200
Wire Wire Line
	3900 3300 2250 3300
Wire Wire Line
	1000 1750 2050 1750
Wire Wire Line
	3900 6100 2250 6100
Wire Wire Line
	3900 6200 2250 6200
Wire Wire Line
	3900 6300 2250 6300
Wire Wire Line
	3900 6400 2250 6400
Wire Wire Line
	1000 2750 1450 2750
Wire Wire Line
	1000 2850 1450 2850
Wire Wire Line
	1000 2950 1450 2950
Wire Wire Line
	1000 3050 1450 3050
Wire Bus Line
	1550 2850 1550 6750
Wire Wire Line
	3900 3450 1650 3450
Wire Wire Line
	3900 3550 1650 3550
Wire Wire Line
	3900 3650 1650 3650
Wire Wire Line
	3900 3750 1650 3750
Wire Wire Line
	3900 6550 1650 6550
Wire Wire Line
	3900 6650 1650 6650
Wire Wire Line
	3900 6750 1650 6750
Wire Wire Line
	3900 6850 1650 6850
Wire Wire Line
	1000 3900 3900 3900
Wire Wire Line
	1000 4000 3900 4000
Wire Wire Line
	5300 3850 5700 3850
Wire Wire Line
	5300 3950 5700 3950
Wire Wire Line
	3900 4450 3400 4450
Wire Wire Line
	3900 4850 3400 4850
Wire Wire Line
	3900 4550 3100 4550
Wire Wire Line
	3100 4650 3900 4650
Connection ~ 3100 4550
Wire Wire Line
	3100 4750 3900 4750
Connection ~ 3100 4650
Wire Wire Line
	3100 4950 3900 4950
Connection ~ 3100 4750
Wire Wire Line
	3100 5050 3900 5050
Connection ~ 3100 4950
Wire Wire Line
	2800 5300 3900 5300
Connection ~ 3100 5050
Wire Wire Line
	3100 5150 3900 5150
Wire Wire Line
	5300 4550 5600 4550
Wire Wire Line
	3900 7000 1150 7000
Wire Wire Line
	1150 7000 1150 3900
Connection ~ 1150 3900
Wire Wire Line
	3900 7100 3350 7100
Wire Wire Line
	5300 2800 6400 2800
Wire Wire Line
	5300 2900 6400 2900
Wire Wire Line
	5300 3000 6400 3000
Wire Wire Line
	5300 3100 6400 3100
Wire Wire Line
	5300 5900 6400 5900
Wire Wire Line
	5300 6000 6400 6000
Wire Wire Line
	5300 6100 6400 6100
Wire Wire Line
	5300 6200 6400 6200
Wire Bus Line
	6500 1850 6500 6100
Wire Wire Line
	6600 1750 8800 1750
Wire Wire Line
	6600 1850 8800 1850
Wire Wire Line
	6600 1950 8800 1950
Wire Wire Line
	6600 2050 8800 2050
Wire Wire Line
	6600 2150 8800 2150
Wire Wire Line
	6600 2250 8800 2250
Wire Wire Line
	6600 2350 8800 2350
Wire Wire Line
	6600 2450 8800 2450
Wire Wire Line
	8800 2750 7600 2750
Wire Wire Line
	10200 1750 10550 1750
Wire Wire Line
	10200 1850 10550 1850
Wire Wire Line
	10200 1950 10550 1950
Wire Wire Line
	10200 2050 10550 2050
Wire Wire Line
	10200 2150 10550 2150
Wire Wire Line
	10200 2250 10550 2250
Wire Wire Line
	10200 2350 10550 2350
Wire Wire Line
	10200 2450 10550 2450
Wire Wire Line
	5300 3650 8800 3650
Wire Wire Line
	5300 6750 5900 6750
Wire Wire Line
	5900 6750 5900 3650
Connection ~ 5900 3650
Wire Wire Line
	6750 3550 6750 3650
Connection ~ 6750 3650
Wire Wire Line
	5300 6650 6000 6650
Wire Wire Line
	6000 6650 6000 3850
Wire Wire Line
	6000 3850 8800 3850
Wire Wire Line
	10200 3650 10550 3650
Wire Wire Line
	10200 3850 10550 3850
Text HLabel 10550 3650 2    60   Output ~ 0
EQ
Text HLabel 10550 3850 2    60   Output ~ 0
-COUT
Wire Wire Line
	3100 4300 3100 5150
Wire Wire Line
	2800 5300 2800 4000
Connection ~ 2800 4000
$Comp
L 74LS175 U705
U 1 1 594A6E0F
P 9500 4100
F 0 "U705" H 9500 4100 50  0000 C CNN
F 1 "74HC175" H 9600 3700 50  0000 C CNN
F 2 "" H 9500 4100 50  0001 C CNN
F 3 "" H 9500 4100 50  0001 C CNN
	1    9500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4050 8450 4050
Wire Wire Line
	8450 4050 8450 4850
Wire Wire Line
	8800 4250 8450 4250
Connection ~ 8450 4250
$Comp
L GND #PWR?
U 1 1 594A7340
P 8450 4850
F 0 "#PWR?" H 8450 4600 50  0001 C CNN
F 1 "GND" H 8450 4700 50  0000 C CNN
F 2 "" H 8450 4850 50  0001 C CNN
F 3 "" H 8450 4850 50  0001 C CNN
	1    8450 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 4550 8150 4550
Wire Wire Line
	8150 4550 8150 4300
$Comp
L VCC #PWR?
U 1 1 594A7432
P 8150 4300
F 0 "#PWR?" H 8150 4150 50  0001 C CNN
F 1 "VCC" H 8150 4450 50  0000 C CNN
F 2 "" H 8150 4300 50  0001 C CNN
F 3 "" H 8150 4300 50  0001 C CNN
	1    8150 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 3750 10550 3750
Wire Wire Line
	10200 3950 10550 3950
Text HLabel 10550 3750 2    60   Output ~ 0
-EQ
Text HLabel 10550 3950 2    60   Output ~ 0
COUT
Text HLabel 7600 4450 0    60   Input ~ 0
-latchCC
Wire Wire Line
	7600 4450 8800 4450
Text Notes 9100 1500 0    60   ~ 0
ALU output latch
$Comp
L 74LS573 U704
U 1 1 599710FF
P 9500 2250
F 0 "U704" H 9650 2850 50  0000 C CNN
F 1 "74HC573" H 9750 1650 50  0000 C CNN
F 2 "" H 9500 2250 50  0001 C CNN
F 3 "" H 9500 2250 50  0001 C CNN
	1    9500 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2650 7600 2650
Text HLabel 7600 2650 0    60   Input ~ 0
-latchALU
$EndSCHEMATC
