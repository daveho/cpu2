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
LIBS:cpu2-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
S 1300 800  1050 600 
U 59284480
F0 "gpreg" 60
F1 "gpreg.sch" 60
$EndSheet
$Sheet
S 1300 3150 1100 1500
U 592848D0
F0 "opfetch" 60
F1 "opfetch.sch" 60
F2 "-RST" I L 1300 3250 60 
F3 "CLK" I L 1300 3550 60 
F4 "-CLK" I L 1300 3650 60 
F5 "-DIS" I L 1300 3350 60 
F6 "ALU0" I L 1300 3850 60 
F7 "ALU1" I L 1300 3950 60 
F8 "ALU2" I L 1300 4050 60 
F9 "ALU3" I L 1300 4150 60 
F10 "ALU4" I L 1300 4250 60 
F11 "ALU5" I L 1300 4350 60 
F12 "ALU6" I L 1300 4450 60 
F13 "ALU7" I L 1300 4550 60 
F14 "-opReadMem" O R 2400 3250 60 
F15 "OPC0" O R 2400 3850 60 
F16 "OPC1" O R 2400 3950 60 
F17 "OPC2" O R 2400 4050 60 
F18 "OPC3" O R 2400 4150 60 
F19 "OPC4" O R 2400 4250 60 
F20 "OPC5" O R 2400 4350 60 
F21 "OPC6" O R 2400 4450 60 
F22 "OPC7" O R 2400 4550 60 
F23 "opfetchEnd" O R 2400 3350 60 
F24 "-opfetchEnd" I R 2400 3450 60 
$EndSheet
$Sheet
S 1300 2100 950  600 
U 5929A488
F0 "phase" 60
F1 "phase.sch" 60
F2 "ucodeEnd" I L 1300 2500 60 
F3 "-opfetch" O R 2250 2200 60 
F4 "-ucode" O R 2250 2300 60 
F5 "-RST" I L 1300 2200 60 
F6 "CLK" I L 1300 2300 60 
F7 "-opfetchEnd" I L 1300 2600 60 
$EndSheet
$Sheet
S 3500 950  1050 1200
U 592B9ACE
F0 "earlyrst" 60
F1 "earlyrst.sch" 60
F2 "-RST" I L 3500 1050 60 
F3 "RST" I L 3500 1150 60 
F4 "CLK" I L 3500 1300 60 
F5 "-CLK" I L 3500 1400 60 
F6 "-lateRST" O R 4550 1050 60 
F7 "ALU0" O R 4550 1350 60 
F8 "ALU1" O R 4550 1450 60 
F9 "ALU2" O R 4550 1550 60 
F10 "ALU3" O R 4550 1650 60 
F11 "ALU4" O R 4550 1750 60 
F12 "ALU5" O R 4550 1850 60 
F13 "ALU6" O R 4550 1950 60 
F14 "ALU7" O R 4550 2050 60 
$EndSheet
$EndSCHEMATC
