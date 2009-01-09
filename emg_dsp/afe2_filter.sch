EESchema Schematic File Version 2
LIBS:power,device,emg_sym,./stage2.cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 3 5
Title "noname.sch"
Date "9 jan 2009"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 4000 2900 0    60   ~
AGnd
Text Label 4000 1500 0    60   ~
AVdd
Connection ~ 8250 4050
Connection ~ 8250 3250
Connection ~ 8250 3650
Text Label 8250 4050 0    60   ~
AGnd
Text Label 8250 3250 0    60   ~
AVdd
$Comp
L C C129
U 1 1 4907E7F2
P 8250 3850
AR Path="/48FFEE1B/48BEAFD3/4907E7F2" Ref="C129"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/4907E7F2" Ref="C140"  Part="1" 
F 0 "C140" H 8300 3950 50  0000 L C
F 1 "1uf" H 8300 3750 50  0000 L C
F 2 "0402" H 7950 3850 60  0000 C C
	1    8250 3850
	-1   0    0    1   
$EndComp
$Comp
L C C128
U 1 1 4907E7EE
P 8250 3450
AR Path="/48FFEE1B/48BEAFD3/4907E7EE" Ref="C128"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/4907E7EE" Ref="C139"  Part="1" 
F 0 "C139" H 8300 3550 50  0000 L C
F 1 "1uf" H 8300 3350 50  0000 L C
F 2 "0402" H 8000 3450 60  0000 C C
	1    8250 3450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2100 4950 2100 4800
Connection ~ 6850 5000
Wire Wire Line
	6850 5200 6850 4100
Connection ~ 4650 3100
Wire Wire Line
	4650 3250 4650 2050
Wire Wire Line
	4000 2200 4000 1500
Wire Wire Line
	4000 1500 4250 1500
Connection ~ 5800 6100
Connection ~ 8000 3650
Wire Wire Line
	8000 3650 8000 6100
Wire Wire Line
	8000 6100 3100 6100
Wire Wire Line
	6850 5000 6950 5000
Connection ~ 6850 4600
Wire Wire Line
	6300 4600 6850 4600
Connection ~ 5250 4600
Wire Wire Line
	5250 4900 5250 4100
Wire Wire Line
	5250 4100 5700 4100
Wire Wire Line
	5900 4600 5750 4600
Wire Wire Line
	5200 4600 5250 4600
Connection ~ 3450 6100
Wire Wire Line
	5800 6100 5800 5100
Connection ~ 4650 5000
Wire Wire Line
	3600 4500 4650 4500
Wire Wire Line
	3100 6100 3100 5800
Connection ~ 3450 5550
Wire Wire Line
	3750 5550 3450 5550
Wire Wire Line
	3500 5100 3350 5100
Wire Wire Line
	3350 5100 3350 5300
Wire Wire Line
	3350 5300 3100 5300
Wire Wire Line
	2600 4800 2700 4800
Wire Wire Line
	3500 4900 3450 4900
Wire Wire Line
	3450 4900 3450 5600
Wire Wire Line
	4650 5550 4250 5550
Wire Wire Line
	4550 5000 4650 5000
Wire Wire Line
	3100 4900 3100 4500
Connection ~ 3100 4800
Wire Wire Line
	2100 4800 1950 4800
Wire Wire Line
	4650 4600 4700 4600
Connection ~ 4650 4600
Wire Wire Line
	5800 4900 5800 4600
Connection ~ 5800 4600
Wire Wire Line
	6850 4100 6200 4100
Wire Wire Line
	5250 6100 5250 5300
Connection ~ 5250 6100
Wire Wire Line
	6850 2550 6950 2550
Connection ~ 6850 2150
Wire Wire Line
	6300 2150 6850 2150
Connection ~ 5250 2150
Wire Wire Line
	5250 2450 5250 1650
Wire Wire Line
	5250 1650 5700 1650
Wire Wire Line
	5900 2150 5750 2150
Wire Wire Line
	5200 2150 5250 2150
Connection ~ 3450 3650
Connection ~ 4650 2550
Wire Wire Line
	4650 2050 3600 2050
Wire Wire Line
	3100 3350 3100 3650
Connection ~ 3450 3100
Wire Wire Line
	3750 3100 3450 3100
Wire Wire Line
	3500 2650 3350 2650
Wire Wire Line
	3350 2650 3350 2850
Wire Wire Line
	3350 2850 3100 2850
Wire Wire Line
	2600 2350 2700 2350
Wire Wire Line
	3500 2450 3450 2450
Wire Wire Line
	3450 2450 3450 3150
Wire Wire Line
	4650 3100 4250 3100
Wire Wire Line
	4550 2550 4650 2550
Wire Wire Line
	3100 2450 3100 2050
Connection ~ 3100 2350
Wire Wire Line
	4650 2150 4700 2150
Connection ~ 4650 2150
Wire Wire Line
	5800 2450 5800 2150
Connection ~ 5800 2150
Wire Wire Line
	6200 1650 6850 1650
Wire Wire Line
	5250 2850 5250 3650
Connection ~ 5250 3650
Wire Wire Line
	3100 3650 8500 3650
Wire Wire Line
	5800 3650 5800 2650
Connection ~ 5800 3650
Wire Wire Line
	4250 1900 4250 2900
Wire Wire Line
	4250 2900 4000 2900
Wire Wire Line
	1950 2350 2100 2350
Wire Wire Line
	6850 1650 6850 2800
Connection ~ 6850 2550
Wire Wire Line
	4650 4500 4650 5700
Connection ~ 4650 5550
Wire Wire Line
	2100 2350 2100 2450
$Comp
L TP TP?
U 1 1 48C5F56D
P 7250 5200
AR Path="/48BEB1D1/48C5F56D" Ref="TP?"  Part="1" 
AR Path="/48BEAFD3/48C5F56D" Ref="TP?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48C5F56D" Ref="TP6"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48C5F56D" Ref="TP12"  Part="1" 
F 0 "TP12" H 7150 5100 60  0000 C C
F 1 "TP" H 7150 5250 60  0000 C C
F 2 "TP" H 7000 5250 60  0000 C C
	1    7250 5200
	1    0    0    -1  
$EndComp
$Comp
L TP TP?
U 1 1 48C5F567
P 7250 2800
AR Path="/48BEB1D1/48C5F567" Ref="TP?"  Part="1" 
AR Path="/48BEAFD3/48C5F567" Ref="TP?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48C5F567" Ref="TP5"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48C5F567" Ref="TP11"  Part="1" 
F 0 "TP11" H 7150 2700 60  0000 C C
F 1 "TP" H 7150 2850 60  0000 C C
F 2 "TP" H 7000 2850 60  0000 C C
	1    7250 2800
	1    0    0    -1  
$EndComp
$Comp
L TP TP?
U 1 1 48C5F561
P 5050 3250
AR Path="/48BEAFD3/48C5F561" Ref="TP?"  Part="1" 
AR Path="/48BEB1D1/48C5F561" Ref="TP?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48C5F561" Ref="TP3"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48C5F561" Ref="TP9"  Part="1" 
F 0 "TP9" H 4950 3150 60  0000 C C
F 1 "TP" H 4950 3300 60  0000 C C
F 2 "TP" H 4800 3300 60  0000 C C
	1    5050 3250
	1    0    0    -1  
$EndComp
$Comp
L TP TP?
U 1 1 48C5F54E
P 5050 5700
AR Path="/48BEAFD3/48C5F54E" Ref="TP?"  Part="1" 
AR Path="/48BEB1D1/48C5F54E" Ref="TP?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48C5F54E" Ref="TP4"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48C5F54E" Ref="TP10"  Part="1" 
F 0 "TP10" H 4950 5600 60  0000 C C
F 1 "TP" H 4950 5750 60  0000 C C
F 2 "TP" H 4800 5750 60  0000 C C
	1    5050 5700
	1    0    0    -1  
$EndComp
$Comp
L TP TP?
U 1 1 48C5F544
P 2100 5350
AR Path="/48BEAFD3/48C5F544" Ref="TP?"  Part="1" 
AR Path="/48BEB1D1/48C5F544" Ref="TP?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48C5F544" Ref="TP2"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48C5F544" Ref="TP8"  Part="1" 
F 0 "TP8" H 2000 5250 60  0000 C C
F 1 "TP" H 2000 5400 60  0000 C C
F 2 "TP" H 1850 5400 60  0000 C C
	1    2100 5350
	0    1    1    0   
$EndComp
$Comp
L TP TP?
U 1 1 48C5F51C
P 2100 2850
AR Path="/48BEAFD3/48C5F51C" Ref="TP?"  Part="1" 
AR Path="/48BEB1D1/48C5F51C" Ref="TP?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48C5F51C" Ref="TP1"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48C5F51C" Ref="TP7"  Part="1" 
F 0 "TP7" H 2000 2750 60  0000 C C
F 1 "TP" H 2000 2900 60  0000 C C
F 2 "TP" H 1850 2900 60  0000 C C
	1    2100 2850
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 48BEAE97
P 4250 1700
AR Path="/48BEAFD3/48BEAE97" Ref="C?"  Part="1" 
AR Path="/48BEB1D1/48BEAE97" Ref="C?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEAE97" Ref="C123"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEAE97" Ref="C134"  Part="1" 
F 0 "C134" H 4300 1800 50  0000 L C
F 1 "1uf" H 4300 1600 50  0000 L C
F 2 "0402" H 4350 1850 60  0000 C C
	1    4250 1700
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 48BEADCB
P 4950 4600
AR Path="/48BEAFD3/48BEADCB" Ref="R?"  Part="1" 
AR Path="/48BEB1D1/48BEADCB" Ref="R?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEADCB" Ref="R54"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEADCB" Ref="R70"  Part="1" 
F 0 "R70" V 5030 4600 50  0000 C C
F 1 "9.2k" V 4950 4600 50  0000 C C
F 2 "0402" V 5080 4550 60  0000 C C
	1    4950 4600
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 48BEADCA
P 5950 4100
AR Path="/48BEAFD3/48BEADCA" Ref="R?"  Part="1" 
AR Path="/48BEB1D1/48BEADCA" Ref="R?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEADCA" Ref="R58"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEADCA" Ref="R74"  Part="1" 
F 0 "R74" V 6030 4100 50  0000 C C
F 1 "22k" V 5950 4100 50  0000 C C
F 2 "0402" V 5850 4100 60  0000 C C
	1    5950 4100
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 48BEADC9
P 6100 4600
AR Path="/48BEAFD3/48BEADC9" Ref="C?"  Part="1" 
AR Path="/48BEB1D1/48BEADC9" Ref="C?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEADC9" Ref="C127"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEADC9" Ref="C138"  Part="1" 
F 0 "C138" H 6150 4700 50  0000 L C
F 1 "0.01uf" V 6150 4500 50  0000 L C
F 2 "0402" V 5950 4600 60  0000 C C
	1    6100 4600
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 48BEADC8
P 5500 4600
AR Path="/48BEAFD3/48BEADC8" Ref="R?"  Part="1" 
AR Path="/48BEB1D1/48BEADC8" Ref="R?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEADC8" Ref="R56"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEADC8" Ref="R72"  Part="1" 
F 0 "R72" V 5580 4600 50  0000 C C
F 1 "6.5k" V 5500 4600 50  0000 C C
F 2 "0402" V 5400 4600 60  0000 C C
	1    5500 4600
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 48BEADC7
P 5250 5100
AR Path="/48BEAFD3/48BEADC7" Ref="C?"  Part="1" 
AR Path="/48BEB1D1/48BEADC7" Ref="C?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEADC7" Ref="C125"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEADC7" Ref="C136"  Part="1" 
F 0 "C136" H 5300 5200 50  0000 L C
F 1 "68nf" H 5300 5000 50  0000 L C
F 2 "0402" V 5100 5100 60  0000 C C
	1    5250 5100
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 48BEADC6
P 3350 4500
AR Path="/48BEAFD3/48BEADC6" Ref="R?"  Part="1" 
AR Path="/48BEB1D1/48BEADC6" Ref="R?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEADC6" Ref="R48"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEADC6" Ref="R64"  Part="1" 
F 0 "R64" V 3430 4500 50  0000 C C
F 1 "20k" V 3350 4500 50  0000 C C
F 2 "0402" V 3480 4450 60  0000 C C
	1    3350 4500
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 48BEADC5
P 4000 5550
AR Path="/48BEAFD3/48BEADC5" Ref="R?"  Part="1" 
AR Path="/48BEB1D1/48BEADC5" Ref="R?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEADC5" Ref="R52"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEADC5" Ref="R68"  Part="1" 
F 0 "R68" V 4080 5550 50  0000 C C
F 1 "47k" V 4000 5550 50  0000 C C
F 2 "0402" V 4130 5500 60  0000 C C
	1    4000 5550
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 48BEADC4
P 3450 5850
AR Path="/48BEAFD3/48BEADC4" Ref="R?"  Part="1" 
AR Path="/48BEB1D1/48BEADC4" Ref="R?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEADC4" Ref="R50"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEADC4" Ref="R66"  Part="1" 
F 0 "R66" V 3530 5850 50  0000 C C
F 1 "33k" V 3450 5850 50  0000 C C
F 2 "0402" V 3580 5800 60  0000 C C
	1    3450 5850
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 48BEADC3
P 3100 5100
AR Path="/48BEAFD3/48BEADC3" Ref="C?"  Part="1" 
AR Path="/48BEB1D1/48BEADC3" Ref="C?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEADC3" Ref="C122"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEADC3" Ref="C133"  Part="1" 
F 0 "C133" H 3150 5200 50  0000 L C
F 1 "1uf" H 2950 5000 50  0000 L C
F 2 "0402" H 2900 5250 60  0000 C C
	1    3100 5100
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 48BEADC2
P 3100 5550
AR Path="/48BEAFD3/48BEADC2" Ref="R?"  Part="1" 
AR Path="/48BEB1D1/48BEADC2" Ref="R?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEADC2" Ref="R46"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEADC2" Ref="R62"  Part="1" 
F 0 "R62" V 3180 5550 50  0000 C C
F 1 "12.5k" V 3100 5550 50  0000 C C
F 2 "0402" V 3230 5500 60  0000 C C
	1    3100 5550
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 48BEADC1
P 2900 4800
AR Path="/48BEAFD3/48BEADC1" Ref="C?"  Part="1" 
AR Path="/48BEB1D1/48BEADC1" Ref="C?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEADC1" Ref="C120"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEADC1" Ref="C131"  Part="1" 
F 0 "C131" H 2950 4900 50  0000 L C
F 1 "1uf" H 2950 4700 50  0000 L C
F 2 "0402" H 2700 4700 60  0000 C C
	1    2900 4800
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 48BEADC0
P 2350 4800
AR Path="/48BEAFD3/48BEADC0" Ref="R?"  Part="1" 
AR Path="/48BEB1D1/48BEADC0" Ref="R?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEADC0" Ref="R44"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEADC0" Ref="R60"  Part="1" 
F 0 "R60" V 2430 4800 50  0000 C C
F 1 "3k" V 2350 4800 50  0000 C C
F 2 "0402" V 2480 4750 60  0000 C C
	1    2350 4800
	0    1    1    0   
$EndComp
$Comp
L OPA4348 U?
U 4 1 48BEADBF
P 6300 5000
AR Path="/48BEAFD3/48BEADBF" Ref="U?"  Part="4" 
AR Path="/48BEB1D1/48BEADBF" Ref="U?"  Part="4" 
AR Path="/48FFEE1B/48BEAFD3/48BEADBF" Ref="U143"  Part="4" 
AR Path="/48FFEE1B/48BEB1D1/48BEADBF" Ref="U144"  Part="4" 
F 0 "U144" H 6100 5000 60  0000 C C
F 1 "OPA4348" H 6450 5150 60  0000 C C
F 2 "TSSOP-14" H 6200 4800 60  0000 C C
	4    6300 5000
	1    0    0    -1  
$EndComp
$Comp
L OPA4348 U?
U 2 1 48BEADBE
P 6300 2550
AR Path="/48BEAFD3/48BEADBE" Ref="U?"  Part="3" 
AR Path="/48BEB1D1/48BEADBE" Ref="U?"  Part="3" 
AR Path="/48FFEE1B/48BEAFD3/48BEADBE" Ref="U143"  Part="2" 
AR Path="/48FFEE1B/48BEB1D1/48BEADBE" Ref="U144"  Part="2" 
F 0 "U144" H 6100 2550 60  0000 C C
F 1 "OPA4348" H 6600 2700 60  0000 C C
F 2 "TSSOP-14" H 6100 2750 60  0000 C C
	2    6300 2550
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 48BEAD24
P 4950 2150
AR Path="/48BEAFD3/48BEAD24" Ref="R?"  Part="1" 
AR Path="/48BEB1D1/48BEAD24" Ref="R?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEAD24" Ref="R53"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEAD24" Ref="R69"  Part="1" 
F 0 "R69" V 5030 2150 50  0000 C C
F 1 "9.2k" V 4950 2150 50  0000 C C
F 2 "0402" V 5080 2100 60  0000 C C
	1    4950 2150
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 48BEACFD
P 5950 1650
AR Path="/48BEAFD3/48BEACFD" Ref="R?"  Part="1" 
AR Path="/48BEB1D1/48BEACFD" Ref="R?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEACFD" Ref="R57"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEACFD" Ref="R73"  Part="1" 
F 0 "R73" V 6030 1650 50  0000 C C
F 1 "22k" V 5950 1650 50  0000 C C
F 2 "0402" V 5850 1650 60  0000 C C
	1    5950 1650
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 48BEACF4
P 6100 2150
AR Path="/48BEAFD3/48BEACF4" Ref="C?"  Part="1" 
AR Path="/48BEB1D1/48BEACF4" Ref="C?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEACF4" Ref="C126"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEACF4" Ref="C137"  Part="1" 
F 0 "C137" H 6150 2250 50  0000 L C
F 1 "0.01uf" V 6150 2050 50  0000 L C
F 2 "0402" V 5950 2150 60  0000 C C
	1    6100 2150
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 48BEACEB
P 5500 2150
AR Path="/48BEAFD3/48BEACEB" Ref="R?"  Part="1" 
AR Path="/48BEB1D1/48BEACEB" Ref="R?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEACEB" Ref="R55"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEACEB" Ref="R71"  Part="1" 
F 0 "R71" V 5580 2150 50  0000 C C
F 1 "6.5k" V 5500 2150 50  0000 C C
F 2 "0402" V 5400 2150 60  0000 C C
	1    5500 2150
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 48BEACE2
P 5250 2650
AR Path="/48BEAFD3/48BEACE2" Ref="C?"  Part="1" 
AR Path="/48BEB1D1/48BEACE2" Ref="C?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEACE2" Ref="C124"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEACE2" Ref="C135"  Part="1" 
F 0 "C135" H 5300 2750 50  0000 L C
F 1 "68nf" H 5300 2550 50  0000 L C
F 2 "0402" V 5100 2650 60  0000 C C
	1    5250 2650
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 48BEAC87
P 3350 2050
AR Path="/48BEAFD3/48BEAC87" Ref="R?"  Part="1" 
AR Path="/48BEB1D1/48BEAC87" Ref="R?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEAC87" Ref="R47"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEAC87" Ref="R63"  Part="1" 
F 0 "R63" V 3430 2050 50  0000 C C
F 1 "20k" V 3350 2050 50  0000 C C
F 2 "0402" V 3480 2000 60  0000 C C
	1    3350 2050
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 48BEAC39
P 4000 3100
AR Path="/48BEAFD3/48BEAC39" Ref="R?"  Part="1" 
AR Path="/48BEB1D1/48BEAC39" Ref="R?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEAC39" Ref="R51"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEAC39" Ref="R67"  Part="1" 
F 0 "R67" V 4080 3100 50  0000 C C
F 1 "47k" V 4000 3100 50  0000 C C
F 2 "0402" V 4130 3050 60  0000 C C
	1    4000 3100
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 48BEAC32
P 3450 3400
AR Path="/48BEAFD3/48BEAC32" Ref="R?"  Part="1" 
AR Path="/48BEB1D1/48BEAC32" Ref="R?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEAC32" Ref="R49"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEAC32" Ref="R65"  Part="1" 
F 0 "R65" V 3530 3400 50  0000 C C
F 1 "33k" V 3450 3400 50  0000 C C
F 2 "0402" V 3580 3350 60  0000 C C
	1    3450 3400
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 48BEABFB
P 3100 2650
AR Path="/48BEAFD3/48BEABFB" Ref="C?"  Part="1" 
AR Path="/48BEB1D1/48BEABFB" Ref="C?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEABFB" Ref="C121"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEABFB" Ref="C132"  Part="1" 
F 0 "C132" H 3150 2750 50  0000 L C
F 1 "1uf" H 2950 2550 50  0000 L C
F 2 "0402" H 2900 2800 60  0000 C C
	1    3100 2650
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 48BEABCE
P 3100 3100
AR Path="/48BEAFD3/48BEABCE" Ref="R?"  Part="1" 
AR Path="/48BEB1D1/48BEABCE" Ref="R?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEABCE" Ref="R45"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEABCE" Ref="R61"  Part="1" 
F 0 "R61" V 3180 3100 50  0000 C C
F 1 "12.5k" V 3100 3100 50  0000 C C
F 2 "0402" V 3230 3050 60  0000 C C
	1    3100 3100
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 48BEAB98
P 2900 2350
AR Path="/48BEAFD3/48BEAB98" Ref="C?"  Part="1" 
AR Path="/48BEB1D1/48BEAB98" Ref="C?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEAB98" Ref="C119"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEAB98" Ref="C130"  Part="1" 
F 0 "C130" H 2950 2450 50  0000 L C
F 1 "1uf" H 2950 2250 50  0000 L C
F 2 "0402" H 2700 2250 60  0000 C C
	1    2900 2350
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 48BEAB89
P 2350 2350
AR Path="/48BEAFD3/48BEAB89" Ref="R?"  Part="1" 
AR Path="/48BEB1D1/48BEAB89" Ref="R?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEAB89" Ref="R43"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEAB89" Ref="R59"  Part="1" 
F 0 "R59" V 2430 2350 50  0000 C C
F 1 "3k" V 2350 2350 50  0000 C C
F 2 "0402" V 2250 2350 60  0000 C C
	1    2350 2350
	0    1    1    0   
$EndComp
$Comp
L OPA4348 U?
U 3 1 48BEA6C1
P 4000 5000
AR Path="/48BEAFD3/48BEA6C1" Ref="U?"  Part="2" 
AR Path="/48BEB1D1/48BEA6C1" Ref="U?"  Part="2" 
AR Path="/48FFEE1B/48BEAFD3/48BEA6C1" Ref="U143"  Part="3" 
AR Path="/48FFEE1B/48BEB1D1/48BEA6C1" Ref="U144"  Part="3" 
F 0 "U144" H 3800 5000 60  0000 C C
F 1 "OPA4348" H 4150 5150 60  0000 C C
F 2 "TSSOP-14" H 3900 4750 60  0000 C C
	3    4000 5000
	1    0    0    -1  
$EndComp
$Comp
L OPA4348 U?
U 1 1 48BEA6BC
P 4000 2550
AR Path="/48BEAFD3/48BEA6BC" Ref="U?"  Part="1" 
AR Path="/48BEB1D1/48BEA6BC" Ref="U?"  Part="1" 
AR Path="/48FFEE1B/48BEAFD3/48BEA6BC" Ref="U143"  Part="1" 
AR Path="/48FFEE1B/48BEB1D1/48BEA6BC" Ref="U144"  Part="1" 
F 0 "U144" H 3800 2550 60  0000 C C
F 1 "OPA4348" H 4300 2700 60  0000 C C
F 2 "TSSOP-14" H 3700 2750 60  0000 C C
	1    4000 2550
	1    0    0    -1  
$EndComp
Text HLabel 6950 5000 2    60   Input
Out2
Text HLabel 1950 4800 0    60   Input
In2
Text HLabel 1950 2350 0    60   Input
In1
Text HLabel 4250 2900 2    60   Input
Analog_GND
Text HLabel 8500 3650 2    60   Input
Vdd/2
Text HLabel 6950 2550 2    60   Input
Out1
Text HLabel 4250 1500 2    60   Input
Analog_Vdd
$EndSCHEMATC
