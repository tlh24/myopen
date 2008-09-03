EESchema Schematic File Version 2
LIBS:power,device,emg_sym,./afe2.cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 1 2
Title ""
Date "23 aug 2008"
Rev ""
Comp ""
Comment1 "c. 2008 Timothy Hanson"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 4800 2100 0    60   ~
MORE DEBUG JUMPERS!!
Text Label 2450 3800 0    60   ~
AGnd
Text Label 2450 3650 0    60   ~
Vdd2
Text Label 2450 3500 0    60   ~
AVdd
Text Label 8900 3750 0    60   ~
AGnd
Text Label 8900 3600 0    60   ~
Vdd2
Text Label 8900 3450 0    60   ~
AVdd
Wire Wire Line
	8650 3450 8900 3450
Wire Wire Line
	8650 3600 8900 3600
Wire Wire Line
	2650 3800 2450 3800
Wire Wire Line
	2650 3500 2450 3500
Wire Wire Line
	5200 6000 4900 6000
Wire Wire Line
	5200 5600 4900 5600
Wire Wire Line
	7400 3000 7200 3000
Wire Wire Line
	3900 3000 4100 3000
Connection ~ 5100 6100
Wire Wire Line
	5200 6100 5100 6100
Connection ~ 7050 4200
Wire Wire Line
	7400 4200 6250 4200
Wire Wire Line
	7050 4200 7050 4000
Connection ~ 6550 4000
Wire Wire Line
	6550 4400 6550 4000
Connection ~ 6350 4100
Wire Wire Line
	6350 4450 6350 2850
Wire Wire Line
	6550 2400 6350 2400
Wire Wire Line
	6350 2400 6350 2450
Wire Wire Line
	6550 4000 6250 4000
Wire Wire Line
	6350 4100 6250 4100
Wire Wire Line
	6350 3100 6250 3100
Connection ~ 4250 4200
Wire Wire Line
	3900 4200 5050 4200
Connection ~ 4750 4000
Wire Wire Line
	4950 4850 4950 4900
Wire Wire Line
	4950 4900 4750 4900
Wire Wire Line
	4750 4400 4750 4000
Wire Wire Line
	4950 3100 5050 3100
Wire Wire Line
	4950 4100 5050 4100
Wire Wire Line
	5050 3000 4250 3000
Wire Wire Line
	4250 3000 4250 3200
Wire Wire Line
	5050 3200 4750 3200
Wire Wire Line
	3900 3100 4250 3100
Connection ~ 4250 3100
Wire Wire Line
	4750 3200 4750 2900
Connection ~ 4750 3200
Wire Wire Line
	4750 2400 4950 2400
Wire Wire Line
	4950 2400 4950 2450
Wire Wire Line
	4750 4000 5050 4000
Wire Wire Line
	4250 4200 4250 4000
Wire Wire Line
	4950 4450 4950 2850
Connection ~ 4950 4100
Connection ~ 4950 3100
Wire Wire Line
	6250 3200 6550 3200
Connection ~ 6350 3100
Wire Wire Line
	6550 3200 6550 2900
Connection ~ 6550 3200
Wire Wire Line
	6350 4850 6350 4900
Wire Wire Line
	6350 4900 6550 4900
Wire Wire Line
	6250 3000 7050 3000
Wire Wire Line
	7050 3000 7050 3200
Wire Wire Line
	7400 3100 7050 3100
Connection ~ 7050 3100
Wire Wire Line
	5200 5700 5100 5700
Wire Wire Line
	5100 5700 5100 6300
Wire Wire Line
	5100 6300 5200 6300
Wire Wire Line
	5200 5900 5100 5900
Connection ~ 5100 5900
Wire Wire Line
	3900 4300 4100 4300
Wire Wire Line
	7400 4300 7200 4300
Wire Wire Line
	5200 5800 4900 5800
Wire Wire Line
	5200 6200 4900 6200
Wire Wire Line
	2650 3650 2450 3650
Wire Wire Line
	8650 3750 8900 3750
Text Label 4900 6200 0    60   ~
CH3
Text Label 4900 6000 0    60   ~
CH2
Text Label 4900 5800 0    60   ~
CH1
Text Label 4900 5600 0    60   ~
CH0
Text Label 7200 4300 0    60   ~
CH3
Text Label 7200 3000 0    60   ~
CH2
Text Label 3950 4300 0    60   ~
CH1
Text Label 3950 3000 0    60   ~
CH0
$Comp
L MCP3304 U?
U 1 1 48BEB273
P 5700 5950
F 0 "U?" H 5850 5300 60  0000 C C
F 1 "MCP3304" H 5750 6600 60  0000 C C
	1    5700 5950
	1    0    0    -1  
$EndComp
$Sheet
S 7400 2900 1250 1500
U 48BEB1D1
F0 "filter2" 60
F1 "afe2_filter.sch" 60
F2 "Out2" I L 7400 4300 60 
F3 "In2" I L 7400 4200 60 
F4 "In1" I L 7400 3100 60 
F5 "Analog_GND" I R 8650 3750 60 
F6 "Vdd/2" I R 8650 3600 60 
F7 "Out1" I L 7400 3000 60 
F8 "Analog_Vdd" I R 8650 3450 60 
$EndSheet
$Comp
L R R?
U 1 1 48BEB171
P 6550 4650
F 0 "R?" V 6630 4650 50  0000 C C
F 1 "3.3k" V 6550 4650 50  0000 C C
F 2 "0402" V 6450 4650 60  0000 C C
	1    6550 4650
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 48BEB16B
P 6350 4650
F 0 "C?" H 6400 4750 50  0000 L C
F 1 "4.7uf" H 6400 4550 50  0000 L C
F 2 "0603" H 6550 4650 60  0000 C C
	1    6350 4650
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 48BEB13D
P 6550 2650
F 0 "R?" V 6630 2650 50  0000 C C
F 1 "3.3k" V 6550 2650 50  0000 C C
F 2 "0402" V 6450 2650 60  0000 C C
	1    6550 2650
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 48BEB136
P 6350 2650
F 0 "C?" H 6400 2750 50  0000 L C
F 1 "4.7uf" H 6400 2550 50  0000 L C
F 2 "0603" H 6550 2650 60  0000 C C
	1    6350 2650
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 48BEB11A
P 6800 4000
F 0 "R?" V 6880 4000 50  0000 C C
F 1 "327k" V 6800 4000 50  0000 C C
F 2 "0402" V 6930 3950 60  0000 C C
	1    6800 4000
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 48BEB111
P 6800 3200
F 0 "R?" V 6880 3200 50  0000 C C
F 1 "327k" V 6800 3200 50  0000 C C
F 2 "0402" V 6930 3150 60  0000 C C
	1    6800 3200
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 48BEB077
P 4950 4650
F 0 "C?" H 5000 4750 50  0000 L C
F 1 "4.7uf" H 5000 4550 50  0000 L C
F 2 "0603" H 5150 4650 60  0000 C C
	1    4950 4650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 48BEB06F
P 4750 4650
F 0 "R?" V 4830 4650 50  0000 C C
F 1 "3.3k" V 4750 4650 50  0000 C C
F 2 "0402" V 4650 4650 60  0000 C C
	1    4750 4650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 48BEB063
P 4500 4000
F 0 "R?" V 4580 4000 50  0000 C C
F 1 "327k" V 4500 4000 50  0000 C C
F 2 "0402" V 4630 3950 60  0000 C C
	1    4500 4000
	0    1    1    0   
$EndComp
$Sheet
S 2650 2900 1250 1500
U 48BEAFD3
F0 "filter1" 60
F1 "afe2_filter.sch" 60
F2 "Out2" I R 3900 4300 60 
F3 "In2" I R 3900 4200 60 
F4 "In1" I R 3900 3100 60 
F5 "Analog_GND" I L 2650 3800 60 
F6 "Vdd/2" I L 2650 3650 60 
F7 "Out1" I R 3900 3000 60 
F8 "Analog_Vdd" I L 2650 3500 60 
$EndSheet
$Comp
L C C?
U 1 1 48BE224B
P 4950 2650
F 0 "C?" H 5000 2750 50  0000 L C
F 1 "4.7uf" H 5000 2550 50  0000 L C
F 2 "0603" H 5150 2650 60  0000 C C
	1    4950 2650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 48BE223E
P 4750 2650
F 0 "R?" V 4830 2650 50  0000 C C
F 1 "3.3k" V 4750 2650 50  0000 C C
F 2 "0402" V 4650 2650 60  0000 C C
	1    4750 2650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 48BE2227
P 4500 3200
F 0 "R?" V 4580 3200 50  0000 C C
F 1 "327k" V 4500 3200 50  0000 C C
F 2 "0402" V 4630 3150 60  0000 C C
	1    4500 3200
	0    1    1    0   
$EndComp
Text Label 6250 3900 0    60   ~
IN-C
Text Label 6250 3800 0    60   ~
IN+C
Text Label 6250 3300 0    60   ~
IN-D
Text Label 6250 3400 0    60   ~
IN+D
Text Label 5050 3900 2    60   ~
IN-B
Text Label 5050 3800 2    60   ~
IN+B
Text Label 5050 3300 2    60   ~
IN-A
Text Label 5050 3400 2    60   ~
IN+A
Text Label 1850 3300 0    60   ~
IN-D
Text Label 1850 3400 0    60   ~
IN+D
Text Label 1850 3500 0    60   ~
IN-C
Text Label 1850 3600 0    60   ~
IN+C
Text Label 1850 3700 0    60   ~
IN-B
Text Label 1850 3800 0    60   ~
IN+B
Text Label 1850 3900 0    60   ~
IN-A
Text Label 1850 4000 0    60   ~
IN+A
$Comp
L 8X100 U?
U 1 1 48BE210D
P 1400 3600
F 0 "U?" H 1400 3600 60  0000 C C
F 1 "8X100" H 1400 3600 60  0000 C C
	1    1400 3600
	-1   0    0    1   
$EndComp
$Comp
L ISL28470 U?
U 1 1 48BE1FD2
P 5650 3600
F 0 "U?" H 5650 2750 60  0000 C C
F 1 "ISL28470" H 5650 4350 60  0000 C C
F 2 "QSOP-28" H 5650 3600 50  0000 C C
	1    5650 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
