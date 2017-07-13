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
$Descr User 13780 10645
encoding utf-8
Sheet 9 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1300 700  0    60   Input ~ 0
OPC0
Text HLabel 1300 800  0    60   Input ~ 0
OPC1
Text HLabel 1300 900  0    60   Input ~ 0
OPC2
Text HLabel 1300 1000 0    60   Input ~ 0
OPC3
Text HLabel 1300 1100 0    60   Input ~ 0
OPC4
Text HLabel 1300 1200 0    60   Input ~ 0
OPC5
Text HLabel 1300 1300 0    60   Input ~ 0
OPC6
Text HLabel 1300 1400 0    60   Input ~ 0
OPC7
Text Label 1450 700  0    60   ~ 0
OPC0
Text Label 1450 800  0    60   ~ 0
OPC1
Text Label 1450 900  0    60   ~ 0
OPC2
Text Label 1450 1000 0    60   ~ 0
OPC3
Text Label 1450 1100 0    60   ~ 0
OPC4
Text Label 1450 1200 0    60   ~ 0
OPC5
Text Label 1450 1300 0    60   ~ 0
OPC6
Text Label 1450 1400 0    60   ~ 0
OPC7
Text HLabel 1350 1900 0    60   Input ~ 0
CLK
$Comp
L 74LS00 U801
U 1 1 594ED24F
P 2250 2200
F 0 "U801" H 2250 2250 50  0000 C CNN
F 1 "74HC00" H 2250 2100 50  0000 C CNN
F 2 "" H 2250 2200 50  0001 C CNN
F 3 "" H 2250 2200 50  0001 C CNN
	1    2250 2200
	1    0    0    -1  
$EndComp
Text HLabel 1350 2100 0    60   Input ~ 0
-RST
Text HLabel 1350 2300 0    60   Input ~ 0
-DIS
Text Label 3750 3100 0    60   ~ 0
-ucodeRST
Text Label 1450 1900 0    60   ~ 0
CLK
$Comp
L 74LS00 U801
U 2 1 594ED25A
P 2250 2700
F 0 "U801" H 2250 2750 50  0000 C CNN
F 1 "74HC00" H 2250 2600 50  0000 C CNN
F 2 "" H 2250 2700 50  0001 C CNN
F 3 "" H 2250 2700 50  0001 C CNN
	2    2250 2700
	1    0    0    -1  
$EndComp
$Comp
L 74LS590 U802
U 1 1 594ED261
P 4500 2200
F 0 "U802" H 4800 3000 50  0000 C CNN
F 1 "74HC590" H 4750 1450 50  0000 C CNN
F 2 "" H 4500 2200 60  0000 C CNN
F 3 "" H 4500 2200 60  0000 C CNN
	1    4500 2200
	1    0    0    -1  
$EndComp
Text HLabel 1350 1650 0    60   Input ~ 0
-CLK
Text Label 5100 2150 0    60   ~ 0
UC0
Text Label 5100 2250 0    60   ~ 0
UC1
Text Label 5100 2350 0    60   ~ 0
UC2
Text Label 5100 2450 0    60   ~ 0
UC3
Text Label 5100 2550 0    60   ~ 0
UC4
$Comp
L GND #PWR?
U 1 1 594ED26E
P 3400 2250
F 0 "#PWR?" H 3400 2000 50  0001 C CNN
F 1 "GND" H 3400 2100 50  0000 C CNN
F 2 "" H 3400 2250 50  0001 C CNN
F 3 "" H 3400 2250 50  0001 C CNN
	1    3400 2250
	1    0    0    -1  
$EndComp
Text Notes 3250 1250 0    60   ~ 0
Counter is advanced on positive clock edges,\nand counter values are clocked into the\nregister on negative clock edges.  So, updated\ncounts appear on negative clock edges.
$Comp
L 27C64 U803
U 1 1 594ED303
P 2100 6100
F 0 "U803" H 1850 7100 50  0000 C CNN
F 1 "27C64" H 2100 5100 50  0000 C CNN
F 2 "" H 2100 6100 50  0001 C CNN
F 3 "" H 2100 6100 50  0001 C CNN
	1    2100 6100
	1    0    0    -1  
$EndComp
$Comp
L 27C64 U804
U 1 1 594ED39E
P 2100 8200
F 0 "U804" H 1850 9200 50  0000 C CNN
F 1 "27C64" H 2100 7200 50  0000 C CNN
F 2 "" H 2100 8200 50  0001 C CNN
F 3 "" H 2100 8200 50  0001 C CNN
	1    2100 8200
	1    0    0    -1  
$EndComp
$Comp
L 27C64 U805
U 1 1 594ED4D7
P 4650 6100
F 0 "U805" H 4400 7100 50  0000 C CNN
F 1 "27C64" H 4650 5100 50  0000 C CNN
F 2 "" H 4650 6100 50  0001 C CNN
F 3 "" H 4650 6100 50  0001 C CNN
	1    4650 6100
	1    0    0    -1  
$EndComp
$Comp
L 27C64 U806
U 1 1 594ED4DD
P 4650 8200
F 0 "U806" H 4400 9200 50  0000 C CNN
F 1 "27C64" H 4650 7200 50  0000 C CNN
F 2 "" H 4650 8200 50  0001 C CNN
F 3 "" H 4650 8200 50  0001 C CNN
	1    4650 8200
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U807
U 1 1 594ED798
P 7600 5600
F 0 "U807" H 7600 5600 50  0000 C CNN
F 1 "74HCT175" H 7700 5200 50  0000 C CNN
F 2 "" H 7600 5600 50  0001 C CNN
F 3 "" H 7600 5600 50  0001 C CNN
	1    7600 5600
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U811
U 1 1 594ED847
P 10250 5600
F 0 "U811" H 10250 5600 50  0000 C CNN
F 1 "74HCT175" H 10350 5200 50  0000 C CNN
F 2 "" H 10250 5600 50  0001 C CNN
F 3 "" H 10250 5600 50  0001 C CNN
	1    10250 5600
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U808
U 1 1 594ED913
P 7600 6750
F 0 "U808" H 7600 6750 50  0000 C CNN
F 1 "74HCT175" H 7700 6350 50  0000 C CNN
F 2 "" H 7600 6750 50  0001 C CNN
F 3 "" H 7600 6750 50  0001 C CNN
	1    7600 6750
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U812
U 1 1 594ED919
P 10250 6750
F 0 "U812" H 10250 6750 50  0000 C CNN
F 1 "74HCT175" H 10350 6350 50  0000 C CNN
F 2 "" H 10250 6750 50  0001 C CNN
F 3 "" H 10250 6750 50  0001 C CNN
	1    10250 6750
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U809
U 1 1 594EDA9D
P 7600 7900
F 0 "U809" H 7600 7900 50  0000 C CNN
F 1 "74HCT175" H 7700 7500 50  0000 C CNN
F 2 "" H 7600 7900 50  0001 C CNN
F 3 "" H 7600 7900 50  0001 C CNN
	1    7600 7900
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U813
U 1 1 594EDAA3
P 10250 7900
F 0 "U813" H 10250 7900 50  0000 C CNN
F 1 "74HCT175" H 10350 7500 50  0000 C CNN
F 2 "" H 10250 7900 50  0001 C CNN
F 3 "" H 10250 7900 50  0001 C CNN
	1    10250 7900
	1    0    0    -1  
$EndComp
$Comp
L 74LS175 U810
U 1 1 594EDAA9
P 7600 9050
F 0 "U810" H 7600 9050 50  0000 C CNN
F 1 "74HCT175" H 7700 8650 50  0000 C CNN
F 2 "" H 7600 9050 50  0001 C CNN
F 3 "" H 7600 9050 50  0001 C CNN
	1    7600 9050
	1    0    0    -1  
$EndComp
Text Label 1000 5200 0    60   ~ 0
UC0
Text Label 1000 5300 0    60   ~ 0
UC1
Text Label 1000 5400 0    60   ~ 0
UC2
Text Label 1000 5500 0    60   ~ 0
UC3
Text Label 1000 5600 0    60   ~ 0
UC4
Text Label 1000 5700 0    60   ~ 0
OPC0
Text Label 1000 5800 0    60   ~ 0
OPC1
Text Label 1000 5900 0    60   ~ 0
OPC2
Text Label 1000 6000 0    60   ~ 0
OPC3
Text Label 1000 6100 0    60   ~ 0
OPC4
Text Label 1000 6200 0    60   ~ 0
OPC5
Text Label 1000 6300 0    60   ~ 0
OPC6
Text Label 1000 6400 0    60   ~ 0
OPC7
Text Label 3550 5200 0    60   ~ 0
UC0
Text Label 3550 5300 0    60   ~ 0
UC1
Text Label 3550 5400 0    60   ~ 0
UC2
Text Label 3550 5500 0    60   ~ 0
UC3
Text Label 3550 5600 0    60   ~ 0
UC4
Text Label 3550 5700 0    60   ~ 0
OPC0
Text Label 3550 5800 0    60   ~ 0
OPC1
Text Label 3550 5900 0    60   ~ 0
OPC2
Text Label 3550 6000 0    60   ~ 0
OPC3
Text Label 3550 6100 0    60   ~ 0
OPC4
Text Label 3550 6200 0    60   ~ 0
OPC5
Text Label 3550 6300 0    60   ~ 0
OPC6
Text Label 3550 6400 0    60   ~ 0
OPC7
Text Label 1000 7300 0    60   ~ 0
UC0
Text Label 1000 7400 0    60   ~ 0
UC1
Text Label 1000 7500 0    60   ~ 0
UC2
Text Label 1000 7600 0    60   ~ 0
UC3
Text Label 1000 7700 0    60   ~ 0
UC4
Text Label 1000 7800 0    60   ~ 0
OPC0
Text Label 1000 7900 0    60   ~ 0
OPC1
Text Label 1000 8000 0    60   ~ 0
OPC2
Text Label 1000 8100 0    60   ~ 0
OPC3
Text Label 1000 8200 0    60   ~ 0
OPC4
Text Label 1000 8300 0    60   ~ 0
OPC5
Text Label 1000 8400 0    60   ~ 0
OPC6
Text Label 1000 8500 0    60   ~ 0
OPC7
Text Label 3550 7300 0    60   ~ 0
UC0
Text Label 3550 7400 0    60   ~ 0
UC1
Text Label 3550 7500 0    60   ~ 0
UC2
Text Label 3550 7600 0    60   ~ 0
UC3
Text Label 3550 7700 0    60   ~ 0
UC4
Text Label 3550 7800 0    60   ~ 0
OPC0
Text Label 3550 7900 0    60   ~ 0
OPC1
Text Label 3550 8000 0    60   ~ 0
OPC2
Text Label 3550 8100 0    60   ~ 0
OPC3
Text Label 3550 8200 0    60   ~ 0
OPC4
Text Label 3550 8300 0    60   ~ 0
OPC5
Text Label 3550 8400 0    60   ~ 0
OPC6
Text Label 3550 8500 0    60   ~ 0
OPC7
Text Label 2850 5200 0    60   ~ 0
rdGP
Text Label 2850 5300 0    60   ~ 0
rdGP0
Text Label 2850 5400 0    60   ~ 0
rdGP1
Text Label 2850 5500 0    60   ~ 0
rdAR
Text Label 2850 5600 0    60   ~ 0
rdPC
Text Label 2850 5800 0    60   ~ 0
wrGPLo
Text Label 2850 5900 0    60   ~ 0
wrGPHi
Text Label 2850 7300 0    60   ~ 0
wrGP0
Text Label 2850 7400 0    60   ~ 0
wrGP1
Text Label 2850 7500 0    60   ~ 0
wrARLo
Text Label 2850 7600 0    60   ~ 0
wrARHi
$Comp
L VCC #PWR?
U 1 1 594EFA5F
P 750 6550
F 0 "#PWR?" H 750 6400 50  0001 C CNN
F 1 "VCC" H 750 6700 50  0000 C CNN
F 2 "" H 750 6550 50  0001 C CNN
F 3 "" H 750 6550 50  0001 C CNN
	1    750  6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 594EFC0B
P 750 7050
F 0 "#PWR?" H 750 6800 50  0001 C CNN
F 1 "GND" H 750 6900 50  0000 C CNN
F 2 "" H 750 7050 50  0001 C CNN
F 3 "" H 750 7050 50  0001 C CNN
	1    750  7050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 594EFC4C
P 3300 6550
F 0 "#PWR?" H 3300 6400 50  0001 C CNN
F 1 "VCC" H 3300 6700 50  0000 C CNN
F 2 "" H 3300 6550 50  0001 C CNN
F 3 "" H 3300 6550 50  0001 C CNN
	1    3300 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 594EFC58
P 3300 7050
F 0 "#PWR?" H 3300 6800 50  0001 C CNN
F 1 "GND" H 3300 6900 50  0000 C CNN
F 2 "" H 3300 7050 50  0001 C CNN
F 3 "" H 3300 7050 50  0001 C CNN
	1    3300 7050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 594EFC80
P 750 8650
F 0 "#PWR?" H 750 8500 50  0001 C CNN
F 1 "VCC" H 750 8800 50  0000 C CNN
F 2 "" H 750 8650 50  0001 C CNN
F 3 "" H 750 8650 50  0001 C CNN
	1    750  8650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 594EFC8C
P 750 9150
F 0 "#PWR?" H 750 8900 50  0001 C CNN
F 1 "GND" H 750 9000 50  0000 C CNN
F 2 "" H 750 9150 50  0001 C CNN
F 3 "" H 750 9150 50  0001 C CNN
	1    750  9150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 594EFCB4
P 3300 8650
F 0 "#PWR?" H 3300 8500 50  0001 C CNN
F 1 "VCC" H 3300 8800 50  0000 C CNN
F 2 "" H 3300 8650 50  0001 C CNN
F 3 "" H 3300 8650 50  0001 C CNN
	1    3300 8650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 594EFCC0
P 3300 9150
F 0 "#PWR?" H 3300 8900 50  0001 C CNN
F 1 "GND" H 3300 9000 50  0000 C CNN
F 2 "" H 3300 9150 50  0001 C CNN
F 3 "" H 3300 9150 50  0001 C CNN
	1    3300 9150
	1    0    0    -1  
$EndComp
Text Label 6450 5150 0    60   ~ 0
rdGP
Text Label 6450 5350 0    60   ~ 0
rdGP0
Text Label 6450 5550 0    60   ~ 0
rdGP1
Text Label 6450 5750 0    60   ~ 0
rdAR
Text Label 6450 6300 0    60   ~ 0
rdPC
Text Label 6450 6700 0    60   ~ 0
wrGPLo
Text Label 6450 6900 0    60   ~ 0
wrGPHi
Text Label 6450 7450 0    60   ~ 0
wrGP0
Text Label 6450 7650 0    60   ~ 0
wrGP1
Text Label 6450 7850 0    60   ~ 0
wrARLo
Text Label 6450 8050 0    60   ~ 0
wrARHi
Text Label 2850 7700 0    60   ~ 0
wrPCLo
Text Label 2850 7800 0    60   ~ 0
wrPCHi
Text Label 6450 8600 0    60   ~ 0
wrPCLo
Text Label 6450 8800 0    60   ~ 0
wrPCHi
Text HLabel 8300 5250 2    60   Output ~ 0
-uRdGP
Text HLabel 8300 5350 2    60   Output ~ 0
uRdGP0
Text HLabel 8300 5550 2    60   Output ~ 0
uRdGP1
Text HLabel 8300 5850 2    60   Output ~ 0
-uRdAR
Text Notes 9300 9150 0    60   ~ 0
microcode / control signals
Text HLabel 8300 6400 2    60   Output ~ 0
-uRdPC
Text HLabel 8300 6800 2    60   Output ~ 0
-uWrGPLo
Text HLabel 8300 7000 2    60   Output ~ 0
-uWrGPHi
Text HLabel 8300 7450 2    60   Output ~ 0
uWrGP0
Text HLabel 8300 7650 2    60   Output ~ 0
uWrGP1
Text HLabel 8300 7950 2    60   Output ~ 0
-uWrARLo
Text HLabel 8300 8150 2    60   Output ~ 0
-uWrARHi
Text HLabel 8300 8700 2    60   Output ~ 0
-uWrPCLo
Text HLabel 8300 8900 2    60   Output ~ 0
-uWrPCHi
Text Label 6450 5950 0    60   ~ 0
CLK
Text Label 6450 6050 0    60   ~ 0
-ucodeRST
Text Label 6450 7100 0    60   ~ 0
CLK
Text Label 6450 7200 0    60   ~ 0
-ucodeRST
Text Label 6450 8250 0    60   ~ 0
CLK
Text Label 6450 8350 0    60   ~ 0
-ucodeRST
Text Label 6450 9400 0    60   ~ 0
CLK
Text Label 6450 9500 0    60   ~ 0
-ucodeRST
$Comp
L 74LS00 U801
U 3 1 59522853
P 11300 2850
F 0 "U801" H 11300 2900 50  0000 C CNN
F 1 "74HC00" H 11300 2750 50  0000 C CNN
F 2 "" H 11300 2850 50  0001 C CNN
F 3 "" H 11300 2850 50  0001 C CNN
	3    11300 2850
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U801
U 4 1 59522859
P 11300 3350
F 0 "U801" H 11300 3400 50  0000 C CNN
F 1 "74HC00" H 11300 3250 50  0000 C CNN
F 2 "" H 11300 3350 50  0001 C CNN
F 3 "" H 11300 3350 50  0001 C CNN
	4    11300 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59522CEA
P 10600 4200
F 0 "#PWR?" H 10600 3950 50  0001 C CNN
F 1 "GND" H 10600 4050 50  0000 C CNN
F 2 "" H 10600 4200 50  0001 C CNN
F 3 "" H 10600 4200 50  0001 C CNN
	1    10600 4200
	1    0    0    -1  
$EndComp
Text Notes 10950 2600 0    60   ~ 0
unused gates
Text Label 5400 5200 0    60   ~ 0
aluCarryIn
Text Label 5400 5300 0    60   ~ 0
aluMode
Text Label 5400 5600 0    60   ~ 0
aluOp0
Text Label 5400 5700 0    60   ~ 0
aluOp1
Text Label 5400 5800 0    60   ~ 0
aluOp2
Text Label 5400 5900 0    60   ~ 0
aluOp3
Text Label 5400 5400 0    60   ~ 0
aluOut
Text Label 9100 5150 0    60   ~ 0
aluCarryIn
Text Label 9100 5350 0    60   ~ 0
aluMode
Text Label 9100 6300 0    60   ~ 0
aluOp0
Text Label 9100 6500 0    60   ~ 0
aluOp1
Text Label 9100 6700 0    60   ~ 0
aluOp2
Text Label 9100 6900 0    60   ~ 0
aluOp3
Text Label 9100 5550 0    60   ~ 0
aluOut
Text HLabel 10950 5250 2    60   Output ~ 0
-uAluCarryIn
Text HLabel 10950 5350 2    60   Output ~ 0
uAluMode
Text HLabel 10950 6300 2    60   Output ~ 0
uAluOp0
Text HLabel 10950 6500 2    60   Output ~ 0
uAluOp1
Text HLabel 10950 6700 2    60   Output ~ 0
uAluOp2
Text HLabel 10950 6900 2    60   Output ~ 0
uAluOp3
Text HLabel 10950 5650 2    60   Output ~ 0
-uAluOut
$Comp
L 74LS32 U815
U 1 1 5953FB38
P 8600 1400
F 0 "U815" H 8600 1450 50  0000 C CNN
F 1 "74HCT32" H 8600 1350 50  0000 C CNN
F 2 "" H 8600 1400 50  0001 C CNN
F 3 "" H 8600 1400 50  0001 C CNN
	1    8600 1400
	1    0    0    -1  
$EndComp
Text HLabel 1600 4100 0    60   Input ~ 0
ccEq
Text HLabel 1600 4200 0    60   Input ~ 0
-ccEq
Text HLabel 1600 4300 0    60   Input ~ 0
ccCarryOut
Text HLabel 1600 4400 0    60   Input ~ 0
-ccCarryOut
Text Label 1700 4100 0    60   ~ 0
ccEq
Text Label 1700 4200 0    60   ~ 0
-ccEq
Text Label 1700 4300 0    60   ~ 0
ccCarryOut
Text Label 1700 4400 0    60   ~ 0
-ccCarryOut
$Comp
L 74LS32 U815
U 2 1 59540474
P 8600 1900
F 0 "U815" H 8600 1950 50  0000 C CNN
F 1 "74HCT32" H 8600 1850 50  0000 C CNN
F 2 "" H 8600 1900 50  0001 C CNN
F 3 "" H 8600 1900 50  0001 C CNN
	2    8600 1900
	1    0    0    -1  
$EndComp
$Comp
L 74LS32 U815
U 3 1 595404B1
P 8600 2400
F 0 "U815" H 8600 2450 50  0000 C CNN
F 1 "74HCT32" H 8600 2350 50  0000 C CNN
F 2 "" H 8600 2400 50  0001 C CNN
F 3 "" H 8600 2400 50  0001 C CNN
	3    8600 2400
	1    0    0    -1  
$EndComp
Text Label 7200 2500 0    60   ~ 0
-endIfNoCarry
Text Label 7200 2000 0    60   ~ 0
-endIfNeq
Text Label 7200 1500 0    60   ~ 0
-endIfEq
Text Label 7200 2300 0    60   ~ 0
ccCarryOut
Text Label 7200 1800 0    60   ~ 0
ccEq
Text Label 7200 1300 0    60   ~ 0
-ccEq
$Comp
L 74LS32 U815
U 4 1 595412AF
P 11300 3850
F 0 "U815" H 11300 3900 50  0000 C CNN
F 1 "74HCT32" H 11300 3800 50  0000 C CNN
F 2 "" H 11300 3850 50  0001 C CNN
F 3 "" H 11300 3850 50  0001 C CNN
	4    11300 3850
	1    0    0    -1  
$EndComp
$Comp
L 74LS20 U816
U 1 1 59541F40
P 8600 3200
F 0 "U816" H 8600 3300 50  0000 C CNN
F 1 "74HCT20" H 8600 3100 50  0000 C CNN
F 2 "" H 8600 3200 50  0001 C CNN
F 3 "" H 8600 3200 50  0001 C CNN
	1    8600 3200
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 595420BD
P 7800 2900
F 0 "#PWR?" H 7800 2750 50  0001 C CNN
F 1 "VCC" H 7800 3050 50  0000 C CNN
F 2 "" H 7800 2900 50  0001 C CNN
F 3 "" H 7800 2900 50  0001 C CNN
	1    7800 2900
	1    0    0    -1  
$EndComp
Text Label 7200 3150 0    60   ~ 0
-ccEq
Text Label 7200 3250 0    60   ~ 0
ccCarryOut
Text Label 7200 3350 0    60   ~ 0
endIfNeqCarry
$Comp
L 74LS20 U816
U 2 1 59542D1F
P 8600 4000
F 0 "U816" H 8600 4100 50  0000 C CNN
F 1 "74HCT20" H 8600 3900 50  0000 C CNN
F 2 "" H 8600 4000 50  0001 C CNN
F 3 "" H 8600 4000 50  0001 C CNN
	2    8600 4000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 59542D83
P 7800 3700
F 0 "#PWR?" H 7800 3550 50  0001 C CNN
F 1 "VCC" H 7800 3850 50  0000 C CNN
F 2 "" H 7800 3700 50  0001 C CNN
F 3 "" H 7800 3700 50  0001 C CNN
	1    7800 3700
	1    0    0    -1  
$EndComp
Text Label 7200 3950 0    60   ~ 0
-ccEq
Text Label 7200 4050 0    60   ~ 0
-ccCarryOut
Text Label 7200 4150 0    60   ~ 0
endIfNeqNoCarry
$Comp
L 74LS30 U817
U 1 1 595438F4
P 11000 1550
F 0 "U817" H 11000 1650 50  0000 C CNN
F 1 "74HCT30" H 11000 1450 50  0000 C CNN
F 2 "" H 11000 1550 50  0001 C CNN
F 3 "" H 11000 1550 50  0001 C CNN
	1    11000 1550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 59543CA5
P 10150 1050
F 0 "#PWR?" H 10150 900 50  0001 C CNN
F 1 "VCC" H 10150 1200 50  0000 C CNN
F 2 "" H 10150 1050 50  0001 C CNN
F 3 "" H 10150 1050 50  0001 C CNN
	1    10150 1050
	1    0    0    -1  
$EndComp
Text Label 9250 1400 0    60   ~ 0
-end0
Text Label 9250 1900 0    60   ~ 0
-end1
Text Label 9250 2400 0    60   ~ 0
-end2
Text Label 9250 3200 0    60   ~ 0
-end3
Text Label 9250 4000 0    60   ~ 0
-end4
Text Label 11900 1550 0    60   ~ 0
end
Text Notes 8400 1050 0    60   ~ 0
conditional branch logic
Text Label 2850 8000 0    60   ~ 0
driveAddr
Text Label 6450 9200 0    60   ~ 0
driveAddr
Text HLabel 8300 9300 2    60   Output ~ 0
-uDriveAddr
Text Label 5400 7300 0    60   ~ 0
-endIfEq
Text Label 5400 7400 0    60   ~ 0
-endIfNeq
Text Label 5400 7500 0    60   ~ 0
-endIfNoCarry
Text Label 5400 7600 0    60   ~ 0
endIfNeqCarry
Text Label 5400 7700 0    60   ~ 0
endIfNeqNoCarry
Text Label 9100 5950 0    60   ~ 0
CLK
Text Label 9100 6050 0    60   ~ 0
-ucodeRST
Text Label 9100 7100 0    60   ~ 0
CLK
Text Label 9100 7200 0    60   ~ 0
-ucodeRST
Text Label 5400 5500 0    60   ~ 0
pcClk
Text Label 9100 5750 0    60   ~ 0
pcClk
Text HLabel 10950 5850 2    60   Output ~ 0
uPcClk
Text Label 9100 7450 0    60   ~ 0
end
Text HLabel 10950 7450 2    60   Output ~ 0
uEnd
Text Label 9100 8250 0    60   ~ 0
CLK
Text Label 9100 8350 0    60   ~ 0
-ucodeRST
Text Notes 1250 3900 0    60   ~ 0
condition code signals
Text Notes 3150 4900 0    60   ~ 0
ROMs
Text Notes 8300 4900 0    60   ~ 0
control signal registers
Text Label 5400 7800 0    60   ~ 0
-endUncond
Text Label 7200 4400 0    60   ~ 0
-endUncond
Text Label 2850 5700 0    60   ~ 0
rwMem
Wire Wire Line
	1300 700  1700 700 
Wire Wire Line
	1300 800  1700 800 
Wire Wire Line
	1300 900  1700 900 
Wire Wire Line
	1300 1000 1700 1000
Wire Wire Line
	1300 1100 1700 1100
Wire Wire Line
	1300 1200 1700 1200
Wire Wire Line
	1300 1300 1700 1300
Wire Wire Line
	1300 1400 1700 1400
Wire Wire Line
	1350 1900 3950 1900
Wire Wire Line
	1650 2100 1350 2100
Wire Wire Line
	1650 2300 1350 2300
Wire Wire Line
	1650 2600 1550 2600
Wire Wire Line
	1550 2600 1550 2800
Wire Wire Line
	1550 2700 1350 2700
Wire Wire Line
	1350 2700 1350 2450
Wire Wire Line
	1350 2450 3050 2450
Wire Wire Line
	3050 2450 3050 2200
Wire Wire Line
	1550 2800 1650 2800
Connection ~ 1550 2700
Wire Wire Line
	2850 2700 3050 2700
Wire Wire Line
	3050 2700 3050 3100
Wire Wire Line
	3050 3100 4200 3100
Wire Wire Line
	3950 1650 1350 1650
Wire Wire Line
	3950 2000 3700 2000
Wire Wire Line
	3700 2000 3700 3100
Connection ~ 3700 3100
Wire Wire Line
	3050 2200 2850 2200
Wire Wire Line
	3950 1800 3400 1800
Wire Wire Line
	3400 1550 3400 2250
Wire Wire Line
	3950 1550 3400 1550
Connection ~ 3400 1800
Wire Wire Line
	5050 2150 5450 2150
Wire Wire Line
	5050 2250 5450 2250
Wire Wire Line
	5050 2350 5450 2350
Wire Wire Line
	5050 2450 5450 2450
Wire Wire Line
	5050 2550 5450 2550
Wire Wire Line
	1400 5200 950  5200
Wire Wire Line
	1400 5300 950  5300
Wire Wire Line
	1400 5400 950  5400
Wire Wire Line
	1400 5500 950  5500
Wire Wire Line
	1400 5600 950  5600
Wire Wire Line
	1400 5700 950  5700
Wire Wire Line
	1400 5800 950  5800
Wire Wire Line
	1400 5900 950  5900
Wire Wire Line
	1400 6000 950  6000
Wire Wire Line
	1400 6100 950  6100
Wire Wire Line
	1400 6200 950  6200
Wire Wire Line
	1400 6300 950  6300
Wire Wire Line
	1400 6400 950  6400
Wire Wire Line
	3950 5200 3500 5200
Wire Wire Line
	3950 5300 3500 5300
Wire Wire Line
	3950 5400 3500 5400
Wire Wire Line
	3950 5500 3500 5500
Wire Wire Line
	3950 5600 3500 5600
Wire Wire Line
	3950 5700 3500 5700
Wire Wire Line
	3950 5800 3500 5800
Wire Wire Line
	3950 5900 3500 5900
Wire Wire Line
	3950 6000 3500 6000
Wire Wire Line
	3950 6100 3500 6100
Wire Wire Line
	3950 6200 3500 6200
Wire Wire Line
	3950 6300 3500 6300
Wire Wire Line
	3950 6400 3500 6400
Wire Wire Line
	1400 7300 950  7300
Wire Wire Line
	1400 7400 950  7400
Wire Wire Line
	1400 7500 950  7500
Wire Wire Line
	1400 7600 950  7600
Wire Wire Line
	1400 7700 950  7700
Wire Wire Line
	1400 7800 950  7800
Wire Wire Line
	1400 7900 950  7900
Wire Wire Line
	1400 8000 950  8000
Wire Wire Line
	1400 8100 950  8100
Wire Wire Line
	1400 8200 950  8200
Wire Wire Line
	1400 8300 950  8300
Wire Wire Line
	1400 8400 950  8400
Wire Wire Line
	1400 8500 950  8500
Wire Wire Line
	3950 7300 3500 7300
Wire Wire Line
	3950 7400 3500 7400
Wire Wire Line
	3950 7500 3500 7500
Wire Wire Line
	3950 7600 3500 7600
Wire Wire Line
	3950 7700 3500 7700
Wire Wire Line
	3950 7800 3500 7800
Wire Wire Line
	3950 7900 3500 7900
Wire Wire Line
	3950 8000 3500 8000
Wire Wire Line
	3950 8100 3500 8100
Wire Wire Line
	3950 8200 3500 8200
Wire Wire Line
	3950 8300 3500 8300
Wire Wire Line
	3950 8400 3500 8400
Wire Wire Line
	3950 8500 3500 8500
Wire Wire Line
	2800 5200 3300 5200
Wire Wire Line
	2800 5300 3300 5300
Wire Wire Line
	2800 5400 3300 5400
Wire Wire Line
	2800 5500 3300 5500
Wire Wire Line
	2800 5600 3300 5600
Wire Wire Line
	2800 5800 3300 5800
Wire Wire Line
	2800 5900 3300 5900
Wire Wire Line
	2800 7300 3300 7300
Wire Wire Line
	2800 7400 3300 7400
Wire Wire Line
	2800 7500 3300 7500
Wire Wire Line
	2800 7600 3300 7600
Wire Wire Line
	1400 6600 750  6600
Wire Wire Line
	750  6600 750  6550
Wire Wire Line
	1400 6700 750  6700
Wire Wire Line
	750  6700 750  7050
Wire Wire Line
	1400 6900 750  6900
Connection ~ 750  6900
Wire Wire Line
	1400 7000 750  7000
Connection ~ 750  7000
Wire Wire Line
	3950 6600 3300 6600
Wire Wire Line
	3300 6600 3300 6550
Wire Wire Line
	3950 6700 3300 6700
Wire Wire Line
	3300 6700 3300 7050
Wire Wire Line
	3950 6900 3300 6900
Connection ~ 3300 6900
Wire Wire Line
	3950 7000 3300 7000
Connection ~ 3300 7000
Wire Wire Line
	1400 8700 750  8700
Wire Wire Line
	750  8700 750  8650
Wire Wire Line
	1400 8800 750  8800
Wire Wire Line
	750  8800 750  9150
Wire Wire Line
	1400 9000 750  9000
Connection ~ 750  9000
Wire Wire Line
	1400 9100 750  9100
Connection ~ 750  9100
Wire Wire Line
	3950 8700 3300 8700
Wire Wire Line
	3300 8700 3300 8650
Wire Wire Line
	3950 8800 3300 8800
Wire Wire Line
	3300 8800 3300 9150
Wire Wire Line
	3950 9000 3300 9000
Connection ~ 3300 9000
Wire Wire Line
	3950 9100 3300 9100
Connection ~ 3300 9100
Wire Wire Line
	6900 5150 6400 5150
Wire Wire Line
	6900 5350 6400 5350
Wire Wire Line
	6900 5550 6400 5550
Wire Wire Line
	6900 5750 6400 5750
Wire Wire Line
	6900 6300 6400 6300
Wire Wire Line
	6900 6700 6400 6700
Wire Wire Line
	6900 6900 6400 6900
Wire Wire Line
	6900 7450 6400 7450
Wire Wire Line
	6900 7650 6400 7650
Wire Wire Line
	6900 7850 6400 7850
Wire Wire Line
	6900 8050 6400 8050
Wire Wire Line
	6900 8600 6400 8600
Wire Wire Line
	6900 8800 6400 8800
Wire Wire Line
	9550 5150 9050 5150
Wire Wire Line
	9550 5350 9050 5350
Wire Wire Line
	9550 6300 9050 6300
Wire Wire Line
	9550 6500 9050 6500
Wire Wire Line
	9550 6700 9050 6700
Wire Wire Line
	9550 6900 9050 6900
Wire Wire Line
	9550 5550 9050 5550
Wire Wire Line
	9550 5750 9050 5750
Wire Wire Line
	9550 7450 9050 7450
Wire Wire Line
	9550 7650 9050 7650
Wire Wire Line
	9550 7850 9050 7850
Wire Wire Line
	9550 8050 9050 8050
Wire Wire Line
	2800 7700 3300 7700
Wire Wire Line
	2800 7800 3300 7800
Wire Wire Line
	8300 5250 8300 5250
Wire Wire Line
	8300 5350 8300 5350
Wire Wire Line
	8300 5550 8300 5550
Wire Wire Line
	8300 5850 8300 5850
Wire Wire Line
	8300 6400 8300 6400
Wire Wire Line
	8300 6800 8300 6800
Wire Wire Line
	8300 7000 8300 7000
Wire Wire Line
	8300 7450 8300 7450
Wire Wire Line
	8300 7650 8300 7650
Wire Wire Line
	8300 7950 8300 7950
Wire Wire Line
	8300 8150 8300 8150
Wire Wire Line
	8300 8700 8300 8700
Wire Wire Line
	8300 8900 8300 8900
Wire Wire Line
	8300 9100 8300 9100
Wire Wire Line
	8300 9200 8300 9200
Wire Wire Line
	6400 5950 6900 5950
Wire Wire Line
	6400 6050 6900 6050
Wire Wire Line
	6400 7100 6900 7100
Wire Wire Line
	6400 7200 6900 7200
Wire Wire Line
	6400 8250 6900 8250
Wire Wire Line
	6400 8350 6900 8350
Wire Wire Line
	6400 9400 6900 9400
Wire Wire Line
	6400 9500 6900 9500
Wire Wire Line
	10700 2750 10600 2750
Wire Wire Line
	10600 2750 10600 4200
Wire Wire Line
	10700 2950 10600 2950
Connection ~ 10600 2950
Wire Wire Line
	10700 3250 10600 3250
Connection ~ 10600 3250
Wire Wire Line
	10700 3450 10600 3450
Connection ~ 10600 3450
Wire Wire Line
	5350 5200 5800 5200
Wire Wire Line
	5350 5300 5800 5300
Wire Wire Line
	5350 5600 5800 5600
Wire Wire Line
	5350 5700 5800 5700
Wire Wire Line
	5350 5800 5800 5800
Wire Wire Line
	5350 5900 5800 5900
Wire Wire Line
	5350 5400 5800 5400
Wire Wire Line
	5350 5500 5800 5500
Wire Wire Line
	1600 4100 2250 4100
Wire Wire Line
	1600 4200 2250 4200
Wire Wire Line
	1600 4300 2250 4300
Wire Wire Line
	1600 4400 2250 4400
Wire Wire Line
	8000 2500 7150 2500
Wire Wire Line
	8000 2300 7150 2300
Wire Wire Line
	8000 2000 7150 2000
Wire Wire Line
	8000 1800 7150 1800
Wire Wire Line
	8000 1500 7150 1500
Wire Wire Line
	8000 1300 7150 1300
Wire Wire Line
	10700 3750 10600 3750
Connection ~ 10600 3750
Wire Wire Line
	10700 3950 10600 3950
Connection ~ 10600 3950
Wire Wire Line
	8000 3050 7800 3050
Wire Wire Line
	7800 3050 7800 2900
Wire Wire Line
	8000 3150 7150 3150
Wire Wire Line
	8000 3250 7150 3250
Wire Wire Line
	8000 3350 7150 3350
Wire Wire Line
	8000 3850 7800 3850
Wire Wire Line
	7800 3850 7800 3700
Wire Wire Line
	8000 3950 7150 3950
Wire Wire Line
	8000 4050 7150 4050
Wire Wire Line
	8000 4150 7150 4150
Wire Wire Line
	9200 1400 10400 1400
Wire Wire Line
	10150 1300 10400 1300
Wire Wire Line
	10150 1050 10150 1300
Wire Wire Line
	10400 1200 10150 1200
Connection ~ 10150 1200
Wire Wire Line
	10400 1500 9650 1500
Wire Wire Line
	9650 1500 9650 1900
Wire Wire Line
	9650 1900 9200 1900
Wire Wire Line
	10400 1600 9750 1600
Wire Wire Line
	9750 1600 9750 2400
Wire Wire Line
	9750 2400 9200 2400
Wire Wire Line
	10400 1700 9850 1700
Wire Wire Line
	9850 1700 9850 3200
Wire Wire Line
	9850 3200 9200 3200
Wire Wire Line
	10400 1800 9950 1800
Wire Wire Line
	9950 1800 9950 4000
Wire Wire Line
	9950 4000 9200 4000
Wire Wire Line
	10400 1900 10050 1900
Wire Wire Line
	10050 1900 10050 4400
Wire Wire Line
	10050 4400 7150 4400
Wire Wire Line
	11600 1550 12100 1550
Wire Wire Line
	2800 8000 3300 8000
Wire Wire Line
	6900 9200 6400 9200
Wire Wire Line
	5350 7300 5800 7300
Wire Wire Line
	5350 7400 5800 7400
Wire Wire Line
	5350 7500 5800 7500
Wire Wire Line
	5350 7600 5800 7600
Wire Wire Line
	5350 7700 5800 7700
Wire Wire Line
	5350 7800 5800 7800
Wire Wire Line
	5350 7900 5800 7900
Wire Wire Line
	5350 8000 5800 8000
Wire Wire Line
	9050 5950 9550 5950
Wire Wire Line
	9050 6050 9550 6050
Wire Wire Line
	9050 7100 9550 7100
Wire Wire Line
	9050 7200 9550 7200
Wire Wire Line
	9050 8250 9550 8250
Wire Wire Line
	9050 8350 9550 8350
Wire Wire Line
	2800 5700 3300 5700
Wire Wire Line
	6900 6500 6400 6500
Text Label 6450 6500 0    60   ~ 0
rwMem
Text HLabel 8300 6600 2    60   Output ~ 0
-rwMem
Wire Wire Line
	2800 7900 3300 7900
Text Label 2850 7900 0    60   ~ 0
memDir
Wire Wire Line
	6900 9000 6400 9000
Text Label 6450 9000 0    60   ~ 0
memDir
Text HLabel 8300 9000 2    60   Output ~ 0
uMemDir
Text Label 5400 7900 0    60   ~ 0
latchAddr
Text Label 9100 7650 0    60   ~ 0
latchAddr
Text HLabel 10950 7750 2    60   Output ~ 0
-uLatchAddr
$EndSCHEMATC
