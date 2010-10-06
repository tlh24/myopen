EESchema Schematic File Version 2  date Wed 06 Oct 2010 04:34:18 PM EDT
LIBS:power
LIBS:device
LIBS:emg_sym
LIBS:linear
LIBS:stage6-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 2 15
Title ""
Date "6 oct 2010"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L VDD #PWR?
U 1 1 4CACDD2B
P 6100 3000
F 0 "#PWR?" H 6100 3100 30  0001 C CNN
F 1 "VDD" H 6100 3110 30  0000 C CNN
	1    6100 3000
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR?
U 1 1 4CACDD1E
P 1700 2350
F 0 "#PWR?" H 1700 2450 30  0001 C CNN
F 1 "VDD" H 1700 2460 30  0000 C CNN
	1    1700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3100 1700 3100
Wire Wire Line
	6950 3400 6950 3300
Connection ~ 2650 2350
Connection ~ 1700 2550
Wire Wire Line
	1900 2550 1700 2550
Connection ~ 5000 3000
Wire Wire Line
	6550 2950 6550 2800
Wire Wire Line
	6550 2800 5000 2800
Wire Wire Line
	5000 2800 5000 3100
Wire Wire Line
	6950 3300 7100 3300
Wire Wire Line
	7100 3300 7100 3200
Wire Wire Line
	7100 3200 7200 3200
Connection ~ 7750 3650
Wire Wire Line
	7750 3550 7750 3650
Connection ~ 7200 3650
Wire Wire Line
	7950 3550 7950 3650
Wire Wire Line
	7950 3650 7200 3650
Wire Wire Line
	5050 3300 5000 3300
Wire Wire Line
	5050 3200 4900 3200
Wire Wire Line
	4900 3200 4900 3000
Wire Wire Line
	4900 3000 4500 3000
Wire Wire Line
	3900 3300 4000 3300
Wire Wire Line
	3900 3000 4000 3000
Wire Wire Line
	4500 3500 4500 3550
Wire Wire Line
	6100 3400 6100 3450
Connection ~ 2150 3100
Connection ~ 1700 3100
Wire Wire Line
	5850 3100 5900 3100
Wire Wire Line
	5900 3100 5900 3200
Wire Wire Line
	1700 3500 1700 3550
Wire Wire Line
	2150 3500 2150 3550
Wire Wire Line
	5000 3100 5050 3100
Wire Wire Line
	5000 3000 5050 3000
Wire Wire Line
	5850 3000 6100 3000
Wire Wire Line
	3900 3100 4000 3100
Wire Wire Line
	4500 2600 4500 2550
Wire Wire Line
	3900 3200 3950 3200
Wire Wire Line
	3950 3200 3950 3300
Connection ~ 3950 3300
Wire Wire Line
	4500 3100 4750 3100
Wire Wire Line
	4750 3100 4750 3650
Wire Wire Line
	4750 3650 5850 3650
Wire Wire Line
	5850 3650 5850 3300
Wire Wire Line
	7200 3350 7200 3700
Wire Wire Line
	7850 3550 7850 3650
Connection ~ 7850 3650
Wire Wire Line
	7100 2950 6950 2950
Wire Wire Line
	7100 2950 7100 3050
Wire Wire Line
	7100 3050 7200 3050
Wire Wire Line
	5850 3200 6550 3200
Wire Wire Line
	6550 3200 6550 3300
Connection ~ 5900 3200
Wire Wire Line
	1700 3100 1700 2350
Wire Wire Line
	1700 2350 1900 2350
Wire Wire Line
	1900 2450 1850 2450
Wire Wire Line
	2500 2350 2900 2350
Wire Wire Line
	2900 2350 2900 3000
Wire Wire Line
	6950 2950 6950 2850
$Comp
L GND #PWR0123
U 1 1 4CA4FCDF
P 1300 2550
AR Path="/4CA4D1A0/4CA4FCDF" Ref="#PWR0123"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4FCDF" Ref="#PWR0254"  Part="1" 
F 0 "#PWR0123" H 1300 2550 30  0001 C CNN
F 1 "GND" H 1300 2480 30  0001 C CNN
	1    1300 2550
	0    1    1    0   
$EndComp
$Comp
L C C246
U 1 1 4CA4FCDA
P 1500 2550
AR Path="/4CA4D1A0/4CA4FCDA" Ref="C246"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4FCDA" Ref="C247"  Part="1" 
F 0 "C246" H 1550 2650 50  0000 L CNN
F 1 "0.1uf" H 1550 2450 50  0000 L CNN
F 2 "0402" H 1600 2700 60  0001 C CNN
	1    1500 2550
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0124
U 1 1 4CA4E84E
P 6950 3900
AR Path="/4CA4D1A0/4CA4E84E" Ref="#PWR0124"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E84E" Ref="#PWR0255"  Part="1" 
F 0 "#PWR0124" H 6950 3900 30  0001 C CNN
F 1 "GND" H 6950 3830 30  0001 C CNN
	1    6950 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0125
U 1 1 4CA4E84C
P 6950 2350
AR Path="/4CA4D1A0/4CA4E84C" Ref="#PWR0125"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E84C" Ref="#PWR0256"  Part="1" 
F 0 "#PWR0125" H 6950 2350 30  0001 C CNN
F 1 "GND" H 6950 2280 30  0001 C CNN
	1    6950 2350
	-1   0    0    1   
$EndComp
$Comp
L R R198
U 1 1 4CA4E848
P 6950 2600
AR Path="/4CA4D1A0/4CA4E848" Ref="R198"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E848" Ref="R203"  Part="1" 
F 0 "R198" V 7030 2600 50  0000 C CNN
F 1 "5k" V 6950 2600 50  0000 C CNN
F 2 "0402" V 7080 2550 60  0001 C CNN
	1    6950 2600
	-1   0    0    1   
$EndComp
$Comp
L R R199
U 1 1 4CA4E841
P 6950 3650
AR Path="/4CA4D1A0/4CA4E841" Ref="R199"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E841" Ref="R204"  Part="1" 
F 0 "R199" V 7030 3650 50  0000 C CNN
F 1 "5k" V 6950 3650 50  0000 C CNN
F 2 "0402" V 7080 3600 60  0001 C CNN
	1    6950 3650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR0126
U 1 1 4CA4E7B7
P 2650 2750
AR Path="/4CA4D1A0/4CA4E7B7" Ref="#PWR0126"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E7B7" Ref="#PWR0257"  Part="1" 
F 0 "#PWR0126" H 2650 2750 30  0001 C CNN
F 1 "GND" H 2650 2680 30  0001 C CNN
	1    2650 2750
	1    0    0    -1  
$EndComp
$Comp
L C C228
U 1 1 4CA4E79D
P 2650 2550
AR Path="/4CA4D1A0/4CA4E79D" Ref="C228"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E79D" Ref="C238"  Part="1" 
F 0 "C228" H 2700 2650 50  0000 L CNN
F 1 "1uf" H 2700 2450 50  0000 L CNN
F 2 "0402" H 2750 2700 60  0001 C CNN
	1    2650 2550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0127
U 1 1 4CA4E788
P 1850 2450
AR Path="/4CA4D1A0/4CA4E788" Ref="#PWR0127"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E788" Ref="#PWR0258"  Part="1" 
F 0 "#PWR0127" H 1850 2450 30  0001 C CNN
F 1 "GND" H 1850 2380 30  0001 C CNN
	1    1850 2450
	0    1    1    0   
$EndComp
$Comp
L MIC5365 U94
U 1 1 4CA4E776
P 2200 2450
AR Path="/4CA4D1A0/4CA4E776" Ref="U94"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E776" Ref="U98"  Part="1" 
F 0 "U94" H 2200 2250 60  0000 C CNN
F 1 "MIC5365-2.5" H 2200 2650 60  0000 C CNN
F 2 "SC-70-5" H 2140 2190 60  0000 C CNN
	1    2200 2450
	1    0    0    -1  
$EndComp
$Comp
L C C235
U 1 1 4CA4E6EE
P 6750 3300
AR Path="/4CA4D1A0/4CA4E6EE" Ref="C235"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E6EE" Ref="C245"  Part="1" 
F 0 "C235" H 6800 3400 50  0000 L CNN
F 1 "200uf" H 6800 3200 50  0000 L CNN
F 2 "2917" H 6850 3450 60  0000 C CNN
	1    6750 3300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0128
U 1 1 4CA4E6A8
P 7200 3700
AR Path="/4CA4D1A0/4CA4E6A8" Ref="#PWR0128"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E6A8" Ref="#PWR0259"  Part="1" 
F 0 "#PWR0128" H 7200 3700 30  0001 C CNN
F 1 "GND" H 7200 3630 30  0001 C CNN
	1    7200 3700
	1    0    0    -1  
$EndComp
$Comp
L C C234
U 1 1 4CA4E661
P 6750 2950
AR Path="/4CA4D1A0/4CA4E661" Ref="C234"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E661" Ref="C244"  Part="1" 
F 0 "C234" H 6800 3050 50  0000 L CNN
F 1 "200uf" H 6800 2850 50  0000 L CNN
F 2 "2917" H 6850 3100 60  0000 C CNN
	1    6750 2950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0129
U 1 1 4CA4E652
P 5000 3300
AR Path="/4CA4D1A0/4CA4E652" Ref="#PWR0129"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E652" Ref="#PWR0260"  Part="1" 
F 0 "#PWR0129" H 5000 3300 30  0001 C CNN
F 1 "GND" H 5000 3230 30  0001 C CNN
	1    5000 3300
	0    1    1    0   
$EndComp
Text Label 3900 3400 0    60   ~ 0
Vin+
$Comp
L GND #PWR0130
U 1 1 4CA4E5F5
P 4000 3300
AR Path="/4CA4D1A0/4CA4E5F5" Ref="#PWR0130"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E5F5" Ref="#PWR0261"  Part="1" 
F 0 "#PWR0130" H 4000 3300 30  0001 C CNN
F 1 "GND" H 4000 3230 30  0001 C CNN
	1    4000 3300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR0131
U 1 1 4CA4E5B2
P 4500 2550
AR Path="/4CA4D1A0/4CA4E5B2" Ref="#PWR0131"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E5B2" Ref="#PWR0262"  Part="1" 
F 0 "#PWR0131" H 4500 2550 30  0001 C CNN
F 1 "GND" H 4500 2480 30  0001 C CNN
	1    4500 2550
	-1   0    0    1   
$EndComp
$Comp
L R R195
U 1 1 4CA4E5B0
P 4250 3000
AR Path="/4CA4D1A0/4CA4E5B0" Ref="R195"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E5B0" Ref="R200"  Part="1" 
F 0 "R195" V 4330 3000 50  0000 C CNN
F 1 "5k" V 4250 2950 50  0000 C CNN
F 2 "0402" V 4380 2950 60  0001 C CNN
	1    4250 3000
	0    1    1    0   
$EndComp
$Comp
L C C229
U 1 1 4CA4E5AF
P 4500 2800
AR Path="/4CA4D1A0/4CA4E5AF" Ref="C229"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E5AF" Ref="C239"  Part="1" 
F 0 "C229" H 4550 2900 50  0000 L CNN
F 1 "1nf" H 4550 2700 50  0000 L CNN
F 2 "0402" H 4600 2950 60  0001 C CNN
	1    4500 2800
	1    0    0    -1  
$EndComp
$Comp
L R R197
U 1 1 4CA4E5AB
P 4250 3100
AR Path="/4CA4D1A0/4CA4E5AB" Ref="R197"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E5AB" Ref="R202"  Part="1" 
F 0 "R197" V 4330 3100 50  0000 C CNN
F 1 "5k" V 4250 3100 50  0000 C CNN
F 2 "0402" V 4380 3050 60  0001 C CNN
	1    4250 3100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0132
U 1 1 4CA4E5AA
P 4500 3550
AR Path="/4CA4D1A0/4CA4E5AA" Ref="#PWR0132"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E5AA" Ref="#PWR0263"  Part="1" 
F 0 "#PWR0132" H 4500 3550 30  0001 C CNN
F 1 "GND" H 4500 3480 30  0001 C CNN
	1    4500 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0133
U 1 1 4CA4E599
P 4500 3550
AR Path="/4CA4D1A0/4CA4E599" Ref="#PWR0133"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E599" Ref="#PWR0264"  Part="1" 
F 0 "#PWR0133" H 4500 3550 30  0001 C CNN
F 1 "GND" H 4500 3480 30  0001 C CNN
	1    4500 3550
	1    0    0    -1  
$EndComp
$Comp
L C C231
U 1 1 4CA4E4D2
P 4500 3300
AR Path="/4CA4D1A0/4CA4E4D2" Ref="C231"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E4D2" Ref="C241"  Part="1" 
F 0 "C231" H 4550 3400 50  0000 L CNN
F 1 "1nf" H 4550 3200 50  0000 L CNN
F 2 "0402" H 4600 3450 60  0001 C CNN
	1    4500 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0134
U 1 1 4CA4E4BA
P 6100 3450
AR Path="/4CA4D1A0/4CA4E4BA" Ref="#PWR0134"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E4BA" Ref="#PWR0265"  Part="1" 
F 0 "#PWR0134" H 6100 3450 30  0001 C CNN
F 1 "GND" H 6100 3380 30  0001 C CNN
	1    6100 3450
	1    0    0    -1  
$EndComp
$Comp
L C C233
U 1 1 4CA4E4AF
P 6100 3200
AR Path="/4CA4D1A0/4CA4E4AF" Ref="C233"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E4AF" Ref="C243"  Part="1" 
F 0 "C233" H 6150 3300 50  0000 L CNN
F 1 "1uf" H 6150 3100 50  0000 L CNN
F 2 "0402" H 6200 3350 60  0001 C CNN
	1    6100 3200
	1    0    0    -1  
$EndComp
Text Label 1700 3100 0    60   ~ 0
Vin+
$Comp
L GND #PWR0135
U 1 1 4CA4E458
P 2150 3550
AR Path="/4CA4D1A0/4CA4E458" Ref="#PWR0135"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E458" Ref="#PWR0266"  Part="1" 
F 0 "#PWR0135" H 2150 3550 30  0001 C CNN
F 1 "GND" H 2150 3480 30  0001 C CNN
	1    2150 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0136
U 1 1 4CA4E455
P 1700 3550
AR Path="/4CA4D1A0/4CA4E455" Ref="#PWR0136"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E455" Ref="#PWR0267"  Part="1" 
F 0 "#PWR0136" H 1700 3550 30  0001 C CNN
F 1 "GND" H 1700 3480 30  0001 C CNN
	1    1700 3550
	1    0    0    -1  
$EndComp
$Comp
L C C226
U 1 1 4CA4E420
P 1700 3300
AR Path="/4CA4D1A0/4CA4E420" Ref="C226"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E420" Ref="C236"  Part="1" 
F 0 "C226" H 1750 3400 50  0000 L CNN
F 1 "0.1uf" H 1750 3200 50  0000 L CNN
F 2 "0402" H 1800 3450 60  0001 C CNN
	1    1700 3300
	1    0    0    -1  
$EndComp
$Comp
L C C227
U 1 1 4CA4E411
P 2150 3300
AR Path="/4CA4D1A0/4CA4E411" Ref="C227"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E411" Ref="C237"  Part="1" 
F 0 "C227" H 2200 3400 50  0000 L CNN
F 1 "10uf" H 2200 3200 50  0000 L CNN
F 2 "0603" H 2250 3450 60  0000 C CNN
	1    2150 3300
	1    0    0    -1  
$EndComp
Text HLabel 2900 3200 0    60   Input ~ 0
DTPRI
Text HLabel 2900 3400 0    60   Input ~ 0
TFS
Text HLabel 2900 3300 0    60   Input ~ 0
TCLK
$Comp
L AD5663 U95
U 1 1 4CA4E36F
P 3400 3200
AR Path="/4CA4D1A0/4CA4E36F" Ref="U95"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4E36F" Ref="U99"  Part="1" 
F 0 "U95" H 3400 2900 60  0000 C CNN
F 1 "AD5663" H 3400 3500 60  0000 C CNN
F 2 "MSOP-10" H 3400 2800 60  0000 C CNN
	1    3400 3200
	-1   0    0    -1  
$EndComp
$Comp
L AUDIO_JACK U97
U 1 1 4CA4D229
P 7650 3250
AR Path="/4CA4D1A0/4CA4D229" Ref="U97"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4D229" Ref="U101"  Part="1" 
F 0 "U97" H 8100 3150 60  0000 C CNN
F 1 "AUDIO_JACK" H 7650 3550 60  0000 C CNN
F 2 "SJ1-3533" H 7650 3250 60  0000 C CNN
	1    7650 3250
	-1   0    0    -1  
$EndComp
$Comp
L LM4808 U96
U 1 1 4CA4D1DD
P 5450 3150
AR Path="/4CA4D1A0/4CA4D1DD" Ref="U96"  Part="1" 
AR Path="/4C9BA165/4CA4ED02/4CA4D1DD" Ref="U100"  Part="1" 
F 0 "U96" H 5450 2900 60  0000 C CNN
F 1 "LM4808" H 5450 3400 60  0000 C CNN
F 2 "SOIC-8" H 5390 2840 60  0000 C CNN
	1    5450 3150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
