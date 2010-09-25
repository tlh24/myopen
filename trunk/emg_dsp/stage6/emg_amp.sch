EESchema Schematic File Version 2  date Fri 24 Sep 2010 11:59:53 PM EDT
LIBS:power
LIBS:device
LIBS:emg_sym
LIBS:linear
LIBS:stage6-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 10 13
Title "Stage 4 / Copyright 2010 Timothy L Hanson "
Date "25 sep 2010"
Rev ""
Comp "This design is free: redistribute or modify under the GPL v. 3 or later"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5450 4100 5600 4100
Wire Wire Line
	5600 4100 5600 3650
Wire Wire Line
	5450 3650 5250 3650
Wire Wire Line
	6650 2900 6650 3550
Wire Wire Line
	6650 2900 5250 2900
Wire Wire Line
	6100 3200 6100 2700
Wire Wire Line
	6550 4100 6100 4100
Wire Wire Line
	4450 4600 4450 4650
Wire Wire Line
	2750 4000 2750 3750
Wire Wire Line
	3700 2300 3700 2200
Connection ~ 4200 3150
Wire Wire Line
	4750 3200 4750 3150
Wire Wire Line
	4750 3150 3750 3150
Wire Wire Line
	3700 3650 4200 3650
Wire Wire Line
	2750 3450 2650 3450
Wire Wire Line
	2650 3450 2650 3750
Wire Wire Line
	2650 3750 2750 3750
Connection ~ 3700 2700
Wire Wire Line
	5250 2900 5250 3050
Wire Wire Line
	5450 3650 5450 3450
Connection ~ 3950 3150
Wire Wire Line
	4200 3650 4200 3600
Wire Wire Line
	3750 3150 3750 3550
Wire Wire Line
	3750 3550 3700 3550
Wire Wire Line
	1950 3400 1900 3400
Wire Wire Line
	2450 3400 2500 3400
Wire Wire Line
	2500 3400 2500 3550
Wire Wire Line
	2500 3550 2750 3550
Wire Wire Line
	2750 3650 2500 3650
Wire Wire Line
	2500 3650 2500 3800
Wire Wire Line
	2500 3800 2450 3800
Wire Wire Line
	1950 3800 1900 3800
Connection ~ 3950 3650
Wire Wire Line
	3950 4150 3950 4200
Wire Wire Line
	4200 3150 4200 3200
Wire Wire Line
	3950 4200 4450 4200
Wire Wire Line
	5250 3650 5250 3550
Wire Wire Line
	5450 3050 5450 2900
Connection ~ 5450 2900
Wire Wire Line
	3700 3450 3700 2700
Connection ~ 6100 2700
Wire Wire Line
	4750 3600 4750 3650
Wire Wire Line
	6650 3550 6800 3550
Wire Wire Line
	2750 4400 2750 4500
Wire Wire Line
	3700 3750 3700 3850
Wire Wire Line
	3950 4600 3950 4650
Wire Wire Line
	6100 4100 6100 3900
Wire Wire Line
	3700 2700 6550 2700
Wire Wire Line
	5450 3450 5600 3450
$Comp
L TP TP?
U 1 1 4C9D733B
P 1950 4000
F 0 "TP?" H 1950 4000 60  0000 C CNN
F 1 "TP" H 1800 3950 60  0000 C CNN
F 2 "TP" H 1800 3950 60  0000 C CNN
	1    1950 4000
	0    1    1    0   
$EndComp
$Comp
L TP TP?
U 1 1 4C9D732E
P 1950 3200
F 0 "TP?" H 1950 3200 60  0000 C CNN
F 1 "TP" H 1800 3150 60  0000 C CNN
F 2 "TP" H 1800 3150 60  0000 C CNN
	1    1950 3200
	0    -1   -1   0   
$EndComp
$Comp
L OPA4348 U?
U 1 1 4C9D6A40
P 6100 3550
AR Path="/4C9BA165/4C9D5FEB/4C9D6A40" Ref="U?"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4C9D6A40" Ref="U?"  Part="2" 
AR Path="/4C9BA165/4C9D6BB6/4C9D6A40" Ref="U?"  Part="2" 
AR Path="/4C9BA165/4C9D6BC3/4C9D6A40" Ref="U?"  Part="3" 
AR Path="/4C9BA165/4C9D6BC0/4C9D6A40" Ref="U?"  Part="4" 
AR Path="/4C9BA165/4C9D6C30/4C9D6A40" Ref="U?"  Part="4" 
AR Path="/4C9BA165/4C9D6C2D/4C9D6A40" Ref="U?"  Part="3" 
AR Path="/4C9BA165/4C9D6C33/4C9D6A40" Ref="U?"  Part="2" 
AR Path="/4C9BA165/4C9D6C36/4C9D6A40" Ref="U?"  Part="1" 
F 0 "U?" H 5900 3550 60  0000 C CNN
F 1 "OPA4348" H 5900 4300 60  0000 C CNN
	1    6100 3550
	1    0    0    -1  
$EndComp
Text Label 6100 4100 0    60   ~ 0
VN
Text Label 2750 4000 0    60   ~ 0
VN
Text HLabel 5450 4100 0    60   Input ~ 0
VREF
$Comp
L GND #PWR?
U 1 1 4C9D684F
P 4450 4650
AR Path="/4C9BA165/4C9D6AD6/4C9D684F" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D5FEB/4C9D684F" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4C9D684F" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4C9D684F" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4C9D684F" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4C9D684F" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4C9D684F" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4C9D684F" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4C9D684F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4450 4650 30  0001 C CNN
F 1 "GND" H 4450 4580 30  0001 C CNN
	1    4450 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4C9D6849
P 3950 4650
AR Path="/4C9BA165/4C9D5FEB/4C9D6849" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4C9D6849" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4C9D6849" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4C9D6849" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4C9D6849" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4C9D6849" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4C9D6849" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4C9D6849" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4C9D6849" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3950 4650 30  0001 C CNN
F 1 "GND" H 3950 4580 30  0001 C CNN
	1    3950 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4C9D6843
P 2750 4500
AR Path="/4C9BA165/4C9D5FEB/4C9D6843" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4C9D6843" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4C9D6843" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4C9D6843" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4C9D6843" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4C9D6843" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4C9D6843" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4C9D6843" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4C9D6843" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2750 4500 30  0001 C CNN
F 1 "GND" H 2750 4430 30  0001 C CNN
	1    2750 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4C9D681F
P 3700 3850
AR Path="/4C9BA165/4C9D5FEB/4C9D681F" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4C9D681F" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4C9D681F" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4C9D681F" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4C9D681F" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4C9D681F" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4C9D681F" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4C9D681F" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4C9D681F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3700 3850 30  0001 C CNN
F 1 "GND" H 3700 3780 30  0001 C CNN
	1    3700 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 4C9D67F5
P 3700 2200
AR Path="/4C9BA165/4C9D5FEB/4C9D67F5" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4C9D67F5" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4C9D67F5" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4C9D67F5" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4C9D67F5" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4C9D67F5" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4C9D67F5" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4C9D67F5" Ref="#PWR?"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4C9D67F5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3700 2200 30  0001 C CNN
F 1 "GND" H 3700 2130 30  0001 C CNN
	1    3700 2200
	-1   0    0    1   
$EndComp
Text HLabel 1900 3800 0    60   Input ~ 0
IN2
Text HLabel 1900 3400 0    60   Input ~ 0
IN1
$Comp
L C C216
U 1 1 4B607777
P 4750 3400
AR Path="/4B5E1FC8/4B607A5C/4B607777" Ref="C216"  Part="1" 
AR Path="/4B5E1FC8/4B6079F1/4B607777" Ref="C207"  Part="1" 
AR Path="/4B5E1FC8/4B6079DB/4B607777" Ref="C198"  Part="1" 
AR Path="/4B5E1FC8/4B5E2312/4B607777" Ref="C189"  Part="1" 
AR Path="/4C9BA165/4C9D5FEB/4B607777" Ref="C198"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4B607777" Ref="C198"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4B607777" Ref="C198"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4B607777" Ref="C198"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4B607777" Ref="C198"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4B607777" Ref="C198"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4B607777" Ref="C198"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4B607777" Ref="C198"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4B607777" Ref="C198"  Part="1" 
F 0 "C198" H 4800 3500 50  0000 L CNN
F 1 "10uf" H 4800 3300 50  0000 L CNN
F 2 "0603" H 4550 3500 60  0000 C CNN
	1    4750 3400
	-1   0    0    1   
$EndComp
Text HLabel 6800 3550 2    60   Input ~ 0
OUT
Text HLabel 6550 4100 2    60   Input ~ 0
V-
Text HLabel 6550 2700 2    60   Input ~ 0
V+
$Comp
L C C212
U 1 1 4B5E8316
P 3700 2500
AR Path="/4B5E1FC8/4B607A5C/4B5E8316" Ref="C212"  Part="1" 
AR Path="/4B5E1FC8/4B6079F1/4B5E8316" Ref="C203"  Part="1" 
AR Path="/4B5E1FC8/4B6079DB/4B5E8316" Ref="C194"  Part="1" 
AR Path="/4B5E1FC8/4B5E2312/4B5E8316" Ref="C185"  Part="1" 
AR Path="/4C9BA165/4C9D5FEB/4B5E8316" Ref="C194"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4B5E8316" Ref="C194"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4B5E8316" Ref="C194"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4B5E8316" Ref="C194"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4B5E8316" Ref="C194"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4B5E8316" Ref="C194"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4B5E8316" Ref="C194"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4B5E8316" Ref="C194"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4B5E8316" Ref="C194"  Part="1" 
F 0 "C194" H 3750 2600 50  0000 L CNN
F 1 "1uf" H 3750 2400 50  0000 L CNN
F 2 "0402" H 3950 2500 60  0000 C CNN
	1    3700 2500
	1    0    0    -1  
$EndComp
$Comp
L C C211
U 1 1 4B5E82D0
P 2750 4200
AR Path="/4B5E1FC8/4B607A5C/4B5E82D0" Ref="C211"  Part="1" 
AR Path="/4B5E1FC8/4B6079F1/4B5E82D0" Ref="C202"  Part="1" 
AR Path="/4B5E1FC8/4B6079DB/4B5E82D0" Ref="C193"  Part="1" 
AR Path="/4B5E1FC8/4B5E2312/4B5E82D0" Ref="C184"  Part="1" 
AR Path="/4C9BA165/4C9D5FEB/4B5E82D0" Ref="C193"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4B5E82D0" Ref="C193"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4B5E82D0" Ref="C193"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4B5E82D0" Ref="C193"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4B5E82D0" Ref="C193"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4B5E82D0" Ref="C193"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4B5E82D0" Ref="C193"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4B5E82D0" Ref="C193"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4B5E82D0" Ref="C193"  Part="1" 
F 0 "C193" H 2800 4300 50  0000 L CNN
F 1 "1uf" H 2800 4100 50  0000 L CNN
F 2 "0402" H 3000 4200 60  0000 C CNN
	1    2750 4200
	1    0    0    -1  
$EndComp
$Comp
L C C217
U 1 1 4B5E2EEF
P 5450 3250
AR Path="/4B5E1FC8/4B607A5C/4B5E2EEF" Ref="C217"  Part="1" 
AR Path="/4B5E1FC8/4B6079F1/4B5E2EEF" Ref="C208"  Part="1" 
AR Path="/4B5E1FC8/4B6079DB/4B5E2EEF" Ref="C199"  Part="1" 
AR Path="/4B5E1FC8/4B5E2312/4B5E2EEF" Ref="C190"  Part="1" 
AR Path="/4C9BA165/4C9D5FEB/4B5E2EEF" Ref="C199"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4B5E2EEF" Ref="C199"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4B5E2EEF" Ref="C199"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4B5E2EEF" Ref="C199"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4B5E2EEF" Ref="C199"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4B5E2EEF" Ref="C199"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4B5E2EEF" Ref="C199"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4B5E2EEF" Ref="C199"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4B5E2EEF" Ref="C199"  Part="1" 
F 0 "C199" H 5500 3350 50  0000 L CNN
F 1 "4nf" H 5500 3150 50  0000 L CNN
F 2 "0402" H 5700 3250 60  0000 C CNN
	1    5450 3250
	1    0    0    -1  
$EndComp
$Comp
L R R87
U 1 1 4B5E2EB2
P 5250 3300
AR Path="/4B5E1FC8/4B607A5C/4B5E2EB2" Ref="R87"  Part="1" 
AR Path="/4B5E1FC8/4B6079F1/4B5E2EB2" Ref="R80"  Part="1" 
AR Path="/4B5E1FC8/4B6079DB/4B5E2EB2" Ref="R73"  Part="1" 
AR Path="/4B5E1FC8/4B5E2312/4B5E2EB2" Ref="R66"  Part="1" 
AR Path="/4C9BA165/4C9D5FEB/4B5E2EB2" Ref="R73"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4B5E2EB2" Ref="R73"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4B5E2EB2" Ref="R73"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4B5E2EB2" Ref="R73"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4B5E2EB2" Ref="R73"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4B5E2EB2" Ref="R73"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4B5E2EB2" Ref="R73"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4B5E2EB2" Ref="R73"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4B5E2EB2" Ref="R73"  Part="1" 
F 0 "R73" V 5330 3300 50  0000 C CNN
F 1 "10k" V 5250 3300 50  0000 C CNN
F 2 "0402" V 5380 3250 60  0000 C CNN
	1    5250 3300
	-1   0    0    1   
$EndComp
$Comp
L R R86
U 1 1 4B5E2EA6
P 5000 3650
AR Path="/4B5E1FC8/4B607A5C/4B5E2EA6" Ref="R86"  Part="1" 
AR Path="/4B5E1FC8/4B6079F1/4B5E2EA6" Ref="R79"  Part="1" 
AR Path="/4B5E1FC8/4B6079DB/4B5E2EA6" Ref="R72"  Part="1" 
AR Path="/4B5E1FC8/4B5E2312/4B5E2EA6" Ref="R65"  Part="1" 
AR Path="/4C9BA165/4C9D5FEB/4B5E2EA6" Ref="R72"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4B5E2EA6" Ref="R72"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4B5E2EA6" Ref="R72"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4B5E2EA6" Ref="R72"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4B5E2EA6" Ref="R72"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4B5E2EA6" Ref="R72"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4B5E2EA6" Ref="R72"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4B5E2EA6" Ref="R72"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4B5E2EA6" Ref="R72"  Part="1" 
F 0 "R72" V 5080 3650 50  0000 C CNN
F 1 "10k" V 5000 3650 50  0000 C CNN
F 2 "0402" V 5130 3600 60  0000 C CNN
	1    5000 3650
	0    1    1    0   
$EndComp
Text Notes 2200 3050 0    60   ~ 0
noise-cancel rolloff at ~ 4.8kHz
Text Notes 3700 4950 0    60   ~ 0
highpass at 1.3Hz
$Comp
L C C215
U 1 1 4B5E2BEE
P 4450 4400
AR Path="/4B5E1FC8/4B607A5C/4B5E2BEE" Ref="C215"  Part="1" 
AR Path="/4B5E1FC8/4B6079F1/4B5E2BEE" Ref="C206"  Part="1" 
AR Path="/4B5E1FC8/4B6079DB/4B5E2BEE" Ref="C197"  Part="1" 
AR Path="/4B5E1FC8/4B5E2312/4B5E2BEE" Ref="C188"  Part="1" 
AR Path="/4C9BA165/4C9D5FEB/4B5E2BEE" Ref="C197"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4B5E2BEE" Ref="C197"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4B5E2BEE" Ref="C197"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4B5E2BEE" Ref="C197"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4B5E2BEE" Ref="C197"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4B5E2BEE" Ref="C197"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4B5E2BEE" Ref="C197"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4B5E2BEE" Ref="C197"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4B5E2BEE" Ref="C197"  Part="1" 
F 0 "C197" H 4500 4500 50  0000 L CNN
F 1 "22uf" H 4500 4300 50  0000 L CNN
F 2 "0805" H 4700 4400 60  0000 C CNN
	1    4450 4400
	1    0    0    -1  
$EndComp
$Comp
L C C214
U 1 1 4B5E2631
P 4200 3400
AR Path="/4B5E1FC8/4B607A5C/4B5E2631" Ref="C214"  Part="1" 
AR Path="/4B5E1FC8/4B6079F1/4B5E2631" Ref="C205"  Part="1" 
AR Path="/4B5E1FC8/4B6079DB/4B5E2631" Ref="C196"  Part="1" 
AR Path="/4B5E1FC8/4B5E2312/4B5E2631" Ref="C187"  Part="1" 
AR Path="/4C9BA165/4C9D5FEB/4B5E2631" Ref="C196"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4B5E2631" Ref="C196"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4B5E2631" Ref="C196"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4B5E2631" Ref="C196"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4B5E2631" Ref="C196"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4B5E2631" Ref="C196"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4B5E2631" Ref="C196"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4B5E2631" Ref="C196"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4B5E2631" Ref="C196"  Part="1" 
F 0 "C196" H 4250 3500 50  0000 L CNN
F 1 "180pf" H 4250 3300 50  0000 L CNN
F 2 "0402" H 4200 3100 60  0000 C CNN
	1    4200 3400
	1    0    0    -1  
$EndComp
$Comp
L C C213
U 1 1 4B5E2425
P 3950 4400
AR Path="/4B5E1FC8/4B607A5C/4B5E2425" Ref="C213"  Part="1" 
AR Path="/4B5E1FC8/4B6079F1/4B5E2425" Ref="C204"  Part="1" 
AR Path="/4B5E1FC8/4B6079DB/4B5E2425" Ref="C195"  Part="1" 
AR Path="/4B5E1FC8/4B5E2312/4B5E2425" Ref="C186"  Part="1" 
AR Path="/4C9BA165/4C9D5FEB/4B5E2425" Ref="C195"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4B5E2425" Ref="C195"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4B5E2425" Ref="C195"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4B5E2425" Ref="C195"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4B5E2425" Ref="C195"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4B5E2425" Ref="C195"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4B5E2425" Ref="C195"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4B5E2425" Ref="C195"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4B5E2425" Ref="C195"  Part="1" 
F 0 "C195" H 4000 4500 50  0000 L CNN
F 1 "22uf" H 4000 4300 50  0000 L CNN
F 2 "0805" H 4200 4400 60  0000 C CNN
	1    3950 4400
	1    0    0    -1  
$EndComp
$Comp
L R R84
U 1 1 4B5E23F1
P 3950 3400
AR Path="/4B5E1FC8/4B607A5C/4B5E23F1" Ref="R84"  Part="1" 
AR Path="/4B5E1FC8/4B6079F1/4B5E23F1" Ref="R77"  Part="1" 
AR Path="/4B5E1FC8/4B6079DB/4B5E23F1" Ref="R70"  Part="1" 
AR Path="/4B5E1FC8/4B5E2312/4B5E23F1" Ref="R63"  Part="1" 
AR Path="/4C9BA165/4C9D5FEB/4B5E23F1" Ref="R70"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4B5E23F1" Ref="R70"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4B5E23F1" Ref="R70"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4B5E23F1" Ref="R70"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4B5E23F1" Ref="R70"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4B5E23F1" Ref="R70"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4B5E23F1" Ref="R70"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4B5E23F1" Ref="R70"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4B5E23F1" Ref="R70"  Part="1" 
F 0 "R70" V 4030 3400 50  0000 C CNN
F 1 "330k" V 3950 3400 50  0000 C CNN
F 2 "0402" V 4080 3350 60  0000 C CNN
	1    3950 3400
	-1   0    0    1   
$EndComp
$Comp
L R R85
U 1 1 4B5E23EA
P 3950 3900
AR Path="/4B5E1FC8/4B607A5C/4B5E23EA" Ref="R85"  Part="1" 
AR Path="/4B5E1FC8/4B6079F1/4B5E23EA" Ref="R78"  Part="1" 
AR Path="/4B5E1FC8/4B6079DB/4B5E23EA" Ref="R71"  Part="1" 
AR Path="/4B5E1FC8/4B5E2312/4B5E23EA" Ref="R64"  Part="1" 
AR Path="/4C9BA165/4C9D5FEB/4B5E23EA" Ref="R71"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4B5E23EA" Ref="R71"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4B5E23EA" Ref="R71"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4B5E23EA" Ref="R71"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4B5E23EA" Ref="R71"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4B5E23EA" Ref="R71"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4B5E23EA" Ref="R71"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4B5E23EA" Ref="R71"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4B5E23EA" Ref="R71"  Part="1" 
F 0 "R71" V 4030 3900 50  0000 C CNN
F 1 "3.3k" V 3950 3900 50  0000 C CNN
F 2 "0402" V 4080 3850 60  0000 C CNN
	1    3950 3900
	-1   0    0    1   
$EndComp
$Comp
L R R83
U 1 1 4B5E2389
P 2200 3800
AR Path="/4B5E1FC8/4B607A5C/4B5E2389" Ref="R83"  Part="1" 
AR Path="/4B5E1FC8/4B6079F1/4B5E2389" Ref="R76"  Part="1" 
AR Path="/4B5E1FC8/4B6079DB/4B5E2389" Ref="R69"  Part="1" 
AR Path="/4B5E1FC8/4B5E2312/4B5E2389" Ref="R62"  Part="1" 
AR Path="/4C9BA165/4C9D5FEB/4B5E2389" Ref="R69"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4B5E2389" Ref="R69"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4B5E2389" Ref="R69"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4B5E2389" Ref="R69"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4B5E2389" Ref="R69"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4B5E2389" Ref="R69"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4B5E2389" Ref="R69"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4B5E2389" Ref="R69"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4B5E2389" Ref="R69"  Part="1" 
F 0 "R69" V 2280 3800 50  0000 C CNN
F 1 "10k" V 2200 3800 50  0000 C CNN
F 2 "0402" V 2330 3750 60  0000 C CNN
	1    2200 3800
	0    1    1    0   
$EndComp
$Comp
L R R82
U 1 1 4B5E236D
P 2200 3400
AR Path="/4B5E1FC8/4B607A5C/4B5E236D" Ref="R82"  Part="1" 
AR Path="/4B5E1FC8/4B6079F1/4B5E236D" Ref="R75"  Part="1" 
AR Path="/4B5E1FC8/4B6079DB/4B5E236D" Ref="R68"  Part="1" 
AR Path="/4B5E1FC8/4B5E2312/4B5E236D" Ref="R61"  Part="1" 
AR Path="/4C9BA165/4C9D5FEB/4B5E236D" Ref="R68"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4B5E236D" Ref="R68"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4B5E236D" Ref="R68"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4B5E236D" Ref="R68"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4B5E236D" Ref="R68"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4B5E236D" Ref="R68"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4B5E236D" Ref="R68"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4B5E236D" Ref="R68"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4B5E236D" Ref="R68"  Part="1" 
F 0 "R68" V 2280 3400 50  0000 C CNN
F 1 "10k" V 2200 3400 50  0000 C CNN
F 2 "0402" V 2330 3350 60  0000 C CNN
	1    2200 3400
	0    1    1    0   
$EndComp
$Comp
L MAX4208 U183
U 1 1 4B5E2341
P 3200 3600
AR Path="/4B5E1FC8/4B607A5C/4B5E2341" Ref="U183"  Part="1" 
AR Path="/4B5E1FC8/4B6079F1/4B5E2341" Ref="U180"  Part="1" 
AR Path="/4B5E1FC8/4B6079DB/4B5E2341" Ref="U177"  Part="1" 
AR Path="/4B5E1FC8/4B5E2312/4B5E2341" Ref="U174"  Part="1" 
AR Path="/4C9BA165/4C9D5FEB/4B5E2341" Ref="U177"  Part="1" 
AR Path="/4C9BA165/4C9D6AD6/4B5E2341" Ref="U177"  Part="1" 
AR Path="/4C9BA165/4C9D6BB6/4B5E2341" Ref="U177"  Part="1" 
AR Path="/4C9BA165/4C9D6BC3/4B5E2341" Ref="U177"  Part="1" 
AR Path="/4C9BA165/4C9D6BC0/4B5E2341" Ref="U177"  Part="1" 
AR Path="/4C9BA165/4C9D6C30/4B5E2341" Ref="U177"  Part="1" 
AR Path="/4C9BA165/4C9D6C2D/4B5E2341" Ref="U177"  Part="1" 
AR Path="/4C9BA165/4C9D6C33/4B5E2341" Ref="U177"  Part="1" 
AR Path="/4C9BA165/4C9D6C36/4B5E2341" Ref="U177"  Part="1" 
F 0 "U177" H 3200 3350 60  0000 C CNN
F 1 "MAX4208" H 3250 3850 60  0000 C CNN
F 2 "MSOP-8" H 3140 3290 60  0000 C CNN
	1    3200 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
