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
LIBS:cpu2-cache
EELAYER 25 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 9
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
S 12500 1100 1050 600 
U 59284480
F0 "gpreg" 60
F1 "gpreg.sch" 60
$EndSheet
$Sheet
S 5100 2150 1100 1500
U 592848D0
F0 "opfetch" 60
F1 "opfetch.sch" 60
F2 "-RST" I L 5100 2250 60 
F3 "CLK" I L 5100 2550 60 
F4 "-CLK" I L 5100 2650 60 
F5 "-DIS" I L 5100 2350 60 
F6 "ALU0" I L 5100 2850 60 
F7 "ALU1" I L 5100 2950 60 
F8 "ALU2" I L 5100 3050 60 
F9 "ALU3" I L 5100 3150 60 
F10 "ALU4" I L 5100 3250 60 
F11 "ALU5" I L 5100 3350 60 
F12 "ALU6" I L 5100 3450 60 
F13 "ALU7" I L 5100 3550 60 
F14 "-opReadMem" O R 6200 2250 60 
F15 "OPC0" O R 6200 2850 60 
F16 "OPC1" O R 6200 2950 60 
F17 "OPC2" O R 6200 3050 60 
F18 "OPC3" O R 6200 3150 60 
F19 "OPC4" O R 6200 3250 60 
F20 "OPC5" O R 6200 3350 60 
F21 "OPC6" O R 6200 3450 60 
F22 "OPC7" O R 6200 3550 60 
F23 "opfetchEnd" O R 6200 2350 60 
F24 "-opfetchEnd" I R 6200 2450 60 
F25 "opIncPC" O R 6200 2650 60 
$EndSheet
$Sheet
S 5100 1000 950  600 
U 5929A488
F0 "phase" 60
F1 "phase.sch" 60
F2 "ucodeEnd" I L 5100 1400 60 
F3 "-opfetch" O R 6050 1100 60 
F4 "-ucode" O R 6050 1200 60 
F5 "-RST" I L 5100 1100 60 
F6 "CLK" I L 5100 1250 60 
F7 "-opfetchEnd" I L 5100 1500 60 
$EndSheet
$Sheet
S 2750 1000 1200 1450
U 592B9ACE
F0 "earlyrst" 60
F1 "earlyrst.sch" 60
F2 "-RST" I L 2750 1200 60 
F3 "RST" I L 2750 1100 60 
F4 "CLK" I L 2750 1350 60 
F5 "-lateRST" O R 3950 1200 60 
F6 "ALU0" O R 3950 1650 60 
F7 "ALU1" O R 3950 1750 60 
F8 "ALU2" O R 3950 1850 60 
F9 "ALU3" O R 3950 1950 60 
F10 "ALU4" O R 3950 2050 60 
F11 "ALU5" O R 3950 2150 60 
F12 "ALU6" O R 3950 2250 60 
F13 "ALU7" O R 3950 2350 60 
F14 "-wrPC" O R 3950 1500 60 
F15 "lateRST" O R 3950 1100 60 
$EndSheet
$Sheet
S 5100 4050 1200 1700
U 592B8444
F0 "pc" 60
F1 "pc.sch" 60
F2 "-pcGenAddr" I L 5100 5050 60 
F3 "ALU0" I L 5100 4150 60 
F4 "ALU1" I L 5100 4250 60 
F5 "ALU2" I L 5100 4350 60 
F6 "ALU3" I L 5100 4450 60 
F7 "ALU4" I L 5100 4550 60 
F8 "ALU5" I L 5100 4650 60 
F9 "ALU6" I L 5100 4750 60 
F10 "ALU7" I L 5100 4850 60 
F11 "LEFT0" O R 6300 4150 60 
F12 "LEFT1" O R 6300 4250 60 
F13 "LEFT2" O R 6300 4350 60 
F14 "LEFT3" O R 6300 4450 60 
F15 "LEFT4" O R 6300 4550 60 
F16 "LEFT5" O R 6300 4650 60 
F17 "LEFT6" O R 6300 4750 60 
F18 "LEFT7" O R 6300 4850 60 
F19 "RIGHT0" O R 6300 5000 60 
F20 "RIGHT1" O R 6300 5100 60 
F21 "RIGHT2" O R 6300 5200 60 
F22 "RIGHT3" O R 6300 5300 60 
F23 "RIGHT4" O R 6300 5400 60 
F24 "RIGHT5" O R 6300 5500 60 
F25 "RIGHT6" O R 6300 5600 60 
F26 "RIGHT7" O R 6300 5700 60 
F27 "-wrPC" I L 5100 5200 60 
F28 "-uWrPCHi" I L 5100 5300 60 
F29 "-uWrPCLo" I L 5100 5400 60 
F30 "opIncPC" I L 5100 5500 60 
F31 "uPcClk" I L 5100 5600 60 
$EndSheet
$Sheet
S 7600 2050 1400 2700
U 592C71D0
F0 "ucode" 60
F1 "ucode.sch" 60
F2 "OPC0" I L 7600 2850 60 
F3 "OPC1" I L 7600 2950 60 
F4 "OPC2" I L 7600 3050 60 
F5 "OPC3" I L 7600 3150 60 
F6 "OPC4" I L 7600 3250 60 
F7 "OPC5" I L 7600 3350 60 
F8 "OPC6" I L 7600 3450 60 
F9 "OPC7" I L 7600 3550 60 
F10 "CLK" I L 7600 2450 60 
F11 "-uRdGPLo" O R 9000 2150 60 
F12 "-uRdGPHi" O R 9000 2250 60 
F13 "-uWrGPLo" O R 9000 2350 60 
F14 "-uWrGPHi" O R 9000 2450 60 
F15 "uRdDev0" O R 9000 2550 60 
F16 "uRdDev1" O R 9000 2650 60 
F17 "uWrDev0" O R 9000 2750 60 
F18 "uWrDev1" O R 9000 2850 60 
F19 "-uRdPCLo" O R 9000 2950 60 
F20 "-uRdPCHi" O R 9000 3050 60 
F21 "-uRdARLo" O R 9000 3150 60 
F22 "-uRdARHi" O R 9000 3250 60 
F23 "-uWrPCLo" O R 9000 3350 60 
F24 "-uWrPCHi" O R 9000 3450 60 
F25 "-uWrARLo" O R 9000 3550 60 
F26 "-uWrARHi" O R 9000 3650 60 
F27 "-uRdMem" O R 9000 3750 60 
F28 "-uWrMem" O R 9000 3850 60 
F29 "uEnd" O R 9000 3950 60 
F30 "uPcClk" O R 9000 4050 60 
F31 "-RST" I L 7600 2150 60 
F32 "-DIS" I L 7600 2250 60 
$EndSheet
$Sheet
S 1300 1000 950  600 
U 59395B62
F0 "clockrst" 60
F1 "clockrst.sch" 60
F2 "CLK" O R 2250 1350 60 
F3 "-CLK" O R 2250 1450 60 
F4 "RST" O R 2250 1100 60 
F5 "-RST" O R 2250 1200 60 
$EndSheet
Text Notes 1950 1800 2    60   ~ 0
prefix 100
Text Notes 3500 2650 2    60   ~ 0
prefix 200
Text Label 4000 1650 0    60   ~ 0
ALU0
Text Label 4000 1750 0    60   ~ 0
ALU1
Text Label 4000 1850 0    60   ~ 0
ALU2
Text Label 4000 1950 0    60   ~ 0
ALU3
Text Label 4000 2050 0    60   ~ 0
ALU4
Text Label 4000 2150 0    60   ~ 0
ALU5
Text Label 4000 2250 0    60   ~ 0
ALU6
Text Label 4000 2350 0    60   ~ 0
ALU7
Entry Wire Line
	4250 1650 4350 1750
Entry Wire Line
	4250 1750 4350 1850
Entry Wire Line
	4250 1850 4350 1950
Entry Wire Line
	4250 1950 4350 2050
Entry Wire Line
	4250 2050 4350 2150
Entry Wire Line
	4250 2150 4350 2250
Entry Wire Line
	4250 2250 4350 2350
Entry Wire Line
	4250 2350 4350 2450
Text Label 4800 2850 0    60   ~ 0
ALU0
Text Label 4800 2950 0    60   ~ 0
ALU1
Text Label 4800 3050 0    60   ~ 0
ALU2
Text Label 4800 3150 0    60   ~ 0
ALU3
Text Label 4800 3250 0    60   ~ 0
ALU4
Text Label 4800 3350 0    60   ~ 0
ALU5
Text Label 4800 3450 0    60   ~ 0
ALU6
Text Label 4800 3550 0    60   ~ 0
ALU7
Entry Wire Line
	4350 2750 4450 2850
Entry Wire Line
	4350 2850 4450 2950
Entry Wire Line
	4350 2950 4450 3050
Entry Wire Line
	4350 3050 4450 3150
Entry Wire Line
	4350 3150 4450 3250
Entry Wire Line
	4350 3250 4450 3350
Entry Wire Line
	4350 3350 4450 3450
Entry Wire Line
	4350 3450 4450 3550
Text Notes 5300 1800 0    60   ~ 0
prefix 300
Text Notes 5400 3850 0    60   ~ 0
prefix 400
Text Notes 7950 4950 0    60   ~ 0
prefix 500
Text Notes 5400 5950 0    60   ~ 0
prefix 600
Text Label 4800 4150 0    60   ~ 0
ALU0
Text Label 4800 4250 0    60   ~ 0
ALU1
Text Label 4800 4350 0    60   ~ 0
ALU2
Text Label 4800 4450 0    60   ~ 0
ALU3
Text Label 4800 4550 0    60   ~ 0
ALU4
Text Label 4800 4650 0    60   ~ 0
ALU5
Text Label 4800 4750 0    60   ~ 0
ALU6
Text Label 4800 4850 0    60   ~ 0
ALU7
Entry Wire Line
	4350 4050 4450 4150
Entry Wire Line
	4350 4150 4450 4250
Entry Wire Line
	4350 4250 4450 4350
Entry Wire Line
	4350 4350 4450 4450
Entry Wire Line
	4350 4450 4450 4550
Entry Wire Line
	4350 4550 4450 4650
Entry Wire Line
	4350 4650 4450 4750
Entry Wire Line
	4350 4750 4450 4850
Text Label 4050 1500 0    60   ~ 0
-wrPC
Text Label 4550 5200 0    60   ~ 0
-wrPC
Text Label 6250 2650 0    60   ~ 0
opIncPC
Text Label 4550 5500 0    60   ~ 0
opIncPC
Text Label 4550 5300 0    60   ~ 0
-uWrPCHi
Text Label 4550 5400 0    60   ~ 0
-uWrPCLo
Text Label 4550 5600 0    60   ~ 0
uPcClk
Text Label 9050 3350 0    60   ~ 0
-uWrPCLo
Text Label 9050 3450 0    60   ~ 0
-uWrPCHi
Text Label 9050 4050 0    60   ~ 0
uPcClk
Text Label 9050 3950 0    60   ~ 0
uEnd
Text Label 4550 1400 0    60   ~ 0
uEnd
Text Notes 12000 10200 0    60   ~ 0
8 bit HCMOS CPU
$Sheet
S 7550 6250 1300 2600
U 5947DA38
F0 "alu" 60
F1 "alu.sch" 60
F2 "LEFT0" I L 7550 6500 60 
F3 "LEFT1" I L 7550 6600 60 
F4 "LEFT2" I L 7550 6700 60 
F5 "LEFT3" I L 7550 6800 60 
F6 "LEFT4" I L 7550 6900 60 
F7 "LEFT5" I L 7550 7000 60 
F8 "LEFT6" I L 7550 7100 60 
F9 "LEFT7" I L 7550 7200 60 
F10 "RIGHT0" I L 7550 7350 60 
F11 "RIGHT1" I L 7550 7450 60 
F12 "RIGHT2" I L 7550 7550 60 
F13 "RIGHT3" I L 7550 7650 60 
F14 "RIGHT4" I L 7550 7750 60 
F15 "RIGHT5" I L 7550 7850 60 
F16 "RIGHT6" I L 7550 7950 60 
F17 "RIGHT7" I L 7550 8050 60 
F18 "FUNC0" I L 7550 8450 60 
F19 "FUNC1" I L 7550 8550 60 
F20 "FUNC2" I L 7550 8650 60 
F21 "FUNC3" I L 7550 8750 60 
F22 "MODE" I L 7550 8200 60 
F23 "-CIN" I L 7550 8300 60 
F24 "-rdALU" I L 7550 6350 60 
F25 "ALU0" O R 8850 6800 60 
F26 "ALU1" O R 8850 6900 60 
F27 "ALU2" O R 8850 7000 60 
F28 "ALU3" O R 8850 7100 60 
F29 "ALU4" O R 8850 7200 60 
F30 "ALU5" O R 8850 7300 60 
F31 "ALU6" O R 8850 7400 60 
F32 "ALU7" O R 8850 7500 60 
F33 "EQ" O R 8850 6350 60 
F34 "-COUT" O R 8850 6550 60 
F35 "-EQ" O R 8850 6450 60 
F36 "COUT" O R 8850 6650 60 
$EndSheet
Text Notes 7500 9050 0    60   ~ 0
prefix 700
Text Label 6350 4150 0    60   ~ 0
LEFT0
Text Label 6350 4250 0    60   ~ 0
LEFT1
Text Label 6350 4350 0    60   ~ 0
LEFT2
Text Label 6350 4450 0    60   ~ 0
LEFT3
Text Label 6350 4550 0    60   ~ 0
LEFT4
Text Label 6350 4650 0    60   ~ 0
LEFT5
Text Label 6350 4750 0    60   ~ 0
LEFT6
Text Label 6350 4850 0    60   ~ 0
LEFT7
Entry Wire Line
	6900 4150 7000 4250
Entry Wire Line
	6900 4250 7000 4350
Entry Wire Line
	6900 4350 7000 4450
Entry Wire Line
	6900 4450 7000 4550
Entry Wire Line
	6900 4550 7000 4650
Entry Wire Line
	6900 4650 7000 4750
Entry Wire Line
	6900 4750 7000 4850
Entry Wire Line
	6900 4850 7000 4950
Text Label 7150 6500 0    60   ~ 0
LEFT0
Text Label 7150 6600 0    60   ~ 0
LEFT1
Text Label 7150 6700 0    60   ~ 0
LEFT2
Text Label 7150 6800 0    60   ~ 0
LEFT3
Text Label 7150 6900 0    60   ~ 0
LEFT4
Text Label 7150 7000 0    60   ~ 0
LEFT5
Text Label 7150 7100 0    60   ~ 0
LEFT6
Text Label 7150 7200 0    60   ~ 0
LEFT7
Entry Wire Line
	7000 6400 7100 6500
Entry Wire Line
	7000 6500 7100 6600
Entry Wire Line
	7000 6600 7100 6700
Entry Wire Line
	7000 6700 7100 6800
Entry Wire Line
	7000 6800 7100 6900
Entry Wire Line
	7000 6900 7100 7000
Entry Wire Line
	7000 7000 7100 7100
Entry Wire Line
	7000 7100 7100 7200
Text Label 6350 5000 0    60   ~ 0
RIGHT0
Text Label 6350 5100 0    60   ~ 0
RIGHT1
Text Label 6350 5200 0    60   ~ 0
RIGHT2
Text Label 6350 5300 0    60   ~ 0
RIGHT3
Text Label 6350 5400 0    60   ~ 0
RIGHT4
Text Label 6350 5500 0    60   ~ 0
RIGHT5
Text Label 6350 5600 0    60   ~ 0
RIGHT6
Text Label 6350 5700 0    60   ~ 0
RIGHT7
Entry Wire Line
	6700 5000 6800 5100
Entry Wire Line
	6700 5100 6800 5200
Entry Wire Line
	6700 5200 6800 5300
Entry Wire Line
	6700 5300 6800 5400
Entry Wire Line
	6700 5400 6800 5500
Entry Wire Line
	6700 5500 6800 5600
Entry Wire Line
	6700 5600 6800 5700
Entry Wire Line
	6700 5700 6800 5800
Text Label 7100 7350 0    60   ~ 0
RIGHT0
Text Label 7100 7450 0    60   ~ 0
RIGHT1
Text Label 7100 7550 0    60   ~ 0
RIGHT2
Text Label 7100 7650 0    60   ~ 0
RIGHT3
Text Label 7100 7750 0    60   ~ 0
RIGHT4
Text Label 7100 7850 0    60   ~ 0
RIGHT5
Text Label 7100 7950 0    60   ~ 0
RIGHT6
Text Label 7100 8050 0    60   ~ 0
RIGHT7
Entry Wire Line
	6800 7250 6900 7350
Entry Wire Line
	6800 7350 6900 7450
Entry Wire Line
	6800 7450 6900 7550
Entry Wire Line
	6800 7550 6900 7650
Entry Wire Line
	6800 7650 6900 7750
Entry Wire Line
	6800 7750 6900 7850
Entry Wire Line
	6800 7850 6900 7950
Entry Wire Line
	6800 7950 6900 8050
Wire Wire Line
	2250 1100 2750 1100
Wire Wire Line
	2250 1200 2750 1200
Wire Wire Line
	2250 1350 2750 1350
Wire Wire Line
	5100 1250 4950 1250
Wire Wire Line
	4950 750  4950 2550
Wire Wire Line
	2450 750  7100 750 
Wire Wire Line
	2450 750  2450 1350
Connection ~ 2450 1350
Wire Wire Line
	5100 1100 4850 1100
Wire Wire Line
	4850 1100 4850 2250
Wire Wire Line
	3950 1200 4850 1200
Wire Wire Line
	4850 2250 5100 2250
Connection ~ 4850 1200
Wire Wire Line
	6050 1200 6200 1200
Wire Wire Line
	6200 1200 6200 1950
Wire Wire Line
	6200 1950 4750 1950
Wire Wire Line
	4750 2350 5100 2350
Wire Wire Line
	4750 1950 4750 2350
Wire Wire Line
	6200 2450 6350 2450
Wire Wire Line
	6350 2450 6350 1850
Wire Wire Line
	6350 1850 4750 1850
Wire Wire Line
	4750 1850 4750 1500
Wire Wire Line
	4750 1500 5100 1500
Wire Wire Line
	4950 2550 5100 2550
Connection ~ 4950 1250
Wire Wire Line
	5100 2650 4100 2650
Wire Wire Line
	4100 2650 4100 2800
Wire Wire Line
	4100 2800 2450 2800
Wire Wire Line
	2450 2800 2450 1450
Wire Wire Line
	2450 1450 2250 1450
Wire Wire Line
	3950 1650 4250 1650
Wire Wire Line
	3950 1750 4250 1750
Wire Wire Line
	3950 1850 4250 1850
Wire Wire Line
	3950 1950 4250 1950
Wire Wire Line
	3950 2050 4250 2050
Wire Wire Line
	3950 2150 4250 2150
Wire Wire Line
	3950 2250 4250 2250
Wire Wire Line
	3950 2350 4250 2350
Wire Bus Line
	4350 1750 4350 9400
Wire Wire Line
	5100 2850 4450 2850
Wire Wire Line
	5100 2950 4450 2950
Wire Wire Line
	5100 3050 4450 3050
Wire Wire Line
	5100 3150 4450 3150
Wire Wire Line
	5100 3250 4450 3250
Wire Wire Line
	5100 3350 4450 3350
Wire Wire Line
	5100 3450 4450 3450
Wire Wire Line
	5100 3550 4450 3550
Wire Wire Line
	5100 4150 4450 4150
Wire Wire Line
	5100 4250 4450 4250
Wire Wire Line
	5100 4350 4450 4350
Wire Wire Line
	5100 4450 4450 4450
Wire Wire Line
	5100 4550 4450 4550
Wire Wire Line
	5100 4650 4450 4650
Wire Wire Line
	5100 4750 4450 4750
Wire Wire Line
	5100 4850 4450 4850
Wire Wire Line
	3950 1500 4350 1500
Wire Wire Line
	4500 5200 5100 5200
Wire Wire Line
	5100 5500 4500 5500
Wire Wire Line
	5100 5600 4500 5600
Wire Wire Line
	6200 2650 6700 2650
Wire Wire Line
	5100 5300 4500 5300
Wire Wire Line
	5100 5400 4500 5400
Wire Wire Line
	6050 1100 7000 1100
Wire Wire Line
	7000 1100 7000 2250
Wire Wire Line
	7000 2250 7600 2250
Wire Wire Line
	7600 2150 6900 2150
Wire Wire Line
	6900 2150 6900 850 
Wire Wire Line
	6900 850  4550 850 
Wire Wire Line
	4550 850  4550 1200
Connection ~ 4550 1200
Wire Wire Line
	7600 2450 7100 2450
Wire Wire Line
	7100 2450 7100 750 
Connection ~ 4950 750 
Wire Wire Line
	6200 2850 7600 2850
Wire Wire Line
	6200 2950 7600 2950
Wire Wire Line
	6200 3050 7600 3050
Wire Wire Line
	6200 3150 7600 3150
Wire Wire Line
	6200 3250 7600 3250
Wire Wire Line
	6200 3350 7600 3350
Wire Wire Line
	6200 3450 7600 3450
Wire Wire Line
	6200 3550 7600 3550
Wire Wire Line
	9000 3450 9300 3450
Wire Wire Line
	9000 3350 9300 3350
Wire Wire Line
	9000 4050 9300 4050
Wire Wire Line
	9000 3950 9300 3950
Wire Wire Line
	5100 1400 4550 1400
Wire Wire Line
	6300 4150 6900 4150
Wire Wire Line
	6300 4250 6900 4250
Wire Wire Line
	6300 4350 6900 4350
Wire Wire Line
	6300 4450 6900 4450
Wire Wire Line
	6300 4550 6900 4550
Wire Wire Line
	6300 4650 6900 4650
Wire Wire Line
	6300 4750 6900 4750
Wire Wire Line
	6300 4850 6900 4850
Wire Bus Line
	7000 4250 7000 7100
Wire Wire Line
	7550 6500 7100 6500
Wire Wire Line
	7550 6600 7100 6600
Wire Wire Line
	7550 6700 7100 6700
Wire Wire Line
	7550 6800 7100 6800
Wire Wire Line
	7550 6900 7100 6900
Wire Wire Line
	7550 7000 7100 7000
Wire Wire Line
	7550 7100 7100 7100
Wire Wire Line
	7550 7200 7100 7200
Wire Wire Line
	6300 5000 6700 5000
Wire Wire Line
	6300 5100 6700 5100
Wire Wire Line
	6300 5200 6700 5200
Wire Wire Line
	6300 5300 6700 5300
Wire Wire Line
	6300 5400 6700 5400
Wire Wire Line
	6300 5500 6700 5500
Wire Wire Line
	6300 5600 6700 5600
Wire Wire Line
	6300 5700 6700 5700
Wire Bus Line
	6800 5100 6800 7950
Wire Wire Line
	7550 7350 6900 7350
Wire Wire Line
	7550 7450 6900 7450
Wire Wire Line
	7550 7550 6900 7550
Wire Wire Line
	7550 7650 6900 7650
Wire Wire Line
	7550 7750 6900 7750
Wire Wire Line
	7550 7850 6900 7850
Wire Wire Line
	7550 7950 6900 7950
Wire Wire Line
	7550 8050 6900 8050
Wire Bus Line
	4350 9400 9350 9400
Wire Bus Line
	9350 9400 9350 6900
Wire Wire Line
	8850 6800 9250 6800
Wire Wire Line
	8850 6900 9250 6900
Wire Wire Line
	8850 7000 9250 7000
Wire Wire Line
	8850 7100 9250 7100
Wire Wire Line
	8850 7200 9250 7200
Wire Wire Line
	8850 7300 9250 7300
Wire Wire Line
	8850 7400 9250 7400
Wire Wire Line
	8850 7500 9250 7500
Text Label 8900 6800 0    60   ~ 0
ALU0
Text Label 8900 6900 0    60   ~ 0
ALU1
Text Label 8900 7000 0    60   ~ 0
ALU2
Text Label 8900 7100 0    60   ~ 0
ALU3
Text Label 8900 7200 0    60   ~ 0
ALU4
Text Label 8900 7300 0    60   ~ 0
ALU5
Text Label 8900 7400 0    60   ~ 0
ALU6
Text Label 8900 7500 0    60   ~ 0
ALU7
Entry Wire Line
	9250 6800 9350 6900
Entry Wire Line
	9250 6900 9350 7000
Entry Wire Line
	9250 7000 9350 7100
Entry Wire Line
	9250 7100 9350 7200
Entry Wire Line
	9250 7200 9350 7300
Entry Wire Line
	9250 7300 9350 7400
Entry Wire Line
	9250 7400 9350 7500
Entry Wire Line
	9250 7500 9350 7600
$EndSCHEMATC
