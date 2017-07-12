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
Sheet 10 10
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
bus control and address registers
$Comp
L 74LS541 U901
U 1 1 595E91CD
P 4500 1700
F 0 "U901" H 4500 2275 50  0000 C BNN
F 1 "74HC541" H 4500 1125 50  0000 C TNN
F 2 "" H 4500 1700 50  0001 C CNN
F 3 "" H 4500 1700 50  0001 C CNN
	1    4500 1700
	1    0    0    -1  
$EndComp
$Comp
L 74LS541 U902
U 1 1 595E9238
P 4500 3200
F 0 "U902" H 4500 3775 50  0000 C BNN
F 1 "74HC541" H 4500 2625 50  0000 C TNN
F 2 "" H 4500 3200 50  0001 C CNN
F 3 "" H 4500 3200 50  0001 C CNN
	1    4500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1200 3300 1200
Wire Wire Line
	3800 1300 3300 1300
Wire Wire Line
	3800 1400 3300 1400
Wire Wire Line
	3800 1500 3300 1500
Wire Wire Line
	3800 1600 3300 1600
Wire Wire Line
	3800 1700 3300 1700
Wire Wire Line
	3800 1800 3300 1800
Wire Wire Line
	3800 1900 3300 1900
Wire Wire Line
	3800 2200 3650 2200
Wire Wire Line
	3650 2200 3650 2300
Wire Wire Line
	3800 2100 3300 2100
$Comp
L GND #PWR?
U 1 1 595E928D
P 3650 2300
F 0 "#PWR?" H 3650 2050 50  0001 C CNN
F 1 "GND" H 3650 2150 50  0000 C CNN
F 2 "" H 3650 2300 50  0001 C CNN
F 3 "" H 3650 2300 50  0001 C CNN
	1    3650 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2700 3300 2700
Wire Wire Line
	3800 2800 3300 2800
Wire Wire Line
	3800 2900 3300 2900
Wire Wire Line
	3800 3000 3300 3000
Wire Wire Line
	3800 3100 3300 3100
Wire Wire Line
	3800 3200 3300 3200
Wire Wire Line
	3800 3300 3300 3300
Wire Wire Line
	3800 3400 3300 3400
Wire Wire Line
	3800 3700 3650 3700
Wire Wire Line
	3650 3700 3650 3800
Wire Wire Line
	3800 3600 3300 3600
$Comp
L GND #PWR?
U 1 1 595E92CA
P 3650 3800
F 0 "#PWR?" H 3650 3550 50  0001 C CNN
F 1 "GND" H 3650 3650 50  0000 C CNN
F 2 "" H 3650 3800 50  0001 C CNN
F 3 "" H 3650 3800 50  0001 C CNN
	1    3650 3800
	1    0    0    -1  
$EndComp
Text Label 3350 1200 0    60   ~ 0
LEFT0
Text Label 3350 1300 0    60   ~ 0
LEFT1
Text Label 3350 1400 0    60   ~ 0
LEFT2
Text Label 3350 1500 0    60   ~ 0
LEFT3
Text Label 3350 1600 0    60   ~ 0
LEFT4
Text Label 3350 1700 0    60   ~ 0
LEFT5
Text Label 3350 1800 0    60   ~ 0
LEFT6
Text Label 3350 1900 0    60   ~ 0
LEFT7
Text Label 3350 2700 0    60   ~ 0
RIGHT0
Text Label 3350 2800 0    60   ~ 0
RIGHT1
Text Label 3350 2900 0    60   ~ 0
RIGHT2
Text Label 3350 3000 0    60   ~ 0
RIGHT3
Text Label 3350 3100 0    60   ~ 0
RIGHT4
Text Label 3350 3200 0    60   ~ 0
RIGHT5
Text Label 3350 3300 0    60   ~ 0
RIGHT6
Text Label 3350 3400 0    60   ~ 0
RIGHT7
Text Label 3350 2100 0    60   ~ 0
-driveAddr
Text Label 3350 3600 0    60   ~ 0
-driveAddr
Wire Wire Line
	5200 1200 5700 1200
Wire Wire Line
	5200 1300 5700 1300
Wire Wire Line
	5200 1400 5700 1400
Wire Wire Line
	5200 1500 5700 1500
Wire Wire Line
	5200 1600 5700 1600
Wire Wire Line
	5200 1700 5700 1700
Wire Wire Line
	5200 1800 5700 1800
Wire Wire Line
	5200 1900 5700 1900
Wire Wire Line
	5200 2700 5700 2700
Wire Wire Line
	5200 2800 5700 2800
Wire Wire Line
	5200 2900 5700 2900
Wire Wire Line
	5200 3000 5700 3000
Wire Wire Line
	5200 3100 5700 3100
Wire Wire Line
	5200 3200 5700 3200
Wire Wire Line
	5200 3300 5700 3300
Wire Wire Line
	5200 3400 5700 3400
Text Label 5450 1200 0    60   ~ 0
A0
Text Label 5450 1300 0    60   ~ 0
A1
Text Label 5450 1400 0    60   ~ 0
A2
Text Label 5450 1500 0    60   ~ 0
A3
Text Label 5450 1600 0    60   ~ 0
A4
Text Label 5450 1700 0    60   ~ 0
A5
Text Label 5450 1800 0    60   ~ 0
A6
Text Label 5450 1900 0    60   ~ 0
A7
Text Label 5450 2700 0    60   ~ 0
A8
Text Label 5450 2800 0    60   ~ 0
A9
Text Label 5450 2900 0    60   ~ 0
A10
Text Label 5450 3000 0    60   ~ 0
A11
Text Label 5450 3100 0    60   ~ 0
A12
Text Label 5450 3200 0    60   ~ 0
A13
Text Label 5450 3300 0    60   ~ 0
A14
Text Label 5450 3400 0    60   ~ 0
A15
$Comp
L 74LS245 U903
U 1 1 595F1B22
P 8550 1700
F 0 "U903" H 8650 2275 50  0000 L BNN
F 1 "74HC245" H 8600 1125 50  0000 L TNN
F 2 "" H 8550 1700 50  0001 C CNN
F 3 "" H 8550 1700 50  0001 C CNN
	1    8550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1200 7250 1200
Wire Wire Line
	7850 1300 7250 1300
Wire Wire Line
	7850 1400 7250 1400
Wire Wire Line
	7850 1500 7250 1500
Wire Wire Line
	7850 1600 7250 1600
Wire Wire Line
	7850 1700 7250 1700
Wire Wire Line
	7850 1800 7250 1800
Wire Wire Line
	7850 1900 7250 1900
Text Label 7350 1200 0    60   ~ 0
ALU0
Text Label 7350 1300 0    60   ~ 0
ALU1
Text Label 7350 1400 0    60   ~ 0
ALU2
Text Label 7350 1500 0    60   ~ 0
ALU3
Text Label 7350 1600 0    60   ~ 0
ALU4
Text Label 7350 1700 0    60   ~ 0
ALU5
Text Label 7350 1800 0    60   ~ 0
ALU6
Text Label 7350 1900 0    60   ~ 0
ALU7
Wire Wire Line
	9250 1200 9850 1200
Wire Wire Line
	9250 1300 9850 1300
Wire Wire Line
	9250 1400 9850 1400
Wire Wire Line
	9250 1500 9850 1500
Wire Wire Line
	9250 1600 9850 1600
Wire Wire Line
	9250 1700 9850 1700
Wire Wire Line
	9250 1800 9850 1800
Wire Wire Line
	9250 1900 9850 1900
Text Label 9600 1200 0    60   ~ 0
D0
Text Label 9600 1300 0    60   ~ 0
D1
Text Label 9600 1400 0    60   ~ 0
D2
Text Label 9600 1500 0    60   ~ 0
D3
Text Label 9600 1600 0    60   ~ 0
D4
Text Label 9600 1700 0    60   ~ 0
D5
Text Label 9600 1800 0    60   ~ 0
D6
Text Label 9600 1900 0    60   ~ 0
D7
$Comp
L 74LS574 U904
U 1 1 595F244F
P 4500 5000
F 0 "U904" H 4500 5000 50  0000 C CNN
F 1 "74HC574" H 4550 4650 50  0000 C CNN
F 2 "" H 4500 5000 50  0001 C CNN
F 3 "" H 4500 5000 50  0001 C CNN
	1    4500 5000
	1    0    0    -1  
$EndComp
$Comp
L 74LS574 U905
U 1 1 595F246E
P 4500 6300
F 0 "U905" H 4500 6300 50  0000 C CNN
F 1 "74HC574" H 4550 5950 50  0000 C CNN
F 2 "" H 4500 6300 50  0001 C CNN
F 3 "" H 4500 6300 50  0001 C CNN
	1    4500 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4500 3300 4500
Wire Wire Line
	3800 4600 3300 4600
Wire Wire Line
	3800 4700 3300 4700
Wire Wire Line
	3800 4800 3300 4800
Wire Wire Line
	3800 4900 3300 4900
Wire Wire Line
	3800 5000 3300 5000
Wire Wire Line
	3800 5100 3300 5100
Wire Wire Line
	3800 5200 3300 5200
Wire Wire Line
	3800 5800 3300 5800
Wire Wire Line
	3800 5900 3300 5900
Wire Wire Line
	3800 6000 3300 6000
Wire Wire Line
	3800 6100 3300 6100
Wire Wire Line
	3800 6200 3300 6200
Wire Wire Line
	3800 6300 3300 6300
Wire Wire Line
	3800 6400 3300 6400
Wire Wire Line
	3800 6500 3300 6500
Text Label 3350 4500 0    60   ~ 0
ALU0
Text Label 3350 4600 0    60   ~ 0
ALU1
Text Label 3350 4700 0    60   ~ 0
ALU2
Text Label 3350 4800 0    60   ~ 0
ALU3
Text Label 3350 4900 0    60   ~ 0
ALU4
Text Label 3350 5000 0    60   ~ 0
ALU5
Text Label 3350 5100 0    60   ~ 0
ALU6
Text Label 3350 5200 0    60   ~ 0
ALU7
Text Label 3350 5800 0    60   ~ 0
ALU0
Text Label 3350 5900 0    60   ~ 0
ALU1
Text Label 3350 6000 0    60   ~ 0
ALU2
Text Label 3350 6100 0    60   ~ 0
ALU3
Text Label 3350 6200 0    60   ~ 0
ALU4
Text Label 3350 6300 0    60   ~ 0
ALU5
Text Label 3350 6400 0    60   ~ 0
ALU6
Text Label 3350 6500 0    60   ~ 0
ALU7
Wire Wire Line
	1850 1200 2300 1200
Wire Wire Line
	1850 1300 2300 1300
Wire Wire Line
	1850 1400 2300 1400
Wire Wire Line
	1850 1500 2300 1500
Wire Wire Line
	1850 1600 2300 1600
Wire Wire Line
	1850 1700 2300 1700
Wire Wire Line
	1850 1800 2300 1800
Wire Wire Line
	1850 1900 2300 1900
Wire Wire Line
	1850 2100 2300 2100
Wire Wire Line
	1850 2200 2300 2200
Wire Wire Line
	1850 2300 2300 2300
Wire Wire Line
	1850 2400 2300 2400
Wire Wire Line
	1850 2500 2300 2500
Wire Wire Line
	1850 2600 2300 2600
Wire Wire Line
	1850 2700 2300 2700
Wire Wire Line
	1850 2800 2300 2800
Wire Wire Line
	1850 3000 2300 3000
Wire Wire Line
	1850 3100 2300 3100
Wire Wire Line
	1850 3200 2300 3200
Wire Wire Line
	1850 3300 2300 3300
Wire Wire Line
	1850 3400 2300 3400
Wire Wire Line
	1850 3500 2300 3500
Wire Wire Line
	1850 3600 2300 3600
Wire Wire Line
	1850 3700 2300 3700
Text Label 1900 1200 0    60   ~ 0
ALU0
Text Label 1900 1300 0    60   ~ 0
ALU1
Text Label 1900 1400 0    60   ~ 0
ALU2
Text Label 1900 1500 0    60   ~ 0
ALU3
Text Label 1900 1600 0    60   ~ 0
ALU4
Text Label 1900 1700 0    60   ~ 0
ALU5
Text Label 1900 1800 0    60   ~ 0
ALU6
Text Label 1900 1900 0    60   ~ 0
ALU7
Text Label 1900 2100 0    60   ~ 0
LEFT0
Text Label 1900 2200 0    60   ~ 0
LEFT1
Text Label 1900 2300 0    60   ~ 0
LEFT2
Text Label 1900 2400 0    60   ~ 0
LEFT3
Text Label 1900 2500 0    60   ~ 0
LEFT4
Text Label 1900 2600 0    60   ~ 0
LEFT5
Text Label 1900 2700 0    60   ~ 0
LEFT6
Text Label 1900 2800 0    60   ~ 0
LEFT7
Text Label 1900 3000 0    60   ~ 0
RIGHT0
Text Label 1900 3100 0    60   ~ 0
RIGHT1
Text Label 1900 3200 0    60   ~ 0
RIGHT2
Text Label 1900 3300 0    60   ~ 0
RIGHT3
Text Label 1900 3400 0    60   ~ 0
RIGHT4
Text Label 1900 3500 0    60   ~ 0
RIGHT5
Text Label 1900 3600 0    60   ~ 0
RIGHT6
Text Label 1900 3700 0    60   ~ 0
RIGHT7
Wire Wire Line
	1850 4000 2300 4000
Wire Wire Line
	1850 4200 2300 4200
Wire Wire Line
	1850 4300 2300 4300
Wire Wire Line
	1850 4500 2300 4500
Wire Wire Line
	1850 4700 2300 4700
Wire Wire Line
	1850 4800 2300 4800
Text Label 1900 4000 0    60   ~ 0
-driveAddr
Text Label 1900 4200 0    60   ~ 0
-rwMem
Wire Wire Line
	7850 2200 7250 2200
Wire Wire Line
	7850 2100 7250 2100
Text Label 7350 2200 0    60   ~ 0
-rwMem
Text Label 7350 2100 0    60   ~ 0
memDir
Text Label 1900 4300 0    60   ~ 0
memDir
Wire Wire Line
	3800 5400 3300 5400
Wire Wire Line
	3800 5500 3300 5500
Wire Wire Line
	3800 6700 3300 6700
Wire Wire Line
	3800 6800 3300 6800
Text Label 3350 5400 0    60   ~ 0
-wrARLo
Text Label 3350 5500 0    60   ~ 0
-rdAR
Text Label 3350 6700 0    60   ~ 0
-wrARHi
Text Label 3350 6800 0    60   ~ 0
-rdAR
Text Label 1900 4500 0    60   ~ 0
-rdAR
Text Label 1900 4700 0    60   ~ 0
-wrARLo
Text Label 1900 4800 0    60   ~ 0
-wrARHi
Text HLabel 1850 1200 0    60   BiDi ~ 0
ALU0
Text HLabel 1850 1300 0    60   BiDi ~ 0
ALU1
Text HLabel 1850 1400 0    60   BiDi ~ 0
ALU2
Text HLabel 1850 1500 0    60   BiDi ~ 0
ALU3
Text HLabel 1850 1600 0    60   BiDi ~ 0
ALU4
Text HLabel 1850 1700 0    60   BiDi ~ 0
ALU5
Text HLabel 1850 1800 0    60   BiDi ~ 0
ALU6
Text HLabel 1850 1900 0    60   BiDi ~ 0
ALU7
Text HLabel 1850 2100 0    60   BiDi ~ 0
LEFT0
Text HLabel 1850 2200 0    60   BiDi ~ 0
LEFT1
Text HLabel 1850 2300 0    60   BiDi ~ 0
LEFT2
Text HLabel 1850 2400 0    60   BiDi ~ 0
LEFT3
Text HLabel 1850 2500 0    60   BiDi ~ 0
LEFT4
Text HLabel 1850 2600 0    60   BiDi ~ 0
LEFT5
Text HLabel 1850 2700 0    60   BiDi ~ 0
LEFT6
Text HLabel 1850 2800 0    60   BiDi ~ 0
LEFT7
Text HLabel 1850 3000 0    60   BiDi ~ 0
RIGHT0
Text HLabel 1850 3100 0    60   BiDi ~ 0
RIGHT1
Text HLabel 1850 3200 0    60   BiDi ~ 0
RIGHT2
Text HLabel 1850 3300 0    60   BiDi ~ 0
RIGHT3
Text HLabel 1850 3400 0    60   BiDi ~ 0
RIGHT4
Text HLabel 1850 3500 0    60   BiDi ~ 0
RIGHT5
Text HLabel 1850 3600 0    60   BiDi ~ 0
RIGHT6
Text HLabel 1850 3700 0    60   BiDi ~ 0
RIGHT7
Text HLabel 1850 4000 0    60   Input ~ 0
-driveAddr
Text HLabel 1850 4200 0    60   Input ~ 0
-rwMem
Text HLabel 1850 4300 0    60   Input ~ 0
memDir
Text HLabel 1850 4500 0    60   Input ~ 0
-rdAR
Text HLabel 1850 4700 0    60   Input ~ 0
-wrARLo
Text HLabel 1850 4800 0    60   Input ~ 0
-wrARHi
Text HLabel 9900 3000 2    60   Output ~ 0
A0
Text HLabel 9900 3100 2    60   Output ~ 0
A1
Text HLabel 9900 3200 2    60   Output ~ 0
A2
Text HLabel 9900 3300 2    60   Output ~ 0
A3
Text HLabel 9900 3400 2    60   Output ~ 0
A4
Text HLabel 9900 3500 2    60   Output ~ 0
A5
Text HLabel 9900 3600 2    60   Output ~ 0
A6
Text HLabel 9900 3700 2    60   Output ~ 0
A7
Text HLabel 9900 3800 2    60   Output ~ 0
A8
Text HLabel 9900 3900 2    60   Output ~ 0
A9
Text HLabel 9900 4000 2    60   Output ~ 0
A10
Text HLabel 9900 4100 2    60   Output ~ 0
A11
Text HLabel 9900 4200 2    60   Output ~ 0
A12
Text HLabel 9900 4300 2    60   Output ~ 0
A13
Text HLabel 9900 4400 2    60   Output ~ 0
A14
Text HLabel 9900 4500 2    60   Output ~ 0
A15
Text HLabel 9850 1200 2    60   BiDi ~ 0
D0
Text HLabel 9850 1300 2    60   BiDi ~ 0
D1
Text HLabel 9850 1400 2    60   BiDi ~ 0
D2
Text HLabel 9850 1500 2    60   BiDi ~ 0
D3
Text HLabel 9850 1600 2    60   BiDi ~ 0
D4
Text HLabel 9850 1700 2    60   BiDi ~ 0
D5
Text HLabel 9850 1800 2    60   BiDi ~ 0
D6
Text HLabel 9850 1900 2    60   BiDi ~ 0
D7
Text Notes 4000 950  0    60   ~ 0
address bus drivers
Text Notes 7950 950  0    60   ~ 0
external data bus transceiver
Text Notes 3900 4300 0    60   ~ 0
low/high address registers
Wire Wire Line
	5200 4500 5700 4500
Wire Wire Line
	5200 4600 5700 4600
Wire Wire Line
	5200 4700 5700 4700
Wire Wire Line
	5200 4800 5700 4800
Wire Wire Line
	5200 4900 5700 4900
Wire Wire Line
	5200 5000 5700 5000
Wire Wire Line
	5200 5100 5700 5100
Wire Wire Line
	5200 5200 5700 5200
Wire Wire Line
	5200 5800 5700 5800
Wire Wire Line
	5200 5900 5700 5900
Wire Wire Line
	5200 6000 5700 6000
Wire Wire Line
	5200 6100 5700 6100
Wire Wire Line
	5200 6200 5700 6200
Wire Wire Line
	5200 6300 5700 6300
Wire Wire Line
	5200 6400 5700 6400
Wire Wire Line
	5200 6500 5700 6500
Text Label 5450 4500 0    60   ~ 0
A0
Text Label 5450 4600 0    60   ~ 0
A1
Text Label 5450 4700 0    60   ~ 0
A2
Text Label 5450 4800 0    60   ~ 0
A3
Text Label 5450 4900 0    60   ~ 0
A4
Text Label 5450 5000 0    60   ~ 0
A5
Text Label 5450 5100 0    60   ~ 0
A6
Text Label 5450 5200 0    60   ~ 0
A7
Text Label 5450 5800 0    60   ~ 0
A8
Text Label 5450 5900 0    60   ~ 0
A9
Text Label 5450 6000 0    60   ~ 0
A10
Text Label 5450 6100 0    60   ~ 0
A11
Text Label 5450 6200 0    60   ~ 0
A12
Text Label 5450 6300 0    60   ~ 0
A13
Text Label 5450 6400 0    60   ~ 0
A14
Text Label 5450 6500 0    60   ~ 0
A15
Wire Wire Line
	9400 3000 9900 3000
Wire Wire Line
	9400 3100 9900 3100
Wire Wire Line
	9400 3200 9900 3200
Wire Wire Line
	9400 3300 9900 3300
Wire Wire Line
	9400 3400 9900 3400
Wire Wire Line
	9400 3500 9900 3500
Wire Wire Line
	9400 3600 9900 3600
Wire Wire Line
	9400 3700 9900 3700
Wire Wire Line
	9400 3800 9900 3800
Wire Wire Line
	9400 3900 9900 3900
Wire Wire Line
	9400 4000 9900 4000
Wire Wire Line
	9400 4100 9900 4100
Wire Wire Line
	9400 4200 9900 4200
Wire Wire Line
	9400 4300 9900 4300
Wire Wire Line
	9400 4400 9900 4400
Wire Wire Line
	9400 4500 9900 4500
Text Label 9650 3000 0    60   ~ 0
A0
Text Label 9650 3100 0    60   ~ 0
A1
Text Label 9650 3200 0    60   ~ 0
A2
Text Label 9650 3300 0    60   ~ 0
A3
Text Label 9650 3400 0    60   ~ 0
A4
Text Label 9650 3500 0    60   ~ 0
A5
Text Label 9650 3600 0    60   ~ 0
A6
Text Label 9650 3700 0    60   ~ 0
A7
Text Label 9650 3800 0    60   ~ 0
A8
Text Label 9650 3900 0    60   ~ 0
A9
Text Label 9650 4000 0    60   ~ 0
A10
Text Label 9650 4100 0    60   ~ 0
A11
Text Label 9650 4200 0    60   ~ 0
A12
Text Label 9650 4300 0    60   ~ 0
A13
Text Label 9650 4400 0    60   ~ 0
A14
Text Label 9650 4500 0    60   ~ 0
A15
$EndSCHEMATC
