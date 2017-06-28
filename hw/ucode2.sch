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
$Descr A3 16535 11693
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
$Comp
L 27C64 U803
U 1 1 594ED303
P 1950 5950
F 0 "U803" H 1700 6950 50  0000 C CNN
F 1 "27C64" H 1950 4950 50  0000 C CNN
F 2 "" H 1950 5950 50  0001 C CNN
F 3 "" H 1950 5950 50  0001 C CNN
	1    1950 5950
	1    0    0    -1  
$EndComp
$Comp
L 27C64 U804
U 1 1 594ED39E
P 1950 8050
F 0 "U804" H 1700 9050 50  0000 C CNN
F 1 "27C64" H 1950 7050 50  0000 C CNN
F 2 "" H 1950 8050 50  0001 C CNN
F 3 "" H 1950 8050 50  0001 C CNN
	1    1950 8050
	1    0    0    -1  
$EndComp
$Comp
L 27C64 U805
U 1 1 594ED4D7
P 4500 5950
F 0 "U805" H 4250 6950 50  0000 C CNN
F 1 "27C64" H 4500 4950 50  0000 C CNN
F 2 "" H 4500 5950 50  0001 C CNN
F 3 "" H 4500 5950 50  0001 C CNN
	1    4500 5950
	1    0    0    -1  
$EndComp
$Comp
L 27C64 U806
U 1 1 594ED4DD
P 4500 8050
F 0 "U806" H 4250 9050 50  0000 C CNN
F 1 "27C64" H 4500 7050 50  0000 C CNN
F 2 "" H 4500 8050 50  0001 C CNN
F 3 "" H 4500 8050 50  0001 C CNN
	1    4500 8050
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U807
U 1 1 594ED798
P 10200 5450
F 0 "U807" H 10200 5450 50  0000 C CNN
F 1 "74HCT175" H 10300 5050 50  0000 C CNN
F 2 "" H 10200 5450 50  0001 C CNN
F 3 "" H 10200 5450 50  0001 C CNN
	1    10200 5450
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U811
U 1 1 594ED847
P 12850 5450
F 0 "U811" H 12850 5450 50  0000 C CNN
F 1 "74HCT175" H 12950 5050 50  0000 C CNN
F 2 "" H 12850 5450 50  0001 C CNN
F 3 "" H 12850 5450 50  0001 C CNN
	1    12850 5450
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U808
U 1 1 594ED913
P 10200 6600
F 0 "U808" H 10200 6600 50  0000 C CNN
F 1 "74HCT175" H 10300 6200 50  0000 C CNN
F 2 "" H 10200 6600 50  0001 C CNN
F 3 "" H 10200 6600 50  0001 C CNN
	1    10200 6600
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U812
U 1 1 594ED919
P 12850 6600
F 0 "U812" H 12850 6600 50  0000 C CNN
F 1 "74HCT175" H 12950 6200 50  0000 C CNN
F 2 "" H 12850 6600 50  0001 C CNN
F 3 "" H 12850 6600 50  0001 C CNN
	1    12850 6600
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U809
U 1 1 594EDA9D
P 10200 7750
F 0 "U809" H 10200 7750 50  0000 C CNN
F 1 "74HCT175" H 10300 7350 50  0000 C CNN
F 2 "" H 10200 7750 50  0001 C CNN
F 3 "" H 10200 7750 50  0001 C CNN
	1    10200 7750
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U813
U 1 1 594EDAA3
P 12850 7750
F 0 "U813" H 12850 7750 50  0000 C CNN
F 1 "74HCT175" H 12950 7350 50  0000 C CNN
F 2 "" H 12850 7750 50  0001 C CNN
F 3 "" H 12850 7750 50  0001 C CNN
	1    12850 7750
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U810
U 1 1 594EDAA9
P 10200 8900
F 0 "U810" H 10200 8900 50  0000 C CNN
F 1 "74HCT175" H 10300 8500 50  0000 C CNN
F 2 "" H 10200 8900 50  0001 C CNN
F 3 "" H 10200 8900 50  0001 C CNN
	1    10200 8900
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U814
U 1 1 594EDAAF
P 12850 8900
F 0 "U814" H 12850 8900 50  0000 C CNN
F 1 "74HCT175" H 12950 8500 50  0000 C CNN
F 2 "" H 12850 8900 50  0001 C CNN
F 3 "" H 12850 8900 50  0001 C CNN
	1    12850 8900
	1    0    0    -1  
$EndComp
Text Label 850  5050 0    60   ~ 0
UC0
Text Label 850  5150 0    60   ~ 0
UC1
Text Label 850  5250 0    60   ~ 0
UC2
Text Label 850  5350 0    60   ~ 0
UC3
Text Label 850  5450 0    60   ~ 0
UC4
Text Label 850  5550 0    60   ~ 0
OPC0
Text Label 850  5650 0    60   ~ 0
OPC1
Text Label 850  5750 0    60   ~ 0
OPC2
Text Label 850  5850 0    60   ~ 0
OPC3
Text Label 850  5950 0    60   ~ 0
OPC4
Text Label 850  6050 0    60   ~ 0
OPC5
Text Label 850  6150 0    60   ~ 0
OPC6
Text Label 850  6250 0    60   ~ 0
OPC7
Text Label 3400 5050 0    60   ~ 0
UC0
Text Label 3400 5150 0    60   ~ 0
UC1
Text Label 3400 5250 0    60   ~ 0
UC2
Text Label 3400 5350 0    60   ~ 0
UC3
Text Label 3400 5450 0    60   ~ 0
UC4
Text Label 3400 5550 0    60   ~ 0
OPC0
Text Label 3400 5650 0    60   ~ 0
OPC1
Text Label 3400 5750 0    60   ~ 0
OPC2
Text Label 3400 5850 0    60   ~ 0
OPC3
Text Label 3400 5950 0    60   ~ 0
OPC4
Text Label 3400 6050 0    60   ~ 0
OPC5
Text Label 3400 6150 0    60   ~ 0
OPC6
Text Label 3400 6250 0    60   ~ 0
OPC7
Text Label 850  7150 0    60   ~ 0
UC0
Text Label 850  7250 0    60   ~ 0
UC1
Text Label 850  7350 0    60   ~ 0
UC2
Text Label 850  7450 0    60   ~ 0
UC3
Text Label 850  7550 0    60   ~ 0
UC4
Text Label 850  7650 0    60   ~ 0
OPC0
Text Label 850  7750 0    60   ~ 0
OPC1
Text Label 850  7850 0    60   ~ 0
OPC2
Text Label 850  7950 0    60   ~ 0
OPC3
Text Label 850  8050 0    60   ~ 0
OPC4
Text Label 850  8150 0    60   ~ 0
OPC5
Text Label 850  8250 0    60   ~ 0
OPC6
Text Label 850  8350 0    60   ~ 0
OPC7
Text Label 3400 7150 0    60   ~ 0
UC0
Text Label 3400 7250 0    60   ~ 0
UC1
Text Label 3400 7350 0    60   ~ 0
UC2
Text Label 3400 7450 0    60   ~ 0
UC3
Text Label 3400 7550 0    60   ~ 0
UC4
Text Label 3400 7650 0    60   ~ 0
OPC0
Text Label 3400 7750 0    60   ~ 0
OPC1
Text Label 3400 7850 0    60   ~ 0
OPC2
Text Label 3400 7950 0    60   ~ 0
OPC3
Text Label 3400 8050 0    60   ~ 0
OPC4
Text Label 3400 8150 0    60   ~ 0
OPC5
Text Label 3400 8250 0    60   ~ 0
OPC6
Text Label 3400 8350 0    60   ~ 0
OPC7
Text Label 2700 5050 0    60   ~ 0
rdGP
Text Label 2700 5150 0    60   ~ 0
rdGP0
Text Label 2700 5250 0    60   ~ 0
rdGP1
Text Label 2700 5350 0    60   ~ 0
rdAR
Text Label 2700 5450 0    60   ~ 0
rdPC
Text Label 2700 5550 0    60   ~ 0
rdMem
Text Label 2700 5650 0    60   ~ 0
wrGPLo
Text Label 2700 5750 0    60   ~ 0
wrGPHi
Text Label 2700 7150 0    60   ~ 0
wrGP0
Text Label 2700 7250 0    60   ~ 0
wrGP1
Text Label 2700 7350 0    60   ~ 0
wrARLo
Text Label 2700 7450 0    60   ~ 0
wrARHi
Text Label 2700 7750 0    60   ~ 0
wrMem
$Comp
L VCC #PWR?
U 1 1 594EFA5F
P 600 6400
F 0 "#PWR?" H 600 6250 50  0001 C CNN
F 1 "VCC" H 600 6550 50  0000 C CNN
F 2 "" H 600 6400 50  0001 C CNN
F 3 "" H 600 6400 50  0001 C CNN
	1    600  6400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 594EFC0B
P 600 6900
F 0 "#PWR?" H 600 6650 50  0001 C CNN
F 1 "GND" H 600 6750 50  0000 C CNN
F 2 "" H 600 6900 50  0001 C CNN
F 3 "" H 600 6900 50  0001 C CNN
	1    600  6900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 594EFC4C
P 3150 6400
F 0 "#PWR?" H 3150 6250 50  0001 C CNN
F 1 "VCC" H 3150 6550 50  0000 C CNN
F 2 "" H 3150 6400 50  0001 C CNN
F 3 "" H 3150 6400 50  0001 C CNN
	1    3150 6400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 594EFC58
P 3150 6900
F 0 "#PWR?" H 3150 6650 50  0001 C CNN
F 1 "GND" H 3150 6750 50  0000 C CNN
F 2 "" H 3150 6900 50  0001 C CNN
F 3 "" H 3150 6900 50  0001 C CNN
	1    3150 6900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 594EFC80
P 600 8500
F 0 "#PWR?" H 600 8350 50  0001 C CNN
F 1 "VCC" H 600 8650 50  0000 C CNN
F 2 "" H 600 8500 50  0001 C CNN
F 3 "" H 600 8500 50  0001 C CNN
	1    600  8500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 594EFC8C
P 600 9000
F 0 "#PWR?" H 600 8750 50  0001 C CNN
F 1 "GND" H 600 8850 50  0000 C CNN
F 2 "" H 600 9000 50  0001 C CNN
F 3 "" H 600 9000 50  0001 C CNN
	1    600  9000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 594EFCB4
P 3150 8500
F 0 "#PWR?" H 3150 8350 50  0001 C CNN
F 1 "VCC" H 3150 8650 50  0000 C CNN
F 2 "" H 3150 8500 50  0001 C CNN
F 3 "" H 3150 8500 50  0001 C CNN
	1    3150 8500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 594EFCC0
P 3150 9000
F 0 "#PWR?" H 3150 8750 50  0001 C CNN
F 1 "GND" H 3150 8850 50  0000 C CNN
F 2 "" H 3150 9000 50  0001 C CNN
F 3 "" H 3150 9000 50  0001 C CNN
	1    3150 9000
	1    0    0    -1  
$EndComp
Text Label 9050 5000 0    60   ~ 0
rdGP
Text Label 9050 5200 0    60   ~ 0
rdGP0
Text Label 9050 5400 0    60   ~ 0
rdGP1
Text Label 9050 5600 0    60   ~ 0
rdAR
Text Label 9050 6150 0    60   ~ 0
rdPC
Text Label 9050 6350 0    60   ~ 0
rdMem
Text Label 9050 6550 0    60   ~ 0
wrGPLo
Text Label 9050 6750 0    60   ~ 0
wrGPHi
Text Label 9050 7300 0    60   ~ 0
wrGP0
Text Label 9050 7500 0    60   ~ 0
wrGP1
Text Label 9050 7700 0    60   ~ 0
wrARLo
Text Label 9050 7900 0    60   ~ 0
wrARHi
Text Label 2700 7550 0    60   ~ 0
wrPCLo
Text Label 2700 7650 0    60   ~ 0
wrPCHi
Text Label 9050 8450 0    60   ~ 0
wrPCLo
Text Label 9050 8650 0    60   ~ 0
wrPCHi
Text Label 9050 8850 0    60   ~ 0
wrMem
Text HLabel 10900 5100 2    60   Output ~ 0
-uRdGP
Text HLabel 10900 5200 2    60   Output ~ 0
uRdGP0
Text HLabel 10900 5400 2    60   Output ~ 0
uRdGP1
Text HLabel 10900 5700 2    60   Output ~ 0
-uRdAR
Text Notes 11950 10250 0    60   ~ 0
microcode
Text HLabel 10900 6250 2    60   Output ~ 0
-uRdPC
Text HLabel 10900 6450 2    60   Output ~ 0
-uRdMem
Text HLabel 10900 6650 2    60   Output ~ 0
-uWrGPLo
Text HLabel 10900 6850 2    60   Output ~ 0
-uWrGPHi
Text HLabel 10900 7300 2    60   Output ~ 0
uWrGP0
Text HLabel 10900 7500 2    60   Output ~ 0
uWrGP1
Text HLabel 10900 7800 2    60   Output ~ 0
-uWrARLo
Text HLabel 10900 8000 2    60   Output ~ 0
-uWrARHi
Text HLabel 10900 8550 2    60   Output ~ 0
-uWrPCLo
Text HLabel 10900 8750 2    60   Output ~ 0
-uWrPCHi
Text HLabel 10900 8950 2    60   Output ~ 0
-uWrMem
Text Label 9050 5800 0    60   ~ 0
CLK
Text Label 9050 5900 0    60   ~ 0
-ucodeRST
Text Label 9050 6950 0    60   ~ 0
CLK
Text Label 9050 7050 0    60   ~ 0
-ucodeRST
Text Label 9050 8100 0    60   ~ 0
CLK
Text Label 9050 8200 0    60   ~ 0
-ucodeRST
Text Label 9050 9250 0    60   ~ 0
CLK
Text Label 9050 9350 0    60   ~ 0
-ucodeRST
$Comp
L 74LS00 U801
U 3 1 59522853
P 7100 8700
F 0 "U801" H 7100 8750 50  0000 C CNN
F 1 "74HC00" H 7100 8600 50  0000 C CNN
F 2 "" H 7100 8700 50  0001 C CNN
F 3 "" H 7100 8700 50  0001 C CNN
	3    7100 8700
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U801
U 4 1 59522859
P 7100 9200
F 0 "U801" H 7100 9250 50  0000 C CNN
F 1 "74HC00" H 7100 9100 50  0000 C CNN
F 2 "" H 7100 9200 50  0001 C CNN
F 3 "" H 7100 9200 50  0001 C CNN
	4    7100 9200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59522CEA
P 6400 10050
F 0 "#PWR?" H 6400 9800 50  0001 C CNN
F 1 "GND" H 6400 9900 50  0000 C CNN
F 2 "" H 6400 10050 50  0001 C CNN
F 3 "" H 6400 10050 50  0001 C CNN
	1    6400 10050
	1    0    0    -1  
$EndComp
Text Notes 6750 8450 0    60   ~ 0
unused gates
Text Label 5250 5050 0    60   ~ 0
aluCarryIn
Text Label 5250 5150 0    60   ~ 0
aluMode
Text Label 5250 5450 0    60   ~ 0
aluOp0
Text Label 5250 5550 0    60   ~ 0
aluOp1
Text Label 5250 5650 0    60   ~ 0
aluOp2
Text Label 5250 5750 0    60   ~ 0
aluOp3
Text Label 5250 5250 0    60   ~ 0
aluOut
Text Label 11700 5000 0    60   ~ 0
aluCarryIn
Text Label 11700 5200 0    60   ~ 0
aluMode
Text Label 11700 6150 0    60   ~ 0
aluOp0
Text Label 11700 6350 0    60   ~ 0
aluOp1
Text Label 11700 6550 0    60   ~ 0
aluOp2
Text Label 11700 6750 0    60   ~ 0
aluOp3
Text Label 11700 5400 0    60   ~ 0
aluOut
Text HLabel 13550 5100 2    60   Output ~ 0
-uAluCarryIn
Text HLabel 13550 5200 2    60   Output ~ 0
uAluMode
Text HLabel 13550 6150 2    60   Output ~ 0
uAluOp0
Text HLabel 13550 6350 2    60   Output ~ 0
uAluOp1
Text HLabel 13550 6550 2    60   Output ~ 0
uAluOp2
Text HLabel 13550 6750 2    60   Output ~ 0
uAluOp3
Text HLabel 13550 5500 2    60   Output ~ 0
-uAluOut
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
Wire Wire Line
	1250 5050 800  5050
Wire Wire Line
	1250 5150 800  5150
Wire Wire Line
	1250 5250 800  5250
Wire Wire Line
	1250 5350 800  5350
Wire Wire Line
	1250 5450 800  5450
Wire Wire Line
	1250 5550 800  5550
Wire Wire Line
	1250 5650 800  5650
Wire Wire Line
	1250 5750 800  5750
Wire Wire Line
	1250 5850 800  5850
Wire Wire Line
	1250 5950 800  5950
Wire Wire Line
	1250 6050 800  6050
Wire Wire Line
	1250 6150 800  6150
Wire Wire Line
	1250 6250 800  6250
Wire Wire Line
	3800 5050 3350 5050
Wire Wire Line
	3800 5150 3350 5150
Wire Wire Line
	3800 5250 3350 5250
Wire Wire Line
	3800 5350 3350 5350
Wire Wire Line
	3800 5450 3350 5450
Wire Wire Line
	3800 5550 3350 5550
Wire Wire Line
	3800 5650 3350 5650
Wire Wire Line
	3800 5750 3350 5750
Wire Wire Line
	3800 5850 3350 5850
Wire Wire Line
	3800 5950 3350 5950
Wire Wire Line
	3800 6050 3350 6050
Wire Wire Line
	3800 6150 3350 6150
Wire Wire Line
	3800 6250 3350 6250
Wire Wire Line
	1250 7150 800  7150
Wire Wire Line
	1250 7250 800  7250
Wire Wire Line
	1250 7350 800  7350
Wire Wire Line
	1250 7450 800  7450
Wire Wire Line
	1250 7550 800  7550
Wire Wire Line
	1250 7650 800  7650
Wire Wire Line
	1250 7750 800  7750
Wire Wire Line
	1250 7850 800  7850
Wire Wire Line
	1250 7950 800  7950
Wire Wire Line
	1250 8050 800  8050
Wire Wire Line
	1250 8150 800  8150
Wire Wire Line
	1250 8250 800  8250
Wire Wire Line
	1250 8350 800  8350
Wire Wire Line
	3800 7150 3350 7150
Wire Wire Line
	3800 7250 3350 7250
Wire Wire Line
	3800 7350 3350 7350
Wire Wire Line
	3800 7450 3350 7450
Wire Wire Line
	3800 7550 3350 7550
Wire Wire Line
	3800 7650 3350 7650
Wire Wire Line
	3800 7750 3350 7750
Wire Wire Line
	3800 7850 3350 7850
Wire Wire Line
	3800 7950 3350 7950
Wire Wire Line
	3800 8050 3350 8050
Wire Wire Line
	3800 8150 3350 8150
Wire Wire Line
	3800 8250 3350 8250
Wire Wire Line
	3800 8350 3350 8350
Wire Wire Line
	2650 5050 3150 5050
Wire Wire Line
	2650 5150 3150 5150
Wire Wire Line
	2650 5250 3150 5250
Wire Wire Line
	2650 5350 3150 5350
Wire Wire Line
	2650 5450 3150 5450
Wire Wire Line
	2650 5550 3150 5550
Wire Wire Line
	2650 5650 3150 5650
Wire Wire Line
	2650 5750 3150 5750
Wire Wire Line
	2650 7150 3150 7150
Wire Wire Line
	2650 7250 3150 7250
Wire Wire Line
	2650 7350 3150 7350
Wire Wire Line
	2650 7450 3150 7450
Wire Wire Line
	2650 7750 3150 7750
Wire Wire Line
	1250 6450 600  6450
Wire Wire Line
	600  6450 600  6400
Wire Wire Line
	1250 6550 600  6550
Wire Wire Line
	600  6550 600  6900
Wire Wire Line
	1250 6750 600  6750
Connection ~ 600  6750
Wire Wire Line
	1250 6850 600  6850
Connection ~ 600  6850
Wire Wire Line
	3800 6450 3150 6450
Wire Wire Line
	3150 6450 3150 6400
Wire Wire Line
	3800 6550 3150 6550
Wire Wire Line
	3150 6550 3150 6900
Wire Wire Line
	3800 6750 3150 6750
Connection ~ 3150 6750
Wire Wire Line
	3800 6850 3150 6850
Connection ~ 3150 6850
Wire Wire Line
	1250 8550 600  8550
Wire Wire Line
	600  8550 600  8500
Wire Wire Line
	1250 8650 600  8650
Wire Wire Line
	600  8650 600  9000
Wire Wire Line
	1250 8850 600  8850
Connection ~ 600  8850
Wire Wire Line
	1250 8950 600  8950
Connection ~ 600  8950
Wire Wire Line
	3800 8550 3150 8550
Wire Wire Line
	3150 8550 3150 8500
Wire Wire Line
	3800 8650 3150 8650
Wire Wire Line
	3150 8650 3150 9000
Wire Wire Line
	3800 8850 3150 8850
Connection ~ 3150 8850
Wire Wire Line
	3800 8950 3150 8950
Connection ~ 3150 8950
Wire Wire Line
	9500 5000 9000 5000
Wire Wire Line
	9500 5200 9000 5200
Wire Wire Line
	9500 5400 9000 5400
Wire Wire Line
	9500 5600 9000 5600
Wire Wire Line
	9500 6150 9000 6150
Wire Wire Line
	9500 6350 9000 6350
Wire Wire Line
	9500 6550 9000 6550
Wire Wire Line
	9500 6750 9000 6750
Wire Wire Line
	9500 7300 9000 7300
Wire Wire Line
	9500 7500 9000 7500
Wire Wire Line
	9500 7700 9000 7700
Wire Wire Line
	9500 7900 9000 7900
Wire Wire Line
	9500 8450 9000 8450
Wire Wire Line
	9500 8650 9000 8650
Wire Wire Line
	9500 8850 9000 8850
Wire Wire Line
	12150 5000 11650 5000
Wire Wire Line
	12150 5200 11650 5200
Wire Wire Line
	12150 6150 11650 6150
Wire Wire Line
	12150 6350 11650 6350
Wire Wire Line
	12150 6550 11650 6550
Wire Wire Line
	12150 6750 11650 6750
Wire Wire Line
	12150 5400 11650 5400
Wire Wire Line
	12150 5600 11650 5600
Wire Wire Line
	12150 7300 11650 7300
Wire Wire Line
	12150 7500 11650 7500
Wire Wire Line
	12150 7700 11650 7700
Wire Wire Line
	12150 7900 11650 7900
Wire Wire Line
	12150 8450 11650 8450
Wire Wire Line
	12150 8650 11650 8650
Wire Wire Line
	12150 8850 11650 8850
Wire Wire Line
	12150 9050 11650 9050
Wire Wire Line
	2650 7550 3150 7550
Wire Wire Line
	2650 7650 3150 7650
Wire Wire Line
	10900 5100 10900 5100
Wire Wire Line
	10900 5200 10900 5200
Wire Wire Line
	10900 5400 10900 5400
Wire Wire Line
	10900 5700 10900 5700
Wire Wire Line
	10900 6250 10900 6250
Wire Wire Line
	10900 6450 10900 6450
Wire Wire Line
	10900 6650 10900 6650
Wire Wire Line
	10900 6850 10900 6850
Wire Wire Line
	10900 7300 10900 7300
Wire Wire Line
	10900 7500 10900 7500
Wire Wire Line
	10900 7800 10900 7800
Wire Wire Line
	10900 8000 10900 8000
Wire Wire Line
	10900 8550 10900 8550
Wire Wire Line
	10900 8750 10900 8750
Wire Wire Line
	10900 8950 10900 8950
Wire Wire Line
	10900 9050 10900 9050
Wire Wire Line
	9000 5800 9500 5800
Wire Wire Line
	9000 5900 9500 5900
Wire Wire Line
	9000 6950 9500 6950
Wire Wire Line
	9000 7050 9500 7050
Wire Wire Line
	9000 8100 9500 8100
Wire Wire Line
	9000 8200 9500 8200
Wire Wire Line
	9000 9250 9500 9250
Wire Wire Line
	9000 9350 9500 9350
Wire Wire Line
	6500 8600 6400 8600
Wire Wire Line
	6400 8600 6400 10050
Wire Wire Line
	6500 8800 6400 8800
Connection ~ 6400 8800
Wire Wire Line
	6500 9100 6400 9100
Connection ~ 6400 9100
Wire Wire Line
	6500 9300 6400 9300
Connection ~ 6400 9300
Wire Wire Line
	5200 5050 5650 5050
Wire Wire Line
	5200 5150 5650 5150
Wire Wire Line
	5200 5450 5650 5450
Wire Wire Line
	5200 5550 5650 5550
Wire Wire Line
	5200 5650 5650 5650
Wire Wire Line
	5200 5750 5650 5750
Wire Wire Line
	5200 5250 5650 5250
Wire Wire Line
	5200 5350 5650 5350
$Comp
L 74LS32 U815
U 1 1 5953FB38
P 8900 1300
F 0 "U815" H 8900 1350 50  0000 C CNN
F 1 "74HCT32" H 8900 1250 50  0000 C CNN
F 2 "" H 8900 1300 50  0001 C CNN
F 3 "" H 8900 1300 50  0001 C CNN
	1    8900 1300
	1    0    0    -1  
$EndComp
Text HLabel 1250 3550 0    60   Input ~ 0
ccEq
Text HLabel 1250 3650 0    60   Input ~ 0
-ccEq
Text HLabel 1250 3750 0    60   Input ~ 0
ccCarryOut
Text HLabel 1250 3850 0    60   Input ~ 0
-ccCarryOut
Wire Wire Line
	1250 3550 1900 3550
Wire Wire Line
	1250 3650 1900 3650
Wire Wire Line
	1250 3750 1900 3750
Wire Wire Line
	1250 3850 1900 3850
Text Label 1350 3550 0    60   ~ 0
ccEq
Text Label 1350 3650 0    60   ~ 0
-ccEq
Text Label 1350 3750 0    60   ~ 0
ccCarryOut
Text Label 1350 3850 0    60   ~ 0
-ccCarryOut
$Comp
L 74LS32 U815
U 2 1 59540474
P 8900 1800
F 0 "U815" H 8900 1850 50  0000 C CNN
F 1 "74HCT32" H 8900 1750 50  0000 C CNN
F 2 "" H 8900 1800 50  0001 C CNN
F 3 "" H 8900 1800 50  0001 C CNN
	2    8900 1800
	1    0    0    -1  
$EndComp
$Comp
L 74LS32 U815
U 3 1 595404B1
P 8900 2300
F 0 "U815" H 8900 2350 50  0000 C CNN
F 1 "74HCT32" H 8900 2250 50  0000 C CNN
F 2 "" H 8900 2300 50  0001 C CNN
F 3 "" H 8900 2300 50  0001 C CNN
	3    8900 2300
	1    0    0    -1  
$EndComp
Text Label 7500 2400 0    60   ~ 0
-endIfNoCarry
Text Label 7500 1900 0    60   ~ 0
-endIfNeq
Text Label 7500 1400 0    60   ~ 0
-endIfEq
Text Label 7500 2200 0    60   ~ 0
ccCarryOut
Text Label 7500 1700 0    60   ~ 0
ccEq
Text Label 7500 1200 0    60   ~ 0
-ccEq
Wire Wire Line
	8300 2400 7450 2400
Wire Wire Line
	8300 2200 7450 2200
Wire Wire Line
	8300 1900 7450 1900
Wire Wire Line
	8300 1700 7450 1700
Wire Wire Line
	8300 1400 7450 1400
Wire Wire Line
	8300 1200 7450 1200
$Comp
L 74LS32 U815
U 4 1 595412AF
P 7100 9700
F 0 "U815" H 7100 9750 50  0000 C CNN
F 1 "74HCT32" H 7100 9650 50  0000 C CNN
F 2 "" H 7100 9700 50  0001 C CNN
F 3 "" H 7100 9700 50  0001 C CNN
	4    7100 9700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 9600 6400 9600
Connection ~ 6400 9600
Wire Wire Line
	6500 9800 6400 9800
Connection ~ 6400 9800
$Comp
L 74LS20 U816
U 1 1 59541F40
P 8900 3100
F 0 "U816" H 8900 3200 50  0000 C CNN
F 1 "74HCT20" H 8900 3000 50  0000 C CNN
F 2 "" H 8900 3100 50  0001 C CNN
F 3 "" H 8900 3100 50  0001 C CNN
	1    8900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2950 8100 2950
Wire Wire Line
	8100 2950 8100 2800
$Comp
L VCC #PWR?
U 1 1 595420BD
P 8100 2800
F 0 "#PWR?" H 8100 2650 50  0001 C CNN
F 1 "VCC" H 8100 2950 50  0000 C CNN
F 2 "" H 8100 2800 50  0001 C CNN
F 3 "" H 8100 2800 50  0001 C CNN
	1    8100 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3050 7450 3050
Wire Wire Line
	8300 3150 7450 3150
Wire Wire Line
	8300 3250 7450 3250
Text Label 7500 3050 0    60   ~ 0
-ccEq
Text Label 7500 3150 0    60   ~ 0
ccCarryOut
Text Label 7500 3250 0    60   ~ 0
endIfNeqCarry
$Comp
L 74LS20 U816
U 2 1 59542D1F
P 8900 3900
F 0 "U816" H 8900 4000 50  0000 C CNN
F 1 "74HCT20" H 8900 3800 50  0000 C CNN
F 2 "" H 8900 3900 50  0001 C CNN
F 3 "" H 8900 3900 50  0001 C CNN
	2    8900 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3750 8100 3750
Wire Wire Line
	8100 3750 8100 3600
$Comp
L VCC #PWR?
U 1 1 59542D83
P 8100 3600
F 0 "#PWR?" H 8100 3450 50  0001 C CNN
F 1 "VCC" H 8100 3750 50  0000 C CNN
F 2 "" H 8100 3600 50  0001 C CNN
F 3 "" H 8100 3600 50  0001 C CNN
	1    8100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3850 7450 3850
Wire Wire Line
	8300 3950 7450 3950
Wire Wire Line
	8300 4050 7450 4050
Text Label 7500 3850 0    60   ~ 0
-ccEq
Text Label 7500 3950 0    60   ~ 0
-ccCarryOut
Text Label 7500 4050 0    60   ~ 0
endIfNeqNoCarry
$Comp
L 74LS30 U817
U 1 1 595438F4
P 11300 1450
F 0 "U817" H 11300 1550 50  0000 C CNN
F 1 "74HCT30" H 11300 1350 50  0000 C CNN
F 2 "" H 11300 1450 50  0001 C CNN
F 3 "" H 11300 1450 50  0001 C CNN
	1    11300 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 1300 10700 1300
Wire Wire Line
	10450 1200 10700 1200
Wire Wire Line
	10450 950  10450 1200
Wire Wire Line
	10700 1100 10450 1100
Connection ~ 10450 1100
$Comp
L VCC #PWR?
U 1 1 59543CA5
P 10450 950
F 0 "#PWR?" H 10450 800 50  0001 C CNN
F 1 "VCC" H 10450 1100 50  0000 C CNN
F 2 "" H 10450 950 50  0001 C CNN
F 3 "" H 10450 950 50  0001 C CNN
	1    10450 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10700 1400 9950 1400
Wire Wire Line
	9950 1400 9950 1800
Wire Wire Line
	9950 1800 9500 1800
Wire Wire Line
	10700 1500 10050 1500
Wire Wire Line
	10050 1500 10050 2300
Wire Wire Line
	10050 2300 9500 2300
Wire Wire Line
	10700 1600 10150 1600
Wire Wire Line
	10150 1600 10150 3100
Wire Wire Line
	10150 3100 9500 3100
Wire Wire Line
	10700 1700 10250 1700
Wire Wire Line
	10250 1700 10250 3900
Wire Wire Line
	10250 3900 9500 3900
Wire Wire Line
	10700 1800 10350 1800
Wire Wire Line
	10350 1800 10350 4300
Wire Wire Line
	10350 4300 7450 4300
Text Label 9550 1300 0    60   ~ 0
-end0
Text Label 9550 1800 0    60   ~ 0
-end1
Text Label 9550 2300 0    60   ~ 0
-end2
Text Label 9550 3100 0    60   ~ 0
-end3
Text Label 9550 3900 0    60   ~ 0
-end4
Text Label 7500 4300 0    60   ~ 0
endUncond
Wire Wire Line
	11900 1450 12400 1450
Text Label 12200 1450 0    60   ~ 0
end
Text Notes 8700 950  0    60   ~ 0
conditional branch logic
Wire Wire Line
	2650 7850 3150 7850
Text Label 2700 7850 0    60   ~ 0
driveAddr
Wire Wire Line
	9500 9050 9000 9050
Text Label 9050 9050 0    60   ~ 0
driveAddr
Text HLabel 10900 9050 2    60   Output ~ 0
-uDriveAddr
Wire Wire Line
	5200 7150 5650 7150
Wire Wire Line
	5200 7250 5650 7250
Wire Wire Line
	5200 7350 5650 7350
Wire Wire Line
	5200 7450 5650 7450
Wire Wire Line
	5200 7550 5650 7550
Wire Wire Line
	5200 7650 5650 7650
Wire Wire Line
	5200 7750 5650 7750
Wire Wire Line
	5200 7850 5650 7850
Text Label 5250 7150 0    60   ~ 0
-endIfEq
Text Label 5250 7250 0    60   ~ 0
-endIfNeq
Text Label 5250 7350 0    60   ~ 0
-endIfNoCarry
Text Label 5250 7450 0    60   ~ 0
endIfNeqCarry
Text Label 5250 7550 0    60   ~ 0
endIfNeqNoCarry
Text Label 5250 7650 0    60   ~ 0
endUncond
Text Label 11700 5800 0    60   ~ 0
CLK
Text Label 11700 5900 0    60   ~ 0
-ucodeRST
Wire Wire Line
	11650 5800 12150 5800
Wire Wire Line
	11650 5900 12150 5900
Text Label 11700 6950 0    60   ~ 0
CLK
Text Label 11700 7050 0    60   ~ 0
-ucodeRST
Wire Wire Line
	11650 6950 12150 6950
Wire Wire Line
	11650 7050 12150 7050
Text Label 5250 5350 0    60   ~ 0
pcClk
Text Label 11700 5600 0    60   ~ 0
pcClk
Text HLabel 13550 5700 2    60   Output ~ 0
uPcClk
$EndSCHEMATC
