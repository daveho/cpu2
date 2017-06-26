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
Text HLabel 900  650  0    60   Input ~ 0
OPC0
Text HLabel 900  750  0    60   Input ~ 0
OPC1
Text HLabel 900  850  0    60   Input ~ 0
OPC2
Text HLabel 900  950  0    60   Input ~ 0
OPC3
Text HLabel 900  1050 0    60   Input ~ 0
OPC4
Text HLabel 900  1150 0    60   Input ~ 0
OPC5
Text HLabel 900  1250 0    60   Input ~ 0
OPC6
Text HLabel 900  1350 0    60   Input ~ 0
OPC7
Text Label 1050 650  0    60   ~ 0
OPC0
Text Label 1050 750  0    60   ~ 0
OPC1
Text Label 1050 850  0    60   ~ 0
OPC2
Text Label 1050 950  0    60   ~ 0
OPC3
Text Label 1050 1050 0    60   ~ 0
OPC4
Text Label 1050 1150 0    60   ~ 0
OPC5
Text Label 1050 1250 0    60   ~ 0
OPC6
Text Label 1050 1350 0    60   ~ 0
OPC7
Text HLabel 950  1850 0    60   Input ~ 0
CLK
$Comp
L 74LS00 U801
U 1 1 594ED24F
P 1850 2150
F 0 "U801" H 1850 2200 50  0000 C CNN
F 1 "74HC00" H 1850 2050 50  0000 C CNN
F 2 "" H 1850 2150 50  0001 C CNN
F 3 "" H 1850 2150 50  0001 C CNN
	1    1850 2150
	1    0    0    -1  
$EndComp
Text HLabel 950  2050 0    60   Input ~ 0
-RST
Text HLabel 950  2250 0    60   Input ~ 0
-DIS
Text Label 3350 3050 0    60   ~ 0
-ucodeRST
Text Label 1050 1850 0    60   ~ 0
CLK
$Comp
L 74LS00 U801
U 2 1 594ED25A
P 1850 2650
F 0 "U801" H 1850 2700 50  0000 C CNN
F 1 "74HC00" H 1850 2550 50  0000 C CNN
F 2 "" H 1850 2650 50  0001 C CNN
F 3 "" H 1850 2650 50  0001 C CNN
	2    1850 2650
	1    0    0    -1  
$EndComp
$Comp
L 74LS590 U802
U 1 1 594ED261
P 4100 2150
F 0 "U802" H 4400 2950 50  0000 C CNN
F 1 "74HC590" H 4350 1400 50  0000 C CNN
F 2 "" H 4100 2150 60  0000 C CNN
F 3 "" H 4100 2150 60  0000 C CNN
	1    4100 2150
	1    0    0    -1  
$EndComp
Text HLabel 950  1600 0    60   Input ~ 0
-CLK
Text Label 4700 2100 0    60   ~ 0
UC0
Text Label 4700 2200 0    60   ~ 0
UC1
Text Label 4700 2300 0    60   ~ 0
UC2
Text Label 4700 2400 0    60   ~ 0
UC3
Text Label 4700 2500 0    60   ~ 0
UC4
$Comp
L GND #PWR?
U 1 1 594ED26E
P 3000 2200
F 0 "#PWR?" H 3000 1950 50  0001 C CNN
F 1 "GND" H 3000 2050 50  0000 C CNN
F 2 "" H 3000 2200 50  0001 C CNN
F 3 "" H 3000 2200 50  0001 C CNN
	1    3000 2200
	1    0    0    -1  
$EndComp
Text Notes 2850 1200 0    60   ~ 0
Counter is advanced on positive clock edges,\nand counter values are clocked into the\nregister on negative clock edges.  So, updated\ncounts appear on negative clock edges.
Wire Wire Line
	900  650  1300 650 
Wire Wire Line
	900  750  1300 750 
Wire Wire Line
	900  850  1300 850 
Wire Wire Line
	900  950  1300 950 
Wire Wire Line
	900  1050 1300 1050
Wire Wire Line
	900  1150 1300 1150
Wire Wire Line
	900  1250 1300 1250
Wire Wire Line
	900  1350 1300 1350
Wire Wire Line
	950  1850 3550 1850
Wire Wire Line
	1250 2050 950  2050
Wire Wire Line
	1250 2250 950  2250
Wire Wire Line
	1250 2550 1150 2550
Wire Wire Line
	1150 2550 1150 2750
Wire Wire Line
	1150 2650 950  2650
Wire Wire Line
	950  2650 950  2400
Wire Wire Line
	950  2400 2650 2400
Wire Wire Line
	2650 2400 2650 2150
Wire Wire Line
	1150 2750 1250 2750
Connection ~ 1150 2650
Wire Wire Line
	2450 2650 2650 2650
Wire Wire Line
	2650 2650 2650 3050
Wire Wire Line
	2650 3050 3800 3050
Wire Wire Line
	3550 1600 950  1600
Wire Wire Line
	3550 1950 3300 1950
Wire Wire Line
	3300 1950 3300 3050
Connection ~ 3300 3050
Wire Wire Line
	2650 2150 2450 2150
Wire Wire Line
	3550 1750 3000 1750
Wire Wire Line
	3000 1500 3000 2200
Wire Wire Line
	3550 1500 3000 1500
Connection ~ 3000 1750
Wire Wire Line
	4650 2100 5050 2100
Wire Wire Line
	4650 2200 5050 2200
Wire Wire Line
	4650 2300 5050 2300
Wire Wire Line
	4650 2400 5050 2400
Wire Wire Line
	4650 2500 5050 2500
$Comp
L 27C64 U803
U 1 1 594ED303
P 1950 4300
F 0 "U803" H 1700 5300 50  0000 C CNN
F 1 "27C64" H 1950 3300 50  0000 C CNN
F 2 "" H 1950 4300 50  0001 C CNN
F 3 "" H 1950 4300 50  0001 C CNN
	1    1950 4300
	1    0    0    -1  
$EndComp
$Comp
L 27C64 U804
U 1 1 594ED39E
P 1950 6400
F 0 "U804" H 1700 7400 50  0000 C CNN
F 1 "27C64" H 1950 5400 50  0000 C CNN
F 2 "" H 1950 6400 50  0001 C CNN
F 3 "" H 1950 6400 50  0001 C CNN
	1    1950 6400
	1    0    0    -1  
$EndComp
$Comp
L 27C64 U805
U 1 1 594ED4D7
P 4500 4300
F 0 "U805" H 4250 5300 50  0000 C CNN
F 1 "27C64" H 4500 3300 50  0000 C CNN
F 2 "" H 4500 4300 50  0001 C CNN
F 3 "" H 4500 4300 50  0001 C CNN
	1    4500 4300
	1    0    0    -1  
$EndComp
$Comp
L 27C64 U806
U 1 1 594ED4DD
P 4500 6400
F 0 "U806" H 4250 7400 50  0000 C CNN
F 1 "27C64" H 4500 5400 50  0000 C CNN
F 2 "" H 4500 6400 50  0001 C CNN
F 3 "" H 4500 6400 50  0001 C CNN
	1    4500 6400
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U807
U 1 1 594ED798
P 7000 1900
F 0 "U807" H 7000 1900 50  0000 C CNN
F 1 "74HCT175" H 7100 1500 50  0000 C CNN
F 2 "" H 7000 1900 50  0001 C CNN
F 3 "" H 7000 1900 50  0001 C CNN
	1    7000 1900
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U811
U 1 1 594ED847
P 9650 1900
F 0 "U811" H 9650 1900 50  0000 C CNN
F 1 "74HCT175" H 9750 1500 50  0000 C CNN
F 2 "" H 9650 1900 50  0001 C CNN
F 3 "" H 9650 1900 50  0001 C CNN
	1    9650 1900
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U808
U 1 1 594ED913
P 7000 3050
F 0 "U808" H 7000 3050 50  0000 C CNN
F 1 "74HCT175" H 7100 2650 50  0000 C CNN
F 2 "" H 7000 3050 50  0001 C CNN
F 3 "" H 7000 3050 50  0001 C CNN
	1    7000 3050
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U812
U 1 1 594ED919
P 9650 3050
F 0 "U812" H 9650 3050 50  0000 C CNN
F 1 "74HCT175" H 9750 2650 50  0000 C CNN
F 2 "" H 9650 3050 50  0001 C CNN
F 3 "" H 9650 3050 50  0001 C CNN
	1    9650 3050
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U809
U 1 1 594EDA9D
P 7000 4200
F 0 "U809" H 7000 4200 50  0000 C CNN
F 1 "74HCT175" H 7100 3800 50  0000 C CNN
F 2 "" H 7000 4200 50  0001 C CNN
F 3 "" H 7000 4200 50  0001 C CNN
	1    7000 4200
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U813
U 1 1 594EDAA3
P 9650 4200
F 0 "U813" H 9650 4200 50  0000 C CNN
F 1 "74HCT175" H 9750 3800 50  0000 C CNN
F 2 "" H 9650 4200 50  0001 C CNN
F 3 "" H 9650 4200 50  0001 C CNN
	1    9650 4200
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U810
U 1 1 594EDAA9
P 7000 5350
F 0 "U810" H 7000 5350 50  0000 C CNN
F 1 "74HCT175" H 7100 4950 50  0000 C CNN
F 2 "" H 7000 5350 50  0001 C CNN
F 3 "" H 7000 5350 50  0001 C CNN
	1    7000 5350
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U814
U 1 1 594EDAAF
P 9650 5350
F 0 "U814" H 9650 5350 50  0000 C CNN
F 1 "74HCT175" H 9750 4950 50  0000 C CNN
F 2 "" H 9650 5350 50  0001 C CNN
F 3 "" H 9650 5350 50  0001 C CNN
	1    9650 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3400 800  3400
Wire Wire Line
	1250 3500 800  3500
Wire Wire Line
	1250 3600 800  3600
Wire Wire Line
	1250 3700 800  3700
Wire Wire Line
	1250 3800 800  3800
Wire Wire Line
	1250 3900 800  3900
Wire Wire Line
	1250 4000 800  4000
Wire Wire Line
	1250 4100 800  4100
Wire Wire Line
	1250 4200 800  4200
Wire Wire Line
	1250 4300 800  4300
Wire Wire Line
	1250 4400 800  4400
Wire Wire Line
	1250 4500 800  4500
Wire Wire Line
	1250 4600 800  4600
Text Label 850  3400 0    60   ~ 0
UC0
Text Label 850  3500 0    60   ~ 0
UC1
Text Label 850  3600 0    60   ~ 0
UC2
Text Label 850  3700 0    60   ~ 0
UC3
Text Label 850  3800 0    60   ~ 0
UC4
Text Label 850  3900 0    60   ~ 0
OPC0
Text Label 850  4000 0    60   ~ 0
OPC1
Text Label 850  4100 0    60   ~ 0
OPC2
Text Label 850  4200 0    60   ~ 0
OPC3
Text Label 850  4300 0    60   ~ 0
OPC4
Text Label 850  4400 0    60   ~ 0
OPC5
Text Label 850  4500 0    60   ~ 0
OPC6
Text Label 850  4600 0    60   ~ 0
OPC7
Wire Wire Line
	3800 3400 3350 3400
Wire Wire Line
	3800 3500 3350 3500
Wire Wire Line
	3800 3600 3350 3600
Wire Wire Line
	3800 3700 3350 3700
Wire Wire Line
	3800 3800 3350 3800
Wire Wire Line
	3800 3900 3350 3900
Wire Wire Line
	3800 4000 3350 4000
Wire Wire Line
	3800 4100 3350 4100
Wire Wire Line
	3800 4200 3350 4200
Wire Wire Line
	3800 4300 3350 4300
Wire Wire Line
	3800 4400 3350 4400
Wire Wire Line
	3800 4500 3350 4500
Wire Wire Line
	3800 4600 3350 4600
Text Label 3400 3400 0    60   ~ 0
UC0
Text Label 3400 3500 0    60   ~ 0
UC1
Text Label 3400 3600 0    60   ~ 0
UC2
Text Label 3400 3700 0    60   ~ 0
UC3
Text Label 3400 3800 0    60   ~ 0
UC4
Text Label 3400 3900 0    60   ~ 0
OPC0
Text Label 3400 4000 0    60   ~ 0
OPC1
Text Label 3400 4100 0    60   ~ 0
OPC2
Text Label 3400 4200 0    60   ~ 0
OPC3
Text Label 3400 4300 0    60   ~ 0
OPC4
Text Label 3400 4400 0    60   ~ 0
OPC5
Text Label 3400 4500 0    60   ~ 0
OPC6
Text Label 3400 4600 0    60   ~ 0
OPC7
Wire Wire Line
	1250 5500 800  5500
Wire Wire Line
	1250 5600 800  5600
Wire Wire Line
	1250 5700 800  5700
Wire Wire Line
	1250 5800 800  5800
Wire Wire Line
	1250 5900 800  5900
Wire Wire Line
	1250 6000 800  6000
Wire Wire Line
	1250 6100 800  6100
Wire Wire Line
	1250 6200 800  6200
Wire Wire Line
	1250 6300 800  6300
Wire Wire Line
	1250 6400 800  6400
Wire Wire Line
	1250 6500 800  6500
Wire Wire Line
	1250 6600 800  6600
Wire Wire Line
	1250 6700 800  6700
Text Label 850  5500 0    60   ~ 0
UC0
Text Label 850  5600 0    60   ~ 0
UC1
Text Label 850  5700 0    60   ~ 0
UC2
Text Label 850  5800 0    60   ~ 0
UC3
Text Label 850  5900 0    60   ~ 0
UC4
Text Label 850  6000 0    60   ~ 0
OPC0
Text Label 850  6100 0    60   ~ 0
OPC1
Text Label 850  6200 0    60   ~ 0
OPC2
Text Label 850  6300 0    60   ~ 0
OPC3
Text Label 850  6400 0    60   ~ 0
OPC4
Text Label 850  6500 0    60   ~ 0
OPC5
Text Label 850  6600 0    60   ~ 0
OPC6
Text Label 850  6700 0    60   ~ 0
OPC7
Wire Wire Line
	3800 5500 3350 5500
Wire Wire Line
	3800 5600 3350 5600
Wire Wire Line
	3800 5700 3350 5700
Wire Wire Line
	3800 5800 3350 5800
Wire Wire Line
	3800 5900 3350 5900
Wire Wire Line
	3800 6000 3350 6000
Wire Wire Line
	3800 6100 3350 6100
Wire Wire Line
	3800 6200 3350 6200
Wire Wire Line
	3800 6300 3350 6300
Wire Wire Line
	3800 6400 3350 6400
Wire Wire Line
	3800 6500 3350 6500
Wire Wire Line
	3800 6600 3350 6600
Wire Wire Line
	3800 6700 3350 6700
Text Label 3400 5500 0    60   ~ 0
UC0
Text Label 3400 5600 0    60   ~ 0
UC1
Text Label 3400 5700 0    60   ~ 0
UC2
Text Label 3400 5800 0    60   ~ 0
UC3
Text Label 3400 5900 0    60   ~ 0
UC4
Text Label 3400 6000 0    60   ~ 0
OPC0
Text Label 3400 6100 0    60   ~ 0
OPC1
Text Label 3400 6200 0    60   ~ 0
OPC2
Text Label 3400 6300 0    60   ~ 0
OPC3
Text Label 3400 6400 0    60   ~ 0
OPC4
Text Label 3400 6500 0    60   ~ 0
OPC5
Text Label 3400 6600 0    60   ~ 0
OPC6
Text Label 3400 6700 0    60   ~ 0
OPC7
Wire Wire Line
	2650 3400 3150 3400
Wire Wire Line
	2650 3500 3150 3500
Wire Wire Line
	2650 3600 3150 3600
Wire Wire Line
	2650 3700 3150 3700
Wire Wire Line
	2650 3800 3150 3800
Wire Wire Line
	2650 3900 3150 3900
Wire Wire Line
	2650 4000 3150 4000
Wire Wire Line
	2650 4100 3150 4100
Text Label 2700 3400 0    60   ~ 0
rdGP
Text Label 2700 3500 0    60   ~ 0
rdGP0
Text Label 2700 3600 0    60   ~ 0
rdGP1
Text Label 2700 3700 0    60   ~ 0
rdAR
Text Label 2700 3800 0    60   ~ 0
rdPC
Text Label 2700 3900 0    60   ~ 0
rdMem
Text Label 2700 4000 0    60   ~ 0
wrGPLo
Text Label 2700 4100 0    60   ~ 0
wrGPHi
Wire Wire Line
	2650 5500 3150 5500
Wire Wire Line
	2650 5600 3150 5600
Wire Wire Line
	2650 5700 3150 5700
Wire Wire Line
	2650 5800 3150 5800
Wire Wire Line
	2650 6100 3150 6100
Wire Wire Line
	2650 6200 3150 6200
Text Label 2700 5500 0    60   ~ 0
wrGP0
Text Label 2700 5600 0    60   ~ 0
wrGP1
Text Label 2700 5700 0    60   ~ 0
wrARLo
Text Label 2700 5800 0    60   ~ 0
wrARHi
Text Label 2700 6100 0    60   ~ 0
wrMem
Text Label 2700 6200 0    60   ~ 0
end
Wire Wire Line
	1250 4800 600  4800
Wire Wire Line
	600  4800 600  4750
$Comp
L VCC #PWR?
U 1 1 594EFA5F
P 600 4750
F 0 "#PWR?" H 600 4600 50  0001 C CNN
F 1 "VCC" H 600 4900 50  0000 C CNN
F 2 "" H 600 4750 50  0001 C CNN
F 3 "" H 600 4750 50  0001 C CNN
	1    600  4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4900 600  4900
Wire Wire Line
	600  4900 600  5250
Wire Wire Line
	1250 5100 600  5100
Connection ~ 600  5100
Wire Wire Line
	1250 5200 600  5200
Connection ~ 600  5200
$Comp
L GND #PWR?
U 1 1 594EFC0B
P 600 5250
F 0 "#PWR?" H 600 5000 50  0001 C CNN
F 1 "GND" H 600 5100 50  0000 C CNN
F 2 "" H 600 5250 50  0001 C CNN
F 3 "" H 600 5250 50  0001 C CNN
	1    600  5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4800 3150 4800
Wire Wire Line
	3150 4800 3150 4750
$Comp
L VCC #PWR?
U 1 1 594EFC4C
P 3150 4750
F 0 "#PWR?" H 3150 4600 50  0001 C CNN
F 1 "VCC" H 3150 4900 50  0000 C CNN
F 2 "" H 3150 4750 50  0001 C CNN
F 3 "" H 3150 4750 50  0001 C CNN
	1    3150 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4900 3150 4900
Wire Wire Line
	3150 4900 3150 5250
Wire Wire Line
	3800 5100 3150 5100
Connection ~ 3150 5100
Wire Wire Line
	3800 5200 3150 5200
Connection ~ 3150 5200
$Comp
L GND #PWR?
U 1 1 594EFC58
P 3150 5250
F 0 "#PWR?" H 3150 5000 50  0001 C CNN
F 1 "GND" H 3150 5100 50  0000 C CNN
F 2 "" H 3150 5250 50  0001 C CNN
F 3 "" H 3150 5250 50  0001 C CNN
	1    3150 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6900 600  6900
Wire Wire Line
	600  6900 600  6850
$Comp
L VCC #PWR?
U 1 1 594EFC80
P 600 6850
F 0 "#PWR?" H 600 6700 50  0001 C CNN
F 1 "VCC" H 600 7000 50  0000 C CNN
F 2 "" H 600 6850 50  0001 C CNN
F 3 "" H 600 6850 50  0001 C CNN
	1    600  6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 7000 600  7000
Wire Wire Line
	600  7000 600  7350
Wire Wire Line
	1250 7200 600  7200
Connection ~ 600  7200
Wire Wire Line
	1250 7300 600  7300
Connection ~ 600  7300
$Comp
L GND #PWR?
U 1 1 594EFC8C
P 600 7350
F 0 "#PWR?" H 600 7100 50  0001 C CNN
F 1 "GND" H 600 7200 50  0000 C CNN
F 2 "" H 600 7350 50  0001 C CNN
F 3 "" H 600 7350 50  0001 C CNN
	1    600  7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 6900 3150 6900
Wire Wire Line
	3150 6900 3150 6850
$Comp
L VCC #PWR?
U 1 1 594EFCB4
P 3150 6850
F 0 "#PWR?" H 3150 6700 50  0001 C CNN
F 1 "VCC" H 3150 7000 50  0000 C CNN
F 2 "" H 3150 6850 50  0001 C CNN
F 3 "" H 3150 6850 50  0001 C CNN
	1    3150 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 7000 3150 7000
Wire Wire Line
	3150 7000 3150 7350
Wire Wire Line
	3800 7200 3150 7200
Connection ~ 3150 7200
Wire Wire Line
	3800 7300 3150 7300
Connection ~ 3150 7300
$Comp
L GND #PWR?
U 1 1 594EFCC0
P 3150 7350
F 0 "#PWR?" H 3150 7100 50  0001 C CNN
F 1 "GND" H 3150 7200 50  0000 C CNN
F 2 "" H 3150 7350 50  0001 C CNN
F 3 "" H 3150 7350 50  0001 C CNN
	1    3150 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1450 5800 1450
Wire Wire Line
	6300 1650 5800 1650
Wire Wire Line
	6300 1850 5800 1850
Wire Wire Line
	6300 2050 5800 2050
Wire Wire Line
	6300 2600 5800 2600
Wire Wire Line
	6300 2800 5800 2800
Wire Wire Line
	6300 3000 5800 3000
Wire Wire Line
	6300 3200 5800 3200
Wire Wire Line
	6300 3750 5800 3750
Wire Wire Line
	6300 3950 5800 3950
Wire Wire Line
	6300 4150 5800 4150
Wire Wire Line
	6300 4350 5800 4350
Wire Wire Line
	6300 4900 5800 4900
Wire Wire Line
	6300 5100 5800 5100
Wire Wire Line
	6300 5300 5800 5300
Wire Wire Line
	6300 5500 5800 5500
Wire Wire Line
	8950 1450 8450 1450
Wire Wire Line
	8950 1650 8450 1650
Wire Wire Line
	8950 1850 8450 1850
Wire Wire Line
	8950 2050 8450 2050
Wire Wire Line
	8950 2600 8450 2600
Wire Wire Line
	8950 2800 8450 2800
Wire Wire Line
	8950 3000 8450 3000
Wire Wire Line
	8950 3200 8450 3200
Wire Wire Line
	8950 3750 8450 3750
Wire Wire Line
	8950 3950 8450 3950
Wire Wire Line
	8950 4150 8450 4150
Wire Wire Line
	8950 4350 8450 4350
Wire Wire Line
	8950 4900 8450 4900
Wire Wire Line
	8950 5100 8450 5100
Wire Wire Line
	8950 5300 8450 5300
Wire Wire Line
	8950 5500 8450 5500
Text Label 5850 1450 0    60   ~ 0
rdGP
Text Label 5850 1650 0    60   ~ 0
rdGP0
Text Label 5850 1850 0    60   ~ 0
rdGP1
Text Label 5850 2050 0    60   ~ 0
rdAR
Text Label 5850 2600 0    60   ~ 0
rdPC
Text Label 5850 2800 0    60   ~ 0
rdMem
Text Label 5850 3000 0    60   ~ 0
wrGPLo
Text Label 5850 3200 0    60   ~ 0
wrGPHi
Text Label 5850 3750 0    60   ~ 0
wrGP0
Text Label 5850 3950 0    60   ~ 0
wrGP1
Text Label 5850 4150 0    60   ~ 0
wrARLo
Text Label 5850 4350 0    60   ~ 0
wrARHi
Wire Wire Line
	2650 5900 3150 5900
Wire Wire Line
	2650 6000 3150 6000
Text Label 2700 5900 0    60   ~ 0
wrPCLo
Text Label 2700 6000 0    60   ~ 0
wrPCHi
Text Label 5850 4900 0    60   ~ 0
wrPCLo
Text Label 5850 5100 0    60   ~ 0
wrPCHi
Text Label 5850 5300 0    60   ~ 0
wrMem
Text Label 5850 5500 0    60   ~ 0
end
Wire Wire Line
	7700 1550 7800 1550
Wire Wire Line
	7700 1650 7800 1650
Wire Wire Line
	7700 1850 7800 1850
Wire Wire Line
	7700 2150 7800 2150
Text HLabel 7800 1550 2    60   Output ~ 0
-uRdGP
Text HLabel 7800 1650 2    60   Output ~ 0
uRdGP0
Text HLabel 7800 1850 2    60   Output ~ 0
uRdGP1
Text HLabel 7800 2150 2    60   Output ~ 0
-uRdAR
Wire Wire Line
	7700 2700 7850 2700
Wire Wire Line
	7700 2900 7850 2900
Wire Wire Line
	7700 3100 7850 3100
Wire Wire Line
	7700 3300 7850 3300
Wire Wire Line
	7700 3750 7850 3750
Wire Wire Line
	7700 3950 7850 3950
Wire Wire Line
	7700 4250 7850 4250
Wire Wire Line
	7700 4450 7850 4450
Wire Wire Line
	7700 5000 7850 5000
Wire Wire Line
	7700 5200 7850 5200
Wire Wire Line
	7700 5400 7850 5400
Wire Wire Line
	7700 5500 7850 5500
Text Notes 7150 6800 0    60   ~ 0
microcode
Text HLabel 7850 2700 2    60   Output ~ 0
-uRdPC
Text HLabel 7850 2900 2    60   Output ~ 0
-uRdMem
Text HLabel 7850 3100 2    60   Output ~ 0
-uWrGPLo
Text HLabel 7850 3300 2    60   Output ~ 0
-uWrGPHi
Text HLabel 7850 3750 2    60   Output ~ 0
uWrGP0
Text HLabel 7850 3950 2    60   Output ~ 0
uWrGP1
Text HLabel 7850 4250 2    60   Output ~ 0
-uWrARLo
Text HLabel 7850 4450 2    60   Output ~ 0
-uWrARHi
Text HLabel 7850 5000 2    60   Output ~ 0
-uWrPCLo
Text HLabel 7850 5200 2    60   Output ~ 0
-uWrPCHi
Text HLabel 7850 5400 2    60   Output ~ 0
-uWrMem
Text HLabel 7850 5500 2    60   Output ~ 0
uEnd
Wire Wire Line
	5800 2250 6300 2250
Wire Wire Line
	5800 2350 6300 2350
Text Label 5850 2250 0    60   ~ 0
CLK
Text Label 5850 2350 0    60   ~ 0
-ucodeRST
Wire Wire Line
	5800 3400 6300 3400
Wire Wire Line
	5800 3500 6300 3500
Text Label 5850 3400 0    60   ~ 0
CLK
Text Label 5850 3500 0    60   ~ 0
-ucodeRST
Wire Wire Line
	5800 4550 6300 4550
Wire Wire Line
	5800 4650 6300 4650
Text Label 5850 4550 0    60   ~ 0
CLK
Text Label 5850 4650 0    60   ~ 0
-ucodeRST
Wire Wire Line
	5800 5700 6300 5700
Wire Wire Line
	5800 5800 6300 5800
Text Label 5850 5700 0    60   ~ 0
CLK
Text Label 5850 5800 0    60   ~ 0
-ucodeRST
$Comp
L 74LS00 U801
U 3 1 59522853
P 6200 6600
F 0 "U801" H 6200 6650 50  0000 C CNN
F 1 "74HC00" H 6200 6500 50  0000 C CNN
F 2 "" H 6200 6600 50  0001 C CNN
F 3 "" H 6200 6600 50  0001 C CNN
	3    6200 6600
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U801
U 4 1 59522859
P 6200 7100
F 0 "U801" H 6200 7150 50  0000 C CNN
F 1 "74HC00" H 6200 7000 50  0000 C CNN
F 2 "" H 6200 7100 50  0001 C CNN
F 3 "" H 6200 7100 50  0001 C CNN
	4    6200 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6500 5500 6500
Wire Wire Line
	5500 6500 5500 7350
Wire Wire Line
	5600 6700 5500 6700
Connection ~ 5500 6700
Wire Wire Line
	5600 7000 5500 7000
Connection ~ 5500 7000
Wire Wire Line
	5600 7200 5500 7200
Connection ~ 5500 7200
$Comp
L GND #PWR?
U 1 1 59522CEA
P 5500 7350
F 0 "#PWR?" H 5500 7100 50  0001 C CNN
F 1 "GND" H 5500 7200 50  0000 C CNN
F 2 "" H 5500 7350 50  0001 C CNN
F 3 "" H 5500 7350 50  0001 C CNN
	1    5500 7350
	1    0    0    -1  
$EndComp
Text Notes 5850 6350 0    60   ~ 0
unused gates
$EndSCHEMATC
