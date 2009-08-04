EESchema Schematic File Version 2
LIBS:power,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,dsp,microchip,analog_switches,motorola,texas,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,valves,./drl.cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 1
Title ""
Date "22 jul 2009"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4900 3900 4800 3900
Wire Wire Line
	4800 3900 4800 4000
Wire Wire Line
	5400 3900 5600 3900
Wire Wire Line
	5600 3900 5600 3650
Wire Wire Line
	5600 3650 6850 3650
Wire Wire Line
	6000 3450 6000 3600
Wire Wire Line
	6850 4350 6750 4350
Wire Wire Line
	6750 4350 6750 4000
Connection ~ 6750 4000
Connection ~ 7250 4000
Wire Wire Line
	6750 4000 6600 4000
Wire Wire Line
	6000 4600 6000 4400
Wire Wire Line
	7250 3650 7250 4350
Wire Wire Line
	5600 4100 5500 4100
Wire Wire Line
	5500 4100 5500 4250
$Comp
L VCC #PWR?
U 1 1 4A673483
P 4800 4000
F 0 "#PWR?" H 4800 4100 30  0001 C C
F 1 "VCC" H 4800 4100 30  0000 C C
	1    4800 4000
	1    0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 4A673440
P 5500 4250
F 0 "#PWR?" H 5500 4250 30  0001 C C
F 1 "GND" H 5500 4180 30  0001 C C
	1    5500 4250
	1    0    0    -1  
$EndComp
$Comp
L -5V #PWR?
U 1 1 4A6733EA
P 6000 4550
F 0 "#PWR?" H 6000 4640 20  0001 C C
F 1 "-5V" H 6000 4640 30  0000 C C
	1    6000 4550
	1    0    0    1   
$EndComp
$Comp
L +5V #PWR?
U 1 1 4A6733E0
P 6000 3450
F 0 "#PWR?" H 6000 3540 20  0001 C C
F 1 "+5V" H 6000 3540 30  0000 C C
	1    6000 3450
	1    0    0    -1  
$EndComp
$Comp
L LM293 U?
U 1 1 4A67336C
P 6100 4000
F 0 "U?" H 6250 4150 60  0000 C C
F 1 "LM293" H 6300 3800 60  0000 C C
	1    6100 4000
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4A6731EE
P 7050 4350
F 0 "C1" H 7100 4450 50  0000 L C
F 1 "1nF" H 7100 4250 50  0000 L C
	1    7050 4350
	0    -1   -1   0   
$EndComp
$Comp
L C C2
U 1 1 4A6731E7
P 7050 3650
F 0 "C2" H 7100 3750 50  0000 L C
F 1 "1nF" H 7100 3550 50  0000 L C
	1    7050 3650
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 4A6731C8
P 5150 3900
F 0 "R1" V 5230 3900 50  0000 C C
F 1 "10K" V 5150 3900 50  0000 C C
	1    5150 3900
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 4A67319D
P 7000 4000
F 0 "R2" V 7080 4000 50  0000 C C
F 1 "200K" V 7000 4000 50  0000 C C
	1    7000 4000
	0    1    1    0   
$EndComp
$EndSCHEMATC
