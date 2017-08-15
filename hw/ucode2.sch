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
$Descr User 14173 10953
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
Text HLabel 900  700  0    60   Input ~ 0
OPC0
Text HLabel 900  800  0    60   Input ~ 0
OPC1
Text HLabel 900  900  0    60   Input ~ 0
OPC2
Text HLabel 900  1000 0    60   Input ~ 0
OPC3
Text HLabel 900  1100 0    60   Input ~ 0
OPC4
Text HLabel 900  1200 0    60   Input ~ 0
OPC5
Text HLabel 900  1300 0    60   Input ~ 0
OPC6
Text HLabel 900  1400 0    60   Input ~ 0
OPC7
Text Label 1050 700  0    60   ~ 0
OPC0
Text Label 1050 800  0    60   ~ 0
OPC1
Text Label 1050 900  0    60   ~ 0
OPC2
Text Label 1050 1000 0    60   ~ 0
OPC3
Text Label 1050 1100 0    60   ~ 0
OPC4
Text Label 1050 1200 0    60   ~ 0
OPC5
Text Label 1050 1300 0    60   ~ 0
OPC6
Text Label 1050 1400 0    60   ~ 0
OPC7
Text HLabel 950  1900 0    60   Input ~ 0
CLK
Text HLabel 950  2100 0    60   Input ~ 0
-RST
Text HLabel 950  2300 0    60   Input ~ 0
-DIS
Text Label 3350 3100 0    60   ~ 0
-ucodeRST
Text Label 1050 1900 0    60   ~ 0
CLK
$Comp
L 74LS590 U802
U 1 1 594ED261
P 4100 2200
F 0 "U802" H 4400 3000 50  0000 C CNN
F 1 "74HC590" H 4350 1450 50  0000 C CNN
F 2 "" H 4100 2200 60  0000 C CNN
F 3 "" H 4100 2200 60  0000 C CNN
	1    4100 2200
	1    0    0    -1  
$EndComp
Text HLabel 950  1650 0    60   Input ~ 0
-CLK
Text Label 4700 2150 0    60   ~ 0
UC0
Text Label 4700 2250 0    60   ~ 0
UC1
Text Label 4700 2350 0    60   ~ 0
UC2
Text Label 4700 2450 0    60   ~ 0
UC3
Text Label 4700 2550 0    60   ~ 0
UC4
$Comp
L GND #PWR?
U 1 1 594ED26E
P 3000 2250
F 0 "#PWR?" H 3000 2000 50  0001 C CNN
F 1 "GND" H 3000 2100 50  0000 C CNN
F 2 "" H 3000 2250 50  0001 C CNN
F 3 "" H 3000 2250 50  0001 C CNN
	1    3000 2250
	1    0    0    -1  
$EndComp
Text Notes 2850 1250 0    60   ~ 0
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
P 10900 5600
F 0 "U811" H 10900 5600 50  0000 C CNN
F 1 "74HCT175" H 11000 5200 50  0000 C CNN
F 2 "" H 10900 5600 50  0001 C CNN
F 3 "" H 10900 5600 50  0001 C CNN
	1    10900 5600
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
P 10900 6750
F 0 "U812" H 10900 6750 50  0000 C CNN
F 1 "74HCT175" H 11000 6350 50  0000 C CNN
F 2 "" H 10900 6750 50  0001 C CNN
F 3 "" H 10900 6750 50  0001 C CNN
	1    10900 6750
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
P 10900 7900
F 0 "U813" H 10900 7900 50  0000 C CNN
F 1 "74HCT175" H 11000 7500 50  0000 C CNN
F 2 "" H 10900 7900 50  0001 C CNN
F 3 "" H 10900 7900 50  0001 C CNN
	1    10900 7900
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
rdPC
Text Label 2850 7300 0    60   ~ 0
wrGPLo
Text Label 2850 7400 0    60   ~ 0
wrGPHi
Text Label 2850 7500 0    60   ~ 0
wrGP0
Text Label 2850 7600 0    60   ~ 0
wrGP1
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
rdPC
Text Label 6450 7450 0    60   ~ 0
wrGPLo
Text Label 6450 7650 0    60   ~ 0
wrGPHi
Text Label 6450 7850 0    60   ~ 0
wrGP0
Text Label 6450 8050 0    60   ~ 0
wrGP1
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
Text Notes 9750 9450 0    60   ~ 0
microcode / control signals
Text HLabel 8300 5850 2    60   Output ~ 0
-uRdPC
Text HLabel 8300 7550 2    60   Output ~ 0
-uWrGPLo
Text HLabel 8300 7750 2    60   Output ~ 0
-uWrGPHi
Text HLabel 8300 7850 2    60   Output ~ 0
uWrGP0
Text HLabel 8300 8050 2    60   Output ~ 0
uWrGP1
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
P 12050 1650
F 0 "U801" H 12050 1700 50  0000 C CNN
F 1 "74HCT00" H 12050 1550 50  0000 C CNN
F 2 "" H 12050 1650 50  0001 C CNN
F 3 "" H 12050 1650 50  0001 C CNN
	3    12050 1650
	1    0    0    -1  
$EndComp
Text Label 5400 5900 0    60   ~ 0
aluCarryIn
Text Label 5400 5800 0    60   ~ 0
aluMode
Text Label 5400 5400 0    60   ~ 0
aluOp0
Text Label 5400 5500 0    60   ~ 0
aluOp1
Text Label 5400 5600 0    60   ~ 0
aluOp2
Text Label 5400 5700 0    60   ~ 0
aluOp3
Text Label 5400 5200 0    60   ~ 0
aluOut
Text Label 9750 6900 0    60   ~ 0
aluCarryIn
Text Label 9750 6700 0    60   ~ 0
aluMode
Text Label 9750 5550 0    60   ~ 0
aluOp0
Text Label 9750 5750 0    60   ~ 0
aluOp1
Text Label 9750 6300 0    60   ~ 0
aluOp2
Text Label 9750 6500 0    60   ~ 0
aluOp3
Text Label 9750 5150 0    60   ~ 0
aluOut
Text HLabel 11600 7000 2    60   Output ~ 0
-uAluCarryIn
Text HLabel 11600 6700 2    60   Output ~ 0
uAluMode
Text HLabel 11600 5650 2    60   Output ~ 0
uAluOp0
Text HLabel 11600 5850 2    60   Output ~ 0
uAluOp1
Text HLabel 11600 6300 2    60   Output ~ 0
uAluOp2
Text HLabel 11600 6500 2    60   Output ~ 0
uAluOp3
Text HLabel 11600 5250 2    60   Output ~ 0
-uAluOut
Text HLabel 1200 4100 0    60   Input ~ 0
ccEq
Text HLabel 1200 4200 0    60   Input ~ 0
-ccEq
Text HLabel 1200 4300 0    60   Input ~ 0
ccCarryOut
Text HLabel 1200 4400 0    60   Input ~ 0
-ccCarryOut
Text Label 1300 4100 0    60   ~ 0
ccEq
Text Label 1300 4200 0    60   ~ 0
-ccEq
Text Label 1300 4300 0    60   ~ 0
ccCarryOut
Text Label 1300 4400 0    60   ~ 0
-ccCarryOut
Text Label 5550 2550 0    60   ~ 0
endIfNoCarry
Text Label 5550 2000 0    60   ~ 0
endIfNeq
Text Label 5550 1500 0    60   ~ 0
endIfEq
Text Label 5550 2400 0    60   ~ 0
-ccCarryOut
Text Label 5550 1800 0    60   ~ 0
-ccEq
Text Label 5550 1300 0    60   ~ 0
ccEq
Text Label 5550 3050 0    60   ~ 0
-ccEq
Text Label 5550 3200 0    60   ~ 0
ccCarryOut
Text Label 5550 3350 0    60   ~ 0
endIfNeqCarry
Text Label 5550 3850 0    60   ~ 0
-ccEq
Text Label 5550 4000 0    60   ~ 0
-ccCarryOut
Text Label 5550 4150 0    60   ~ 0
endIfNeqNoCarry
$Comp
L 74LS30 U815
U 1 1 595438F4
P 9350 1550
F 0 "U815" H 9350 1650 50  0000 C CNN
F 1 "74HCT30" H 9350 1450 50  0000 C CNN
F 2 "" H 9350 1550 50  0001 C CNN
F 3 "" H 9350 1550 50  0001 C CNN
	1    9350 1550
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR?
U 1 1 59543CA5
P 8500 1050
F 0 "#PWR?" H 8500 900 50  0001 C CNN
F 1 "VCC" H 8500 1200 50  0000 C CNN
F 2 "" H 8500 1050 50  0001 C CNN
F 3 "" H 8500 1050 50  0001 C CNN
	1    8500 1050
	1    0    0    -1  
$EndComp
Text Label 7600 1400 0    60   ~ 0
-end0
Text Label 7600 1900 0    60   ~ 0
-end1
Text Label 7600 2400 0    60   ~ 0
-end2
Text Label 7600 3200 0    60   ~ 0
-end3
Text Label 7600 4000 0    60   ~ 0
-end4
Text Label 10250 1550 0    60   ~ 0
end
Text Notes 6750 1050 0    60   ~ 0
conditional branch logic
Text Label 2850 5800 0    60   ~ 0
driveAddr
Text Label 6450 6700 0    60   ~ 0
driveAddr
Text HLabel 13050 3350 2    60   Output ~ 0
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
Text Label 9750 5950 0    60   ~ 0
CLK
Text Label 9750 6050 0    60   ~ 0
-ucodeRST
Text Label 9750 7100 0    60   ~ 0
CLK
Text Label 9750 7200 0    60   ~ 0
-ucodeRST
Text Label 5400 5300 0    60   ~ 0
pcClk
Text Label 9750 5350 0    60   ~ 0
pcClk
Text HLabel 11600 5450 2    60   Output ~ 0
uPcClk
Text Label 9750 7450 0    60   ~ 0
end
Text HLabel 11600 7450 2    60   Output ~ 0
uEnd
Text Label 9750 8250 0    60   ~ 0
CLK
Text Label 9750 8350 0    60   ~ 0
-ucodeRST
Text Notes 850  3900 0    60   ~ 0
condition code signals
Text Notes 3150 4900 0    60   ~ 0
ROMs
Text Notes 8300 4900 0    60   ~ 0
control signal registers
Text Label 5400 7800 0    60   ~ 0
-endUncond
Text Label 5550 4400 0    60   ~ 0
-endUncond
Text Label 2850 5600 0    60   ~ 0
rwMem
Text Label 6450 6300 0    60   ~ 0
rwMem
Text HLabel 13050 2850 2    60   Output ~ 0
-uRwMem
Text Label 2850 5700 0    60   ~ 0
memDir
Text Label 6450 6500 0    60   ~ 0
memDir
Text HLabel 8800 6500 2    60   Output ~ 0
uMemDir
Text Label 5400 7900 0    60   ~ 0
latchAddr
Text Label 9750 7650 0    60   ~ 0
latchAddr
Text HLabel 11600 7750 2    60   Output ~ 0
-uLatchAddr
$Comp
L 74LS00 U801
U 2 1 594ED25A
P 6950 1900
F 0 "U801" H 6950 1950 50  0000 C CNN
F 1 "74HCT00" H 6950 1800 50  0000 C CNN
F 2 "" H 6950 1900 50  0001 C CNN
F 3 "" H 6950 1900 50  0001 C CNN
	2    6950 1900
	1    0    0    -1  
$EndComp
$Comp
L 74LS00 U801
U 1 1 594ED24F
P 6950 1400
F 0 "U801" H 6950 1450 50  0000 C CNN
F 1 "74HCT00" H 6950 1300 50  0000 C CNN
F 2 "" H 6950 1400 50  0001 C CNN
F 3 "" H 6950 1400 50  0001 C CNN
	1    6950 1400
	1    0    0    -1  
$EndComp
Text Label 10800 1050 0    60   ~ 0
uMemDir
Text Label 10800 1250 0    60   ~ 0
uExtRW
Text Label 12700 1150 0    60   ~ 0
-uExtW
Text Label 10800 1750 0    60   ~ 0
uExtRW
Text Notes 11250 850  0    60   ~ 0
external memory r/w signals
Text Label 8350 6500 0    60   ~ 0
uMemDir
Text Label 8350 6600 0    60   ~ 0
-uMemDir
Text Label 10800 1550 0    60   ~ 0
-uMemDir
Text HLabel 13050 1150 2    60   Output ~ 0
-uExtW
Text HLabel 13050 2250 2    60   Output ~ 0
-uExtR
$Comp
L 74LS00 U801
U 4 1 596FF174
P 12050 1150
F 0 "U801" H 12050 1200 50  0000 C CNN
F 1 "74HCT00" H 12050 1050 50  0000 C CNN
F 2 "" H 12050 1150 50  0001 C CNN
F 3 "" H 12050 1150 50  0001 C CNN
	4    12050 1150
	1    0    0    -1  
$EndComp
Text Label 5400 8000 0    60   ~ 0
latchCC
Text HLabel 11600 7950 2    60   Output ~ 0
-uLatchCC
Text Label 9750 7850 0    60   ~ 0
latchCC
Text Label 2850 5900 0    60   ~ 0
extRW
Text Label 6450 6900 0    60   ~ 0
extRW
$Comp
L GND #PWR?
U 1 1 597D3636
P 5900 9300
F 0 "#PWR?" H 5900 9050 50  0001 C CNN
F 1 "GND" H 5900 9150 50  0000 C CNN
F 2 "" H 5900 9300 50  0001 C CNN
F 3 "" H 5900 9300 50  0001 C CNN
	1    5900 9300
	1    0    0    -1  
$EndComp
Text Label 8350 7000 0    60   ~ 0
-uExtRW
$Comp
L 74LS08 U816
U 1 1 5985971D
P 12050 2250
F 0 "U816" H 12050 2300 50  0000 C CNN
F 1 "74HC08" H 12050 2200 50  0000 C CNN
F 2 "" H 12050 2250 50  0001 C CNN
F 3 "" H 12050 2250 50  0001 C CNN
	1    12050 2250
	1    0    0    -1  
$EndComp
Text HLabel 10750 2350 0    60   Input ~ 0
-opReadMem
$Comp
L 74LS08 U816
U 2 1 59863B4D
P 12050 2850
F 0 "U816" H 12050 2900 50  0000 C CNN
F 1 "74HC08" H 12050 2800 50  0000 C CNN
F 2 "" H 12050 2850 50  0001 C CNN
F 3 "" H 12050 2850 50  0001 C CNN
	2    12050 2850
	1    0    0    -1  
$EndComp
Text Label 8350 6400 0    60   ~ 0
-uRwMem
Text HLabel 9950 2750 0    60   Input ~ 0
-opfetch
Text Label 10800 2950 0    60   ~ 0
-uRwMem
$Comp
L 74LS08 U816
U 3 1 59866A95
P 1850 2200
F 0 "U816" H 1850 2250 50  0000 C CNN
F 1 "74HC08" H 1850 2150 50  0000 C CNN
F 2 "" H 1850 2200 50  0001 C CNN
F 3 "" H 1850 2200 50  0001 C CNN
	3    1850 2200
	1    0    0    -1  
$EndComp
$Comp
L 74LS08 U816
U 4 1 59866B3C
P 12050 3350
F 0 "U816" H 12050 3400 50  0000 C CNN
F 1 "74HC08" H 12050 3300 50  0000 C CNN
F 2 "" H 12050 3350 50  0001 C CNN
F 3 "" H 12050 3350 50  0001 C CNN
	4    12050 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  700  1300 700 
Wire Wire Line
	900  800  1300 800 
Wire Wire Line
	900  900  1300 900 
Wire Wire Line
	900  1000 1300 1000
Wire Wire Line
	900  1100 1300 1100
Wire Wire Line
	900  1200 1300 1200
Wire Wire Line
	900  1300 1300 1300
Wire Wire Line
	900  1400 1300 1400
Wire Wire Line
	950  1900 3550 1900
Wire Wire Line
	1250 2100 950  2100
Wire Wire Line
	1250 2300 950  2300
Wire Wire Line
	2650 3100 3300 3100
Wire Wire Line
	3300 3100 3800 3100
Wire Wire Line
	3550 1650 950  1650
Wire Wire Line
	3550 2000 3300 2000
Wire Wire Line
	3300 2000 3300 3100
Connection ~ 3300 3100
Wire Wire Line
	3550 1800 3000 1800
Wire Wire Line
	3000 1550 3000 1800
Wire Wire Line
	3000 1800 3000 2250
Wire Wire Line
	3550 1550 3000 1550
Connection ~ 3000 1800
Wire Wire Line
	4650 2150 5050 2150
Wire Wire Line
	4650 2250 5050 2250
Wire Wire Line
	4650 2350 5050 2350
Wire Wire Line
	4650 2450 5050 2450
Wire Wire Line
	4650 2550 5050 2550
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
	750  6700 750  6900
Wire Wire Line
	750  6900 750  7000
Wire Wire Line
	750  7000 750  7050
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
	3300 6700 3300 6900
Wire Wire Line
	3300 6900 3300 7000
Wire Wire Line
	3300 7000 3300 7050
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
	750  8800 750  9000
Wire Wire Line
	750  9000 750  9100
Wire Wire Line
	750  9100 750  9150
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
	3300 8800 3300 9000
Wire Wire Line
	3300 9000 3300 9100
Wire Wire Line
	3300 9100 3300 9150
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
	10200 6900 9700 6900
Wire Wire Line
	10200 6700 9700 6700
Wire Wire Line
	10200 5550 9700 5550
Wire Wire Line
	10200 5750 9700 5750
Wire Wire Line
	10200 6300 9700 6300
Wire Wire Line
	10200 6500 9700 6500
Wire Wire Line
	10200 5150 9700 5150
Wire Wire Line
	10200 5350 9700 5350
Wire Wire Line
	10200 7450 9700 7450
Wire Wire Line
	10200 7650 9700 7650
Wire Wire Line
	10200 7850 9700 7850
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
	8300 6400 8800 6400
Wire Wire Line
	8300 8700 8300 8700
Wire Wire Line
	8300 8900 8300 8900
Wire Wire Line
	8300 6600 8800 6600
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
	5350 5900 5800 5900
Wire Wire Line
	5350 5800 5800 5800
Wire Wire Line
	5350 5400 5800 5400
Wire Wire Line
	5350 5500 5800 5500
Wire Wire Line
	5350 5600 5800 5600
Wire Wire Line
	5350 5700 5800 5700
Wire Wire Line
	5350 5200 5800 5200
Wire Wire Line
	5350 5300 5800 5300
Wire Wire Line
	1200 4100 1850 4100
Wire Wire Line
	1200 4200 1850 4200
Wire Wire Line
	1200 4300 1850 4300
Wire Wire Line
	1200 4400 1850 4400
Wire Wire Line
	6350 2550 5500 2550
Wire Wire Line
	6350 2400 5500 2400
Wire Wire Line
	6350 2000 5500 2000
Wire Wire Line
	6350 1800 5500 1800
Wire Wire Line
	6350 1500 5500 1500
Wire Wire Line
	6350 1300 5500 1300
Wire Wire Line
	6350 3050 5500 3050
Wire Wire Line
	6350 3200 5500 3200
Wire Wire Line
	6350 3350 5500 3350
Wire Wire Line
	6350 3850 5500 3850
Wire Wire Line
	6350 4000 5500 4000
Wire Wire Line
	6350 4150 5500 4150
Wire Wire Line
	7550 1400 8750 1400
Wire Wire Line
	8500 1300 8750 1300
Wire Wire Line
	8500 1050 8500 1200
Wire Wire Line
	8500 1200 8500 1300
Wire Wire Line
	8750 1200 8500 1200
Connection ~ 8500 1200
Wire Wire Line
	8750 1500 8000 1500
Wire Wire Line
	8000 1500 8000 1900
Wire Wire Line
	8000 1900 7550 1900
Wire Wire Line
	8750 1600 8100 1600
Wire Wire Line
	8100 1600 8100 2400
Wire Wire Line
	8100 2400 7550 2400
Wire Wire Line
	8750 1700 8200 1700
Wire Wire Line
	8200 1700 8200 3200
Wire Wire Line
	8200 3200 7550 3200
Wire Wire Line
	8750 1800 8300 1800
Wire Wire Line
	8300 1800 8300 4000
Wire Wire Line
	8300 4000 7550 4000
Wire Wire Line
	8750 1900 8400 1900
Wire Wire Line
	8400 1900 8400 4400
Wire Wire Line
	8400 4400 5500 4400
Wire Wire Line
	9950 1550 10450 1550
Wire Wire Line
	2800 5800 3300 5800
Wire Wire Line
	6900 6700 6400 6700
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
	9700 5950 10200 5950
Wire Wire Line
	9700 6050 10200 6050
Wire Wire Line
	9700 7100 10200 7100
Wire Wire Line
	9700 7200 10200 7200
Wire Wire Line
	9700 8250 10200 8250
Wire Wire Line
	9700 8350 10200 8350
Wire Wire Line
	2800 5600 3300 5600
Wire Wire Line
	6900 6300 6400 6300
Wire Wire Line
	2800 5700 3300 5700
Wire Wire Line
	6900 6500 6400 6500
Wire Wire Line
	11450 1050 10750 1050
Wire Wire Line
	11450 1250 10750 1250
Wire Wire Line
	12650 1150 13050 1150
Wire Wire Line
	11450 1750 10750 1750
Wire Wire Line
	12650 1650 13050 1650
Wire Wire Line
	8300 6500 8800 6500
Wire Wire Line
	11450 1550 10750 1550
Wire Wire Line
	2800 5900 3300 5900
Wire Wire Line
	6900 6900 6400 6900
Wire Wire Line
	6900 9000 6400 9000
Wire Wire Line
	5900 9200 5900 9300
Wire Wire Line
	6900 9200 5900 9200
Wire Wire Line
	10200 8050 9300 8050
Wire Wire Line
	8300 7000 8800 7000
Wire Wire Line
	2650 2200 2650 3100
Wire Wire Line
	13050 1650 13050 1950
Wire Wire Line
	13050 1950 11300 1950
Wire Wire Line
	11300 1950 11300 2150
Wire Wire Line
	11300 2150 11450 2150
Wire Wire Line
	11450 2350 10750 2350
Wire Wire Line
	12650 2250 13050 2250
Wire Wire Line
	9950 2750 10400 2750
Wire Wire Line
	10400 2750 11450 2750
Wire Wire Line
	11450 2950 10750 2950
Wire Wire Line
	12650 2850 13050 2850
Text Notes 11200 4000 0    60   ~ 0
Note that uMemDir is guaranteed\nto be correct when -opfetch is asserted,\nbecause the ucode unit is under reset\nand thus uMemdir is 0 (read).
Wire Wire Line
	2650 2200 2450 2200
$Comp
L 74LS10 U814
U 1 1 5987D34B
P 6950 2400
F 0 "U814" H 6950 2450 50  0000 C CNN
F 1 "74HCT10" H 6950 2350 50  0000 C CNN
F 2 "" H 6950 2400 50  0001 C CNN
F 3 "" H 6950 2400 50  0001 C CNN
	1    6950 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2250 5300 2250
Wire Wire Line
	5300 2250 5300 2150
$Comp
L VCC #PWR?
U 1 1 5987D7C9
P 5300 2150
F 0 "#PWR?" H 5300 2000 50  0001 C CNN
F 1 "VCC" H 5300 2300 50  0000 C CNN
F 2 "" H 5300 2150 50  0001 C CNN
F 3 "" H 5300 2150 50  0001 C CNN
	1    5300 2150
	1    0    0    -1  
$EndComp
$Comp
L 74LS10 U814
U 2 1 5987DB5E
P 6950 3200
F 0 "U814" H 6950 3250 50  0000 C CNN
F 1 "74HCT10" H 6950 3150 50  0000 C CNN
F 2 "" H 6950 3200 50  0001 C CNN
F 3 "" H 6950 3200 50  0001 C CNN
	2    6950 3200
	1    0    0    -1  
$EndComp
$Comp
L 74LS10 U814
U 3 1 5987DC95
P 6950 4000
F 0 "U814" H 6950 4050 50  0000 C CNN
F 1 "74HCT10" H 6950 3950 50  0000 C CNN
F 2 "" H 6950 4000 50  0001 C CNN
F 3 "" H 6950 4000 50  0001 C CNN
	3    6950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	11450 3250 10400 3250
Wire Wire Line
	10400 3250 10400 2750
Connection ~ 10400 2750
Wire Wire Line
	11450 3450 10750 3450
Wire Wire Line
	12650 3350 13050 3350
Wire Wire Line
	8300 6800 8800 6800
Text Label 8350 6800 0    60   ~ 0
-uDriveAddr
Text Label 10800 3450 0    60   ~ 0
-uDriveAddr
Wire Wire Line
	2800 7900 3300 7900
Text Label 2850 7900 0    60   ~ 0
latchALU
Wire Wire Line
	9300 8050 9300 8300
$Comp
L GND #PWR?
U 1 1 597D378A
P 9300 8300
F 0 "#PWR?" H 9300 8050 50  0001 C CNN
F 1 "GND" H 9300 8150 50  0000 C CNN
F 2 "" H 9300 8300 50  0001 C CNN
F 3 "" H 9300 8300 50  0001 C CNN
	1    9300 8300
	1    0    0    -1  
$EndComp
Text Label 6450 9000 0    60   ~ 0
latchALU
Text HLabel 8300 9100 2    60   Output ~ 0
-uLatchALU
$EndSCHEMATC
