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
$Descr A3 11693 16535 portrait
encoding utf-8
Sheet 1 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5850 5700 1200 1800
U 59284480
F0 "gpreg" 60
F1 "gpreg.sch" 60
F2 "ALU0" I L 5850 5800 60 
F3 "ALU1" I L 5850 5900 60 
F4 "ALU2" I L 5850 6000 60 
F5 "ALU3" I L 5850 6100 60 
F6 "ALU4" I L 5850 6200 60 
F7 "ALU5" I L 5850 6300 60 
F8 "ALU6" I L 5850 6400 60 
F9 "ALU7" I L 5850 6500 60 
F10 "WA0" I L 5850 6650 60 
F11 "WA1" I L 5850 6750 60 
F12 "RA0" I L 5850 6900 60 
F13 "RA1" I L 5850 7000 60 
F14 "-wrLo" I L 5850 7150 60 
F15 "-read" I L 5850 7400 60 
F16 "-wrHi" I L 5850 7250 60 
F17 "LEFT0" O R 7050 5800 60 
F18 "LEFT1" O R 7050 5900 60 
F19 "LEFT2" O R 7050 6000 60 
F20 "LEFT3" O R 7050 6100 60 
F21 "LEFT4" O R 7050 6200 60 
F22 "LEFT5" O R 7050 6300 60 
F23 "LEFT6" O R 7050 6400 60 
F24 "LEFT7" O R 7050 6500 60 
F25 "RIGHT0" O R 7050 6650 60 
F26 "RIGHT1" O R 7050 6750 60 
F27 "RIGHT2" O R 7050 6850 60 
F28 "RIGHT3" O R 7050 6950 60 
F29 "RIGHT4" O R 7050 7050 60 
F30 "RIGHT5" O R 7050 7150 60 
F31 "RIGHT6" O R 7050 7250 60 
F32 "RIGHT7" O R 7050 7350 60 
$EndSheet
$Sheet
S 5850 1700 1100 1500
U 592848D0
F0 "opfetch" 60
F1 "opfetch.sch" 60
F2 "-RST" I L 5850 1800 60 
F3 "CLK" I L 5850 2100 60 
F4 "-CLK" I L 5850 2200 60 
F5 "-DIS" I L 5850 1900 60 
F6 "ALU0" I L 5850 2400 60 
F7 "ALU1" I L 5850 2500 60 
F8 "ALU2" I L 5850 2600 60 
F9 "ALU3" I L 5850 2700 60 
F10 "ALU4" I L 5850 2800 60 
F11 "ALU5" I L 5850 2900 60 
F12 "ALU6" I L 5850 3000 60 
F13 "ALU7" I L 5850 3100 60 
F14 "-opReadMem" O R 6950 1800 60 
F15 "OPC0" O R 6950 2400 60 
F16 "OPC1" O R 6950 2500 60 
F17 "OPC2" O R 6950 2600 60 
F18 "OPC3" O R 6950 2700 60 
F19 "OPC4" O R 6950 2800 60 
F20 "OPC5" O R 6950 2900 60 
F21 "OPC6" O R 6950 3000 60 
F22 "OPC7" O R 6950 3100 60 
F23 "opfetchEnd" O R 6950 1900 60 
F24 "-opfetchEnd" I R 6950 2000 60 
F25 "opIncPC" O R 6950 2200 60 
$EndSheet
$Sheet
S 1350 2900 950  600 
U 5929A488
F0 "phase" 60
F1 "phase.sch" 60
F2 "ucodeEnd" I L 1350 3300 60 
F3 "-opfetch" O R 2300 3000 60 
F4 "-ucode" O R 2300 3100 60 
F5 "-RST" I L 1350 3000 60 
F6 "CLK" I L 1350 3150 60 
F7 "-opfetchEnd" I L 1350 3400 60 
$EndSheet
$Sheet
S 3500 700  1200 1450
U 592B9ACE
F0 "earlyrst" 60
F1 "earlyrst.sch" 60
F2 "-RST" I L 3500 900 60 
F3 "RST" I L 3500 800 60 
F4 "CLK" I L 3500 1050 60 
F5 "-lateRST" O R 4700 900 60 
F6 "ALU0" O R 4700 1350 60 
F7 "ALU1" O R 4700 1450 60 
F8 "ALU2" O R 4700 1550 60 
F9 "ALU3" O R 4700 1650 60 
F10 "ALU4" O R 4700 1750 60 
F11 "ALU5" O R 4700 1850 60 
F12 "ALU6" O R 4700 1950 60 
F13 "ALU7" O R 4700 2050 60 
F14 "-wrPC" O R 4700 1200 60 
F15 "lateRST" O R 4700 800 60 
$EndSheet
$Sheet
S 5850 3600 1200 1700
U 592B8444
F0 "pc" 60
F1 "pc.sch" 60
F2 "ALU0" I L 5850 3700 60 
F3 "ALU1" I L 5850 3800 60 
F4 "ALU2" I L 5850 3900 60 
F5 "ALU3" I L 5850 4000 60 
F6 "ALU4" I L 5850 4100 60 
F7 "ALU5" I L 5850 4200 60 
F8 "ALU6" I L 5850 4300 60 
F9 "ALU7" I L 5850 4400 60 
F10 "LEFT0" O R 7050 3700 60 
F11 "LEFT1" O R 7050 3800 60 
F12 "LEFT2" O R 7050 3900 60 
F13 "LEFT3" O R 7050 4000 60 
F14 "LEFT4" O R 7050 4100 60 
F15 "LEFT5" O R 7050 4200 60 
F16 "LEFT6" O R 7050 4300 60 
F17 "LEFT7" O R 7050 4400 60 
F18 "RIGHT0" O R 7050 4550 60 
F19 "RIGHT1" O R 7050 4650 60 
F20 "RIGHT2" O R 7050 4750 60 
F21 "RIGHT3" O R 7050 4850 60 
F22 "RIGHT4" O R 7050 4950 60 
F23 "RIGHT5" O R 7050 5050 60 
F24 "RIGHT6" O R 7050 5150 60 
F25 "RIGHT7" O R 7050 5250 60 
F26 "-wrPC" I L 5850 4800 60 
F27 "-uWrPCHi" I L 5850 4900 60 
F28 "-uWrPCLo" I L 5850 5000 60 
F29 "opIncPC" I L 5850 5100 60 
F30 "uPcClk" I L 5850 5200 60 
F31 "-OE1" I L 5850 4600 60 
F32 "-OE2" I L 5850 4700 60 
$EndSheet
$Sheet
S 1350 1500 950  750 
U 59395B62
F0 "clockrst" 60
F1 "clockrst.sch" 60
F2 "CLK1" O R 2300 1850 60 
F3 "CLK2" O R 2300 1950 60 
F4 "-CLK" O R 2300 2050 60 
F5 "RST" O R 2300 1600 60 
F6 "-RST" O R 2300 1700 60 
$EndSheet
Text Notes 2000 2450 2    60   ~ 0
prefix 100
Text Notes 4250 2350 2    60   ~ 0
prefix 200
Text Label 4750 1350 0    60   ~ 0
ALU0
Text Label 4750 1450 0    60   ~ 0
ALU1
Text Label 4750 1550 0    60   ~ 0
ALU2
Text Label 4750 1650 0    60   ~ 0
ALU3
Text Label 4750 1750 0    60   ~ 0
ALU4
Text Label 4750 1850 0    60   ~ 0
ALU5
Text Label 4750 1950 0    60   ~ 0
ALU6
Text Label 4750 2050 0    60   ~ 0
ALU7
Entry Wire Line
	5000 1350 5100 1450
Entry Wire Line
	5000 1450 5100 1550
Entry Wire Line
	5000 1550 5100 1650
Entry Wire Line
	5000 1650 5100 1750
Entry Wire Line
	5000 1750 5100 1850
Entry Wire Line
	5000 1850 5100 1950
Entry Wire Line
	5000 1950 5100 2050
Entry Wire Line
	5000 2050 5100 2150
Text Label 5550 2400 0    60   ~ 0
ALU0
Text Label 5550 2500 0    60   ~ 0
ALU1
Text Label 5550 2600 0    60   ~ 0
ALU2
Text Label 5550 2700 0    60   ~ 0
ALU3
Text Label 5550 2800 0    60   ~ 0
ALU4
Text Label 5550 2900 0    60   ~ 0
ALU5
Text Label 5550 3000 0    60   ~ 0
ALU6
Text Label 5550 3100 0    60   ~ 0
ALU7
Entry Wire Line
	5100 2300 5200 2400
Entry Wire Line
	5100 2400 5200 2500
Entry Wire Line
	5100 2500 5200 2600
Entry Wire Line
	5100 2600 5200 2700
Entry Wire Line
	5100 2700 5200 2800
Entry Wire Line
	5100 2800 5200 2900
Entry Wire Line
	5100 2900 5200 3000
Entry Wire Line
	5100 3000 5200 3100
Text Notes 1550 3700 0    60   ~ 0
prefix 300
Text Notes 6150 3400 0    60   ~ 0
prefix 400
Text Notes 8750 4500 0    60   ~ 0
prefix 800
Text Notes 6150 5500 0    60   ~ 0
prefix 600
Text Label 5550 3700 0    60   ~ 0
ALU0
Text Label 5550 3800 0    60   ~ 0
ALU1
Text Label 5550 3900 0    60   ~ 0
ALU2
Text Label 5550 4000 0    60   ~ 0
ALU3
Text Label 5550 4100 0    60   ~ 0
ALU4
Text Label 5550 4200 0    60   ~ 0
ALU5
Text Label 5550 4300 0    60   ~ 0
ALU6
Text Label 5550 4400 0    60   ~ 0
ALU7
Entry Wire Line
	5100 3600 5200 3700
Entry Wire Line
	5100 3700 5200 3800
Entry Wire Line
	5100 3800 5200 3900
Entry Wire Line
	5100 3900 5200 4000
Entry Wire Line
	5100 4000 5200 4100
Entry Wire Line
	5100 4100 5200 4200
Entry Wire Line
	5100 4200 5200 4300
Entry Wire Line
	5100 4300 5200 4400
Text Label 4800 1200 0    60   ~ 0
-wrPC
Text Label 5300 4800 0    60   ~ 0
-wrPC
Text Label 7000 2200 0    60   ~ 0
opIncPC
Text Label 5300 5100 0    60   ~ 0
opIncPC
Text Label 5300 4900 0    60   ~ 0
-uWrPCHi
Text Label 5300 5000 0    60   ~ 0
-uWrPCLo
Text Label 5300 5200 0    60   ~ 0
uPcClk
Text Label 9750 3600 0    60   ~ 0
uPcClk
Text Label 9750 4100 0    60   ~ 0
uEnd
Text Label 750  3300 0    60   ~ 0
uEnd
Text Notes 7150 15050 0    60   ~ 0
8 bit HCMOS CPU
$Sheet
S 8300 11800 1300 2600
U 5947DA38
F0 "alu" 60
F1 "alu.sch" 60
F2 "LEFT0" I L 8300 12050 60 
F3 "LEFT1" I L 8300 12150 60 
F4 "LEFT2" I L 8300 12250 60 
F5 "LEFT3" I L 8300 12350 60 
F6 "LEFT4" I L 8300 12450 60 
F7 "LEFT5" I L 8300 12550 60 
F8 "LEFT6" I L 8300 12650 60 
F9 "LEFT7" I L 8300 12750 60 
F10 "RIGHT0" I L 8300 12900 60 
F11 "RIGHT1" I L 8300 13000 60 
F12 "RIGHT2" I L 8300 13100 60 
F13 "RIGHT3" I L 8300 13200 60 
F14 "RIGHT4" I L 8300 13300 60 
F15 "RIGHT5" I L 8300 13400 60 
F16 "RIGHT6" I L 8300 13500 60 
F17 "RIGHT7" I L 8300 13600 60 
F18 "FUNC0" I L 8300 14000 60 
F19 "FUNC1" I L 8300 14100 60 
F20 "FUNC2" I L 8300 14200 60 
F21 "FUNC3" I L 8300 14300 60 
F22 "MODE" I L 8300 13750 60 
F23 "-CIN" I L 8300 13850 60 
F24 "-rdALU" I L 8300 11900 60 
F25 "ALU0" O R 9600 12350 60 
F26 "ALU1" O R 9600 12450 60 
F27 "ALU2" O R 9600 12550 60 
F28 "ALU3" O R 9600 12650 60 
F29 "ALU4" O R 9600 12750 60 
F30 "ALU5" O R 9600 12850 60 
F31 "ALU6" O R 9600 12950 60 
F32 "ALU7" O R 9600 13050 60 
F33 "EQ" O R 9600 11900 60 
F34 "-COUT" O R 9600 12100 60 
F35 "-EQ" O R 9600 12000 60 
F36 "COUT" O R 9600 12200 60 
$EndSheet
Text Notes 8700 14600 0    60   ~ 0
prefix 700
Text Label 7100 3700 0    60   ~ 0
LEFT0
Text Label 7100 3800 0    60   ~ 0
LEFT1
Text Label 7100 3900 0    60   ~ 0
LEFT2
Text Label 7100 4000 0    60   ~ 0
LEFT3
Text Label 7100 4100 0    60   ~ 0
LEFT4
Text Label 7100 4200 0    60   ~ 0
LEFT5
Text Label 7100 4300 0    60   ~ 0
LEFT6
Text Label 7100 4400 0    60   ~ 0
LEFT7
Entry Wire Line
	7650 3700 7750 3800
Entry Wire Line
	7650 3800 7750 3900
Entry Wire Line
	7650 3900 7750 4000
Entry Wire Line
	7650 4000 7750 4100
Entry Wire Line
	7650 4100 7750 4200
Entry Wire Line
	7650 4200 7750 4300
Entry Wire Line
	7650 4300 7750 4400
Entry Wire Line
	7650 4400 7750 4500
Text Label 7900 12050 0    60   ~ 0
LEFT0
Text Label 7900 12150 0    60   ~ 0
LEFT1
Text Label 7900 12250 0    60   ~ 0
LEFT2
Text Label 7900 12350 0    60   ~ 0
LEFT3
Text Label 7900 12450 0    60   ~ 0
LEFT4
Text Label 7900 12550 0    60   ~ 0
LEFT5
Text Label 7900 12650 0    60   ~ 0
LEFT6
Text Label 7900 12750 0    60   ~ 0
LEFT7
Entry Wire Line
	7750 11950 7850 12050
Entry Wire Line
	7750 12050 7850 12150
Entry Wire Line
	7750 12150 7850 12250
Entry Wire Line
	7750 12250 7850 12350
Entry Wire Line
	7750 12350 7850 12450
Entry Wire Line
	7750 12450 7850 12550
Entry Wire Line
	7750 12550 7850 12650
Entry Wire Line
	7750 12650 7850 12750
Text Label 7100 4550 0    60   ~ 0
RIGHT0
Text Label 7100 4650 0    60   ~ 0
RIGHT1
Text Label 7100 4750 0    60   ~ 0
RIGHT2
Text Label 7100 4850 0    60   ~ 0
RIGHT3
Text Label 7100 4950 0    60   ~ 0
RIGHT4
Text Label 7100 5050 0    60   ~ 0
RIGHT5
Text Label 7100 5150 0    60   ~ 0
RIGHT6
Text Label 7100 5250 0    60   ~ 0
RIGHT7
Entry Wire Line
	7450 4550 7550 4650
Entry Wire Line
	7450 4650 7550 4750
Entry Wire Line
	7450 4750 7550 4850
Entry Wire Line
	7450 4850 7550 4950
Entry Wire Line
	7450 4950 7550 5050
Entry Wire Line
	7450 5050 7550 5150
Entry Wire Line
	7450 5150 7550 5250
Entry Wire Line
	7450 5250 7550 5350
Text Label 7850 12900 0    60   ~ 0
RIGHT0
Text Label 7850 13000 0    60   ~ 0
RIGHT1
Text Label 7850 13100 0    60   ~ 0
RIGHT2
Text Label 7850 13200 0    60   ~ 0
RIGHT3
Text Label 7850 13300 0    60   ~ 0
RIGHT4
Text Label 7850 13400 0    60   ~ 0
RIGHT5
Text Label 7850 13500 0    60   ~ 0
RIGHT6
Text Label 7850 13600 0    60   ~ 0
RIGHT7
Entry Wire Line
	7550 12800 7650 12900
Entry Wire Line
	7550 12900 7650 13000
Entry Wire Line
	7550 13000 7650 13100
Entry Wire Line
	7550 13100 7650 13200
Entry Wire Line
	7550 13200 7650 13300
Entry Wire Line
	7550 13300 7650 13400
Entry Wire Line
	7550 13400 7650 13500
Entry Wire Line
	7550 13500 7650 13600
Wire Wire Line
	3000 800  3500 800 
Wire Wire Line
	3000 900  3500 900 
Wire Wire Line
	3000 1050 3500 1050
Wire Wire Line
	1350 3150 750  3150
Wire Wire Line
	1350 3000 750  3000
Wire Wire Line
	4700 900  5150 900 
Wire Wire Line
	5400 1800 5850 1800
Wire Wire Line
	2300 3100 2750 3100
Wire Wire Line
	5400 1900 5850 1900
Wire Wire Line
	6950 2000 7450 2000
Wire Wire Line
	5400 2100 5850 2100
Wire Wire Line
	4700 1350 5000 1350
Wire Wire Line
	4700 1450 5000 1450
Wire Wire Line
	4700 1550 5000 1550
Wire Wire Line
	4700 1650 5000 1650
Wire Wire Line
	4700 1750 5000 1750
Wire Wire Line
	4700 1850 5000 1850
Wire Wire Line
	4700 1950 5000 1950
Wire Wire Line
	4700 2050 5000 2050
Wire Bus Line
	5100 1450 5100 14700
Wire Wire Line
	5850 2400 5200 2400
Wire Wire Line
	5850 2500 5200 2500
Wire Wire Line
	5850 2600 5200 2600
Wire Wire Line
	5850 2700 5200 2700
Wire Wire Line
	5850 2800 5200 2800
Wire Wire Line
	5850 2900 5200 2900
Wire Wire Line
	5850 3000 5200 3000
Wire Wire Line
	5850 3100 5200 3100
Wire Wire Line
	5850 3700 5200 3700
Wire Wire Line
	5850 3800 5200 3800
Wire Wire Line
	5850 3900 5200 3900
Wire Wire Line
	5850 4000 5200 4000
Wire Wire Line
	5850 4100 5200 4100
Wire Wire Line
	5850 4200 5200 4200
Wire Wire Line
	5850 4300 5200 4300
Wire Wire Line
	5850 4400 5200 4400
Wire Wire Line
	4700 1200 5100 1200
Wire Wire Line
	5250 4800 5850 4800
Wire Wire Line
	5850 5100 5250 5100
Wire Wire Line
	5850 5200 5250 5200
Wire Wire Line
	6950 2200 7450 2200
Wire Wire Line
	5850 4900 5250 4900
Wire Wire Line
	5850 5000 5250 5000
Wire Wire Line
	2300 3000 2750 3000
Wire Wire Line
	7750 1800 8350 1800
Wire Wire Line
	8350 1700 7750 1700
Wire Wire Line
	8350 2000 7750 2000
Wire Wire Line
	6950 2400 8350 2400
Wire Wire Line
	6950 2500 8350 2500
Wire Wire Line
	6950 2600 8350 2600
Wire Wire Line
	6950 2700 8350 2700
Wire Wire Line
	6950 2800 8350 2800
Wire Wire Line
	6950 2900 8350 2900
Wire Wire Line
	6950 3000 8350 3000
Wire Wire Line
	6950 3100 8350 3100
Wire Wire Line
	9700 3600 10250 3600
Wire Wire Line
	9700 4100 10250 4100
Wire Wire Line
	1350 3300 750  3300
Wire Wire Line
	7050 3700 7650 3700
Wire Wire Line
	7050 3800 7650 3800
Wire Wire Line
	7050 3900 7650 3900
Wire Wire Line
	7050 4000 7650 4000
Wire Wire Line
	7050 4100 7650 4100
Wire Wire Line
	7050 4200 7650 4200
Wire Wire Line
	7050 4300 7650 4300
Wire Wire Line
	7050 4400 7650 4400
Wire Bus Line
	7750 3800 7750 12650
Wire Wire Line
	8300 12050 7850 12050
Wire Wire Line
	8300 12150 7850 12150
Wire Wire Line
	8300 12250 7850 12250
Wire Wire Line
	8300 12350 7850 12350
Wire Wire Line
	8300 12450 7850 12450
Wire Wire Line
	8300 12550 7850 12550
Wire Wire Line
	8300 12650 7850 12650
Wire Wire Line
	8300 12750 7850 12750
Wire Wire Line
	7050 4550 7450 4550
Wire Wire Line
	7050 4650 7450 4650
Wire Wire Line
	7050 4750 7450 4750
Wire Wire Line
	7050 4850 7450 4850
Wire Wire Line
	7050 4950 7450 4950
Wire Wire Line
	7050 5050 7450 5050
Wire Wire Line
	7050 5150 7450 5150
Wire Wire Line
	7050 5250 7450 5250
Wire Bus Line
	7550 4650 7550 13500
Wire Wire Line
	8300 12900 7650 12900
Wire Wire Line
	8300 13000 7650 13000
Wire Wire Line
	8300 13100 7650 13100
Wire Wire Line
	8300 13200 7650 13200
Wire Wire Line
	8300 13300 7650 13300
Wire Wire Line
	8300 13400 7650 13400
Wire Wire Line
	8300 13500 7650 13500
Wire Wire Line
	8300 13600 7650 13600
Wire Bus Line
	5100 14700 10100 14700
Wire Bus Line
	10100 14700 10100 12450
Wire Wire Line
	9600 12350 10000 12350
Wire Wire Line
	9600 12450 10000 12450
Wire Wire Line
	9600 12550 10000 12550
Wire Wire Line
	9600 12650 10000 12650
Wire Wire Line
	9600 12750 10000 12750
Wire Wire Line
	9600 12850 10000 12850
Wire Wire Line
	9600 12950 10000 12950
Wire Wire Line
	9600 13050 10000 13050
Text Label 9650 12350 0    60   ~ 0
ALU0
Text Label 9650 12450 0    60   ~ 0
ALU1
Text Label 9650 12550 0    60   ~ 0
ALU2
Text Label 9650 12650 0    60   ~ 0
ALU3
Text Label 9650 12750 0    60   ~ 0
ALU4
Text Label 9650 12850 0    60   ~ 0
ALU5
Text Label 9650 12950 0    60   ~ 0
ALU6
Text Label 9650 13050 0    60   ~ 0
ALU7
Entry Wire Line
	10000 12350 10100 12450
Entry Wire Line
	10000 12450 10100 12550
Entry Wire Line
	10000 12550 10100 12650
Entry Wire Line
	10000 12650 10100 12750
Entry Wire Line
	10000 12750 10100 12850
Entry Wire Line
	10000 12850 10100 12950
Entry Wire Line
	10000 12950 10100 13050
Entry Wire Line
	10000 13050 10100 13150
$Sheet
S 8350 1600 1350 2700
U 594ECB9B
F0 "ucode2" 60
F1 "ucode2.sch" 60
F2 "OPC0" I L 8350 2400 60 
F3 "OPC1" I L 8350 2500 60 
F4 "OPC2" I L 8350 2600 60 
F5 "OPC3" I L 8350 2700 60 
F6 "OPC4" I L 8350 2800 60 
F7 "OPC5" I L 8350 2900 60 
F8 "OPC6" I L 8350 3000 60 
F9 "OPC7" I L 8350 3100 60 
F10 "CLK" I L 8350 2000 60 
F11 "-RST" I L 8350 1700 60 
F12 "-DIS" I L 8350 1800 60 
F13 "-CLK" I L 8350 2100 60 
F14 "-uRdGP" O R 9700 1700 60 
F15 "uRdGP0" O R 9700 1800 60 
F16 "uRdGP1" O R 9700 1900 60 
F17 "-uRdAR" O R 9700 2000 60 
F18 "-uRdPC" O R 9700 2100 60 
F19 "-uWrGPLo" O R 9700 2300 60 
F20 "-uWrGPHi" O R 9700 2400 60 
F21 "uWrGP0" O R 9700 2500 60 
F22 "uWrGP1" O R 9700 2600 60 
F23 "-uWrARLo" O R 9700 2700 60 
F24 "-uWrARHi" O R 9700 2800 60 
F25 "-uWrPCLo" O R 9700 2900 60 
F26 "-uWrPCHi" O R 9700 3000 60 
F27 "-uAluCarryIn" O R 9700 3300 60 
F28 "uAluMode" O R 9700 3400 60 
F29 "uAluOp0" O R 9700 3700 60 
F30 "uAluOp1" O R 9700 3800 60 
F31 "uAluOp2" O R 9700 3900 60 
F32 "uAluOp3" O R 9700 4000 60 
F33 "-uAluOut" O R 9700 3500 60 
F34 "ccEq" I L 8350 3300 60 
F35 "-ccEq" I L 8350 3400 60 
F36 "ccCarryOut" I L 8350 3500 60 
F37 "-ccCarryOut" I L 8350 3600 60 
F38 "-uDriveAddr" O R 9700 3200 60 
F39 "uPcClk" O R 9700 3600 60 
F40 "uEnd" O R 9700 4100 60 
F41 "-rwMem" O R 9700 2200 60 
F42 "uMemDir" O R 9700 3100 60 
F43 "-uLatchAddr" O R 9700 4200 60 
$EndSheet
Wire Wire Line
	7750 2100 8350 2100
Text Label 7800 2100 0    60   ~ 0
-CLK
Wire Wire Line
	6950 1800 7450 1800
Text Label 7000 1800 0    60   ~ 0
-opReadMem
Wire Wire Line
	2300 1600 2750 1600
Wire Wire Line
	2300 1700 2750 1700
Wire Wire Line
	2300 1850 2750 1850
Wire Wire Line
	2300 2050 2750 2050
Text Label 2500 1600 0    60   ~ 0
RST
Text Label 2500 1700 0    60   ~ 0
-RST
Text Label 2500 2050 0    60   ~ 0
-CLK
Text Label 4750 900  0    60   ~ 0
-lateRST
Text Label 5400 1900 0    60   ~ 0
-ucode
Text Label 2350 3000 0    60   ~ 0
-opfetch
Text Label 2350 3100 0    60   ~ 0
-ucode
Wire Wire Line
	5850 2200 5400 2200
Text Label 5450 2200 0    60   ~ 0
-CLK
Wire Wire Line
	1350 3400 750  3400
Text Label 750  3400 0    60   ~ 0
-opfetchEnd
Text Label 7000 2000 0    60   ~ 0
-opfetchEnd
Text Label 7800 1800 0    60   ~ 0
-opfetch
Text Label 3050 800  0    60   ~ 0
RST
Text Label 3050 900  0    60   ~ 0
-RST
Wire Wire Line
	9700 1700 10250 1700
Wire Wire Line
	9700 1800 10250 1800
Wire Wire Line
	9700 1900 10250 1900
Wire Wire Line
	9700 2000 10250 2000
Wire Wire Line
	9700 2100 10250 2100
Wire Wire Line
	9700 2300 10250 2300
Wire Wire Line
	9700 2400 10250 2400
Wire Wire Line
	9700 2500 10250 2500
Wire Wire Line
	9700 2600 10250 2600
Wire Wire Line
	9700 2700 10250 2700
Wire Wire Line
	9700 2800 10250 2800
Wire Wire Line
	9700 2900 10250 2900
Wire Wire Line
	9700 3000 10250 3000
Wire Wire Line
	9700 3200 10250 3200
Wire Wire Line
	9700 3300 10250 3300
Wire Wire Line
	9700 3400 10250 3400
Wire Wire Line
	9700 3500 10250 3500
Wire Wire Line
	9700 3700 10250 3700
Wire Wire Line
	9700 3800 10250 3800
Wire Wire Line
	9700 3900 10250 3900
Wire Wire Line
	9700 4000 10250 4000
Text Label 9750 1700 0    60   ~ 0
-uRdGP
Text Label 9750 1800 0    60   ~ 0
uRdGP0
Text Label 9750 1900 0    60   ~ 0
uRdGP1
Text Label 9750 2000 0    60   ~ 0
-uRdAR
Text Label 9750 2100 0    60   ~ 0
-uRdPC
Text Label 9750 2300 0    60   ~ 0
-uWrGPLo
Text Label 9750 2400 0    60   ~ 0
-uWrGPHi
Text Label 9750 2500 0    60   ~ 0
uWrGP0
Text Label 9750 2600 0    60   ~ 0
uWrGP1
Text Label 9750 2700 0    60   ~ 0
-uWrARLo
Text Label 9750 2800 0    60   ~ 0
-uWrARHi
Text Label 9750 2900 0    60   ~ 0
-uWrPCLo
Text Label 9750 3000 0    60   ~ 0
-uWrPCHi
Text Label 9750 3200 0    60   ~ 0
-uDriveAddr
Text Label 9750 3300 0    60   ~ 0
-uAluCarryIn
Text Label 9750 3400 0    60   ~ 0
uAluMode
Text Label 9750 3500 0    60   ~ 0
-uAluOut
Text Label 9750 3700 0    60   ~ 0
uAluOp0
Text Label 9750 3800 0    60   ~ 0
uAluOp1
Text Label 9750 3900 0    60   ~ 0
uAluOp2
Text Label 9750 4000 0    60   ~ 0
uAluOp3
Wire Wire Line
	5850 4700 5250 4700
Text Label 5300 4700 0    60   ~ 0
-uRdPC
Wire Wire Line
	5850 4600 5250 4600
Text Label 5250 4600 0    60   ~ 0
-opReadMem
Text Notes 6150 7700 0    60   ~ 0
prefix 500
Wire Wire Line
	5850 5800 5200 5800
Wire Wire Line
	5850 5900 5200 5900
Wire Wire Line
	5850 6000 5200 6000
Wire Wire Line
	5850 6100 5200 6100
Wire Wire Line
	5850 6200 5200 6200
Wire Wire Line
	5850 6300 5200 6300
Wire Wire Line
	5850 6400 5200 6400
Wire Wire Line
	5850 6500 5200 6500
Text Label 5550 5800 0    60   ~ 0
ALU0
Text Label 5550 5900 0    60   ~ 0
ALU1
Text Label 5550 6000 0    60   ~ 0
ALU2
Text Label 5550 6100 0    60   ~ 0
ALU3
Text Label 5550 6200 0    60   ~ 0
ALU4
Text Label 5550 6300 0    60   ~ 0
ALU5
Text Label 5550 6400 0    60   ~ 0
ALU6
Text Label 5550 6500 0    60   ~ 0
ALU7
Entry Wire Line
	5100 5700 5200 5800
Entry Wire Line
	5100 5800 5200 5900
Entry Wire Line
	5100 5900 5200 6000
Entry Wire Line
	5100 6000 5200 6100
Entry Wire Line
	5100 6100 5200 6200
Entry Wire Line
	5100 6200 5200 6300
Entry Wire Line
	5100 6300 5200 6400
Entry Wire Line
	5100 6400 5200 6500
Wire Wire Line
	7050 5800 7650 5800
Wire Wire Line
	7050 5900 7650 5900
Wire Wire Line
	7050 6000 7650 6000
Wire Wire Line
	7050 6100 7650 6100
Wire Wire Line
	7050 6200 7650 6200
Wire Wire Line
	7050 6300 7650 6300
Wire Wire Line
	7050 6400 7650 6400
Wire Wire Line
	7050 6500 7650 6500
Text Label 7100 5800 0    60   ~ 0
LEFT0
Text Label 7100 5900 0    60   ~ 0
LEFT1
Text Label 7100 6000 0    60   ~ 0
LEFT2
Text Label 7100 6100 0    60   ~ 0
LEFT3
Text Label 7100 6200 0    60   ~ 0
LEFT4
Text Label 7100 6300 0    60   ~ 0
LEFT5
Text Label 7100 6400 0    60   ~ 0
LEFT6
Text Label 7100 6500 0    60   ~ 0
LEFT7
Entry Wire Line
	7650 5800 7750 5900
Entry Wire Line
	7650 5900 7750 6000
Entry Wire Line
	7650 6000 7750 6100
Entry Wire Line
	7650 6100 7750 6200
Entry Wire Line
	7650 6200 7750 6300
Entry Wire Line
	7650 6300 7750 6400
Entry Wire Line
	7650 6400 7750 6500
Entry Wire Line
	7650 6500 7750 6600
Wire Wire Line
	7050 6650 7450 6650
Wire Wire Line
	7050 6750 7450 6750
Wire Wire Line
	7050 6850 7450 6850
Wire Wire Line
	7050 6950 7450 6950
Wire Wire Line
	7050 7050 7450 7050
Wire Wire Line
	7050 7150 7450 7150
Wire Wire Line
	7050 7250 7450 7250
Wire Wire Line
	7050 7350 7450 7350
Text Label 7100 6650 0    60   ~ 0
RIGHT0
Text Label 7100 6750 0    60   ~ 0
RIGHT1
Text Label 7100 6850 0    60   ~ 0
RIGHT2
Text Label 7100 6950 0    60   ~ 0
RIGHT3
Text Label 7100 7050 0    60   ~ 0
RIGHT4
Text Label 7100 7150 0    60   ~ 0
RIGHT5
Text Label 7100 7250 0    60   ~ 0
RIGHT6
Text Label 7100 7350 0    60   ~ 0
RIGHT7
Entry Wire Line
	7450 6650 7550 6750
Entry Wire Line
	7450 6750 7550 6850
Entry Wire Line
	7450 6850 7550 6950
Entry Wire Line
	7450 6950 7550 7050
Entry Wire Line
	7450 7050 7550 7150
Entry Wire Line
	7450 7150 7550 7250
Entry Wire Line
	7450 7250 7550 7350
Entry Wire Line
	7450 7350 7550 7450
Wire Wire Line
	5850 6650 5300 6650
Wire Wire Line
	5850 6750 5300 6750
Wire Wire Line
	5850 6900 5300 6900
Wire Wire Line
	5850 7000 5300 7000
Wire Wire Line
	5850 7150 5300 7150
Wire Wire Line
	5850 7250 5300 7250
Wire Wire Line
	5850 7400 5300 7400
Text Label 5350 6650 0    60   ~ 0
uWrGP0
Text Label 5350 6750 0    60   ~ 0
uWrGP1
Text Label 5350 6900 0    60   ~ 0
uRdGP0
Text Label 5350 7000 0    60   ~ 0
uRdGP1
Text Label 5350 7150 0    60   ~ 0
-uWrGPLo
Text Label 5350 7250 0    60   ~ 0
-uWrGPHi
Text Label 5350 7400 0    60   ~ 0
-uRdGP
$Sheet
S 5850 7950 1200 4250
U 595E8C5F
F0 "bus_ar" 60
F1 "bus_ar.sch" 60
F2 "ALU0" B L 5850 8050 60 
F3 "ALU1" B L 5850 8150 60 
F4 "ALU2" B L 5850 8250 60 
F5 "ALU3" B L 5850 8350 60 
F6 "ALU4" B L 5850 8450 60 
F7 "ALU5" B L 5850 8550 60 
F8 "ALU6" B L 5850 8650 60 
F9 "ALU7" B L 5850 8750 60 
F10 "LEFT0" B R 7050 8050 60 
F11 "LEFT1" B R 7050 8150 60 
F12 "LEFT2" B R 7050 8250 60 
F13 "LEFT3" B R 7050 8350 60 
F14 "LEFT4" B R 7050 8450 60 
F15 "LEFT5" B R 7050 8550 60 
F16 "LEFT6" B R 7050 8650 60 
F17 "LEFT7" B R 7050 8750 60 
F18 "RIGHT0" B R 7050 8900 60 
F19 "RIGHT1" B R 7050 9000 60 
F20 "RIGHT2" B R 7050 9100 60 
F21 "RIGHT3" B R 7050 9200 60 
F22 "RIGHT4" B R 7050 9300 60 
F23 "RIGHT5" B R 7050 9400 60 
F24 "RIGHT6" B R 7050 9500 60 
F25 "RIGHT7" B R 7050 9600 60 
F26 "-driveAddr" I L 5850 8900 60 
F27 "-rwMem" I L 5850 9100 60 
F28 "memDir" I L 5850 9200 60 
F29 "-rdAR" I L 5850 9300 60 
F30 "-wrARLo" I L 5850 9400 60 
F31 "-wrARHi" I L 5850 9500 60 
F32 "A0" O R 7050 9750 60 
F33 "A1" O R 7050 9850 60 
F34 "A2" O R 7050 9950 60 
F35 "A3" O R 7050 10050 60 
F36 "A4" O R 7050 10150 60 
F37 "A5" O R 7050 10250 60 
F38 "A6" O R 7050 10350 60 
F39 "A7" O R 7050 10450 60 
F40 "A8" O R 7050 10550 60 
F41 "A9" O R 7050 10650 60 
F42 "A10" O R 7050 10750 60 
F43 "A11" O R 7050 10850 60 
F44 "A12" O R 7050 10950 60 
F45 "A13" O R 7050 11050 60 
F46 "A14" O R 7050 11150 60 
F47 "A15" O R 7050 11250 60 
F48 "D0" B R 7050 11400 60 
F49 "D1" B R 7050 11500 60 
F50 "D2" B R 7050 11600 60 
F51 "D3" B R 7050 11700 60 
F52 "D4" B R 7050 11800 60 
F53 "D5" B R 7050 11900 60 
F54 "D6" B R 7050 12000 60 
F55 "D7" B R 7050 12100 60 
F56 "-latchAddr" I L 5850 9000 60 
$EndSheet
Wire Wire Line
	9700 2200 10250 2200
Text Label 9750 2200 0    60   ~ 0
-uRwMem
Wire Wire Line
	9700 3100 10250 3100
Text Label 9750 3100 0    60   ~ 0
uMemDir
Wire Wire Line
	5850 8050 5200 8050
Wire Wire Line
	5850 8150 5200 8150
Wire Wire Line
	5850 8250 5200 8250
Wire Wire Line
	5850 8350 5200 8350
Wire Wire Line
	5850 8450 5200 8450
Wire Wire Line
	5850 8550 5200 8550
Wire Wire Line
	5850 8650 5200 8650
Wire Wire Line
	5850 8750 5200 8750
Entry Wire Line
	5100 7950 5200 8050
Entry Wire Line
	5100 8050 5200 8150
Entry Wire Line
	5100 8150 5200 8250
Entry Wire Line
	5100 8250 5200 8350
Entry Wire Line
	5100 8350 5200 8450
Entry Wire Line
	5100 8450 5200 8550
Entry Wire Line
	5100 8550 5200 8650
Entry Wire Line
	5100 8650 5200 8750
Wire Wire Line
	7050 8050 7650 8050
Wire Wire Line
	7050 8150 7650 8150
Wire Wire Line
	7050 8250 7650 8250
Wire Wire Line
	7050 8350 7650 8350
Wire Wire Line
	7050 8450 7650 8450
Wire Wire Line
	7050 8550 7650 8550
Wire Wire Line
	7050 8650 7650 8650
Wire Wire Line
	7050 8750 7650 8750
Text Label 5550 8050 0    60   ~ 0
ALU0
Text Label 5550 8150 0    60   ~ 0
ALU1
Text Label 5550 8250 0    60   ~ 0
ALU2
Text Label 5550 8350 0    60   ~ 0
ALU3
Text Label 5550 8450 0    60   ~ 0
ALU4
Text Label 5550 8550 0    60   ~ 0
ALU5
Text Label 5550 8650 0    60   ~ 0
ALU6
Text Label 5550 8750 0    60   ~ 0
ALU7
Text Label 7100 8050 0    60   ~ 0
LEFT0
Text Label 7100 8150 0    60   ~ 0
LEFT1
Text Label 7100 8250 0    60   ~ 0
LEFT2
Text Label 7100 8350 0    60   ~ 0
LEFT3
Text Label 7100 8450 0    60   ~ 0
LEFT4
Text Label 7100 8550 0    60   ~ 0
LEFT5
Text Label 7100 8650 0    60   ~ 0
LEFT6
Text Label 7100 8750 0    60   ~ 0
LEFT7
Entry Wire Line
	7650 8050 7750 8150
Entry Wire Line
	7650 8150 7750 8250
Entry Wire Line
	7650 8250 7750 8350
Entry Wire Line
	7650 8350 7750 8450
Entry Wire Line
	7650 8450 7750 8550
Entry Wire Line
	7650 8550 7750 8650
Entry Wire Line
	7650 8650 7750 8750
Entry Wire Line
	7650 8750 7750 8850
Wire Wire Line
	7050 8900 7450 8900
Wire Wire Line
	7050 9000 7450 9000
Wire Wire Line
	7050 9100 7450 9100
Wire Wire Line
	7050 9200 7450 9200
Wire Wire Line
	7050 9300 7450 9300
Wire Wire Line
	7050 9400 7450 9400
Wire Wire Line
	7050 9500 7450 9500
Wire Wire Line
	7050 9600 7450 9600
Text Label 7100 8900 0    60   ~ 0
RIGHT0
Text Label 7100 9000 0    60   ~ 0
RIGHT1
Text Label 7100 9100 0    60   ~ 0
RIGHT2
Text Label 7100 9200 0    60   ~ 0
RIGHT3
Text Label 7100 9300 0    60   ~ 0
RIGHT4
Text Label 7100 9400 0    60   ~ 0
RIGHT5
Text Label 7100 9500 0    60   ~ 0
RIGHT6
Text Label 7100 9600 0    60   ~ 0
RIGHT7
Entry Wire Line
	7450 8900 7550 9000
Entry Wire Line
	7450 9000 7550 9100
Entry Wire Line
	7450 9100 7550 9200
Entry Wire Line
	7450 9200 7550 9300
Entry Wire Line
	7450 9300 7550 9400
Entry Wire Line
	7450 9400 7550 9500
Entry Wire Line
	7450 9500 7550 9600
Entry Wire Line
	7450 9600 7550 9700
Wire Wire Line
	5850 8900 5300 8900
Wire Wire Line
	5850 9100 5300 9100
Wire Wire Line
	5850 9200 5300 9200
Wire Wire Line
	5850 9300 5300 9300
Wire Wire Line
	5850 9400 5300 9400
Wire Wire Line
	5850 9500 5300 9500
Text Label 5300 8900 0    60   ~ 0
-uDriveAddr
Text Label 5300 9100 0    60   ~ 0
-uRwMem
Text Label 5300 9200 0    60   ~ 0
uMemDir
Text Label 5300 9300 0    60   ~ 0
-uRdAR
Text Label 5300 9400 0    60   ~ 0
-uWrARLo
Text Label 5300 9500 0    60   ~ 0
-uWrARHi
Wire Wire Line
	7050 9750 7350 9750
Wire Wire Line
	7050 9850 7350 9850
Wire Wire Line
	7050 9950 7350 9950
Wire Wire Line
	7050 10050 7350 10050
Wire Wire Line
	7050 10150 7350 10150
Wire Wire Line
	7050 10250 7350 10250
Wire Wire Line
	7050 10350 7350 10350
Wire Wire Line
	7050 10450 7350 10450
Wire Wire Line
	7050 10550 7350 10550
Wire Wire Line
	7050 10650 7350 10650
Wire Wire Line
	7050 10750 7350 10750
Wire Wire Line
	7050 10850 7350 10850
Wire Wire Line
	7050 10950 7350 10950
Wire Wire Line
	7050 11050 7350 11050
Wire Wire Line
	7050 11150 7350 11150
Wire Wire Line
	7050 11250 7350 11250
Text Label 7100 9750 0    60   ~ 0
A0
Text Label 7100 9850 0    60   ~ 0
A1
Text Label 7100 9950 0    60   ~ 0
A2
Text Label 7100 10050 0    60   ~ 0
A3
Text Label 7100 10150 0    60   ~ 0
A4
Text Label 7100 10250 0    60   ~ 0
A5
Text Label 7100 10350 0    60   ~ 0
A6
Text Label 7100 10450 0    60   ~ 0
A7
Text Label 7100 10550 0    60   ~ 0
A8
Text Label 7100 10650 0    60   ~ 0
A9
Text Label 7100 10750 0    60   ~ 0
A10
Text Label 7100 10850 0    60   ~ 0
A11
Text Label 7100 10950 0    60   ~ 0
A12
Text Label 7100 11050 0    60   ~ 0
A13
Text Label 7100 11150 0    60   ~ 0
A14
Text Label 7100 11250 0    60   ~ 0
A15
Wire Wire Line
	7050 11400 7350 11400
Wire Wire Line
	7050 11500 7350 11500
Wire Wire Line
	7050 11600 7350 11600
Wire Wire Line
	7050 11700 7350 11700
Wire Wire Line
	7050 11800 7350 11800
Wire Wire Line
	7050 11900 7350 11900
Wire Wire Line
	7050 12000 7350 12000
Wire Wire Line
	7050 12100 7350 12100
Text Label 7100 11400 0    60   ~ 0
D0
Text Label 7100 11500 0    60   ~ 0
D1
Text Label 7100 11600 0    60   ~ 0
D2
Text Label 7100 11700 0    60   ~ 0
D3
Text Label 7100 11800 0    60   ~ 0
D4
Text Label 7100 11900 0    60   ~ 0
D5
Text Label 7100 12000 0    60   ~ 0
D6
Text Label 7100 12100 0    60   ~ 0
D7
Wire Wire Line
	9600 11900 10000 11900
Wire Wire Line
	9600 12000 10000 12000
Wire Wire Line
	9600 12100 10000 12100
Wire Wire Line
	9600 12200 10000 12200
Text Label 9650 11900 0    60   ~ 0
EQ
Text Label 9650 12000 0    60   ~ 0
-EQ
Text Label 9650 12100 0    60   ~ 0
-COUT
Text Label 9650 12200 0    60   ~ 0
COUT
Wire Wire Line
	8350 3300 7900 3300
Wire Wire Line
	8350 3400 7900 3400
Wire Wire Line
	8350 3500 7900 3500
Wire Wire Line
	8350 3600 7900 3600
Text Label 7950 3300 0    60   ~ 0
EQ
Text Label 7950 3400 0    60   ~ 0
-EQ
Text Label 7950 3500 0    60   ~ 0
COUT
Text Label 7950 3600 0    60   ~ 0
-COUT
Text Notes 6200 12400 0    60   ~ 0
prefix 900
Wire Wire Line
	8300 14000 7650 14000
Wire Wire Line
	8300 14100 7650 14100
Wire Wire Line
	8300 14200 7650 14200
Wire Wire Line
	8300 14300 7650 14300
Text Label 7700 14000 0    60   ~ 0
uAluOp0
Text Label 7700 14100 0    60   ~ 0
uAluOp1
Text Label 7700 14200 0    60   ~ 0
uAluOp2
Text Label 7700 14300 0    60   ~ 0
uAluOp3
Wire Wire Line
	8300 13750 7650 13750
Wire Wire Line
	8300 13850 7650 13850
Text Label 7700 13750 0    60   ~ 0
uAluMode
Text Label 7650 13850 0    60   ~ 0
-uAluCarryIn
Wire Wire Line
	8300 11900 7850 11900
Text Label 7850 11900 0    60   ~ 0
-uAluOut
Wire Wire Line
	2300 1950 2750 1950
Text Label 2500 1850 0    60   ~ 0
CLK1
Text Label 2500 1950 0    60   ~ 0
CLK2
Text Label 800  3150 0    60   ~ 0
CLK1
Text Label 3050 1050 0    60   ~ 0
CLK1
Text Label 7800 2000 0    60   ~ 0
CLK2
Text Label 5450 2100 0    60   ~ 0
CLK1
Text Label 800  3000 0    60   ~ 0
-lateRST
Text Label 5400 1800 0    60   ~ 0
-lateRST
Text Label 7800 1700 0    60   ~ 0
-lateRST
Wire Wire Line
	5850 9000 5300 9000
Text Label 5300 9000 0    60   ~ 0
-uLatchAddr
Wire Wire Line
	9700 4200 10250 4200
Text Label 9750 4200 0    60   ~ 0
-uLatchAddr
$EndSCHEMATC
