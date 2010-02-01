EESchema Schematic File Version 2  date Sun 31 Jan 2010 07:35:14 PM EST
LIBS:power,device,emg_sym,./stage4.cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 6 39
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2100 5050 2100 4600
Connection ~ 6600 3950
Wire Wire Line
	6600 3950 7050 3950
Wire Wire Line
	7050 3950 7050 4000
Connection ~ 6250 5150
Wire Wire Line
	6250 5100 6250 5150
Connection ~ 7400 4600
Wire Wire Line
	8650 3700 8650 4600
Connection ~ 8650 3850
Wire Wire Line
	8650 3850 8550 3850
Wire Wire Line
	6200 3550 7100 3550
Connection ~ 6700 3550
Connection ~ 6700 5150
Wire Wire Line
	7600 4000 7600 5150
Wire Wire Line
	4750 3600 4750 3650
Wire Wire Line
	6700 5150 6700 5050
Wire Wire Line
	6700 3550 6700 3700
Connection ~ 6600 2700
Connection ~ 6600 4600
Connection ~ 5550 4600
Wire Wire Line
	6050 4600 6050 4400
Connection ~ 5900 2700
Wire Wire Line
	6600 2700 6600 4000
Connection ~ 3400 4600
Wire Wire Line
	3400 4450 3400 4600
Wire Wire Line
	2900 4050 2750 4050
Connection ~ 2750 4050
Wire Wire Line
	5900 2700 5900 3100
Wire Wire Line
	3700 2700 3700 3450
Connection ~ 5450 2900
Wire Wire Line
	5450 3050 5450 2900
Wire Wire Line
	5550 4600 5550 3450
Wire Wire Line
	5550 3450 5600 3450
Wire Wire Line
	5600 3650 5250 3650
Connection ~ 4450 4600
Wire Wire Line
	5250 3650 5250 3550
Wire Wire Line
	4450 4200 3950 4200
Wire Wire Line
	4200 3150 4200 3200
Wire Wire Line
	3950 4200 3950 4150
Connection ~ 3950 3650
Wire Wire Line
	1950 3800 1900 3800
Wire Wire Line
	2450 3800 2500 3800
Wire Wire Line
	2500 3800 2500 3650
Wire Wire Line
	2500 3650 2750 3650
Wire Wire Line
	2750 3550 2500 3550
Wire Wire Line
	2500 3550 2500 3400
Wire Wire Line
	2500 3400 2450 3400
Wire Wire Line
	1950 3400 1900 3400
Wire Wire Line
	3700 3550 3750 3550
Wire Wire Line
	3750 3550 3750 3150
Wire Wire Line
	3700 4600 3700 3750
Wire Wire Line
	4200 3600 4200 3650
Connection ~ 3950 3150
Connection ~ 3950 4600
Wire Wire Line
	5450 3450 5450 3650
Connection ~ 5450 3650
Wire Wire Line
	6200 3550 6200 2900
Wire Wire Line
	6200 2900 5250 2900
Wire Wire Line
	5250 2900 5250 3050
Wire Wire Line
	2750 3750 2750 5150
Wire Wire Line
	5900 5150 5900 4000
Connection ~ 3700 4600
Wire Wire Line
	2900 4600 2900 4450
Wire Wire Line
	3400 4050 3400 2700
Connection ~ 3700 2700
Wire Wire Line
	5900 4000 6050 4000
Wire Wire Line
	6600 4600 6600 4400
Connection ~ 6050 4600
Connection ~ 5900 5150
Wire Wire Line
	6700 2700 6700 2900
Wire Wire Line
	6700 4600 6700 4500
Connection ~ 2900 4600
Wire Wire Line
	2750 3750 2650 3750
Wire Wire Line
	2650 3750 2650 3450
Wire Wire Line
	2650 3450 2750 3450
Wire Wire Line
	4200 3650 3700 3650
Wire Wire Line
	3750 3150 4750 3150
Wire Wire Line
	4750 3150 4750 3200
Connection ~ 4200 3150
Wire Wire Line
	3400 2700 7600 2700
Wire Wire Line
	7600 2700 7600 3550
Connection ~ 6700 2700
Wire Wire Line
	7400 4600 7400 3850
Wire Wire Line
	7400 3850 7600 3850
Connection ~ 6700 4600
Wire Wire Line
	7100 3550 7100 3700
Wire Wire Line
	8650 3700 8550 3700
Connection ~ 7600 5150
Wire Wire Line
	2750 5150 7600 5150
Wire Wire Line
	6250 4700 6250 4600
Connection ~ 6250 4600
Wire Wire Line
	7050 4400 7050 4600
Connection ~ 7050 4600
Wire Wire Line
	8650 4600 2100 4600
$Comp
L TP TP?
U 1 1 4B608417
P 1900 5050
F 0 "TP?" H 1900 5050 60  0000 C CNN
F 1 "V0" H 2100 5050 60  0000 C CNN
F 2 "TP" H 1750 5000 60  0000 C CNN
	1    1900 5050
	-1   0    0    1   
$EndComp
Text Notes 8800 4000 0    60   ~ 0
e.g. those used in small portable mice
Text Notes 8800 3900 0    60   ~ 0
need to find some very thin USB cable for this 
$Comp
L ZENER D?
U 1 1 4B608142
P 7050 4200
F 0 "D?" H 7050 4350 50  0000 C CNN
F 1 "uclamp33" H 7050 4050 40  0000 C CNN
F 2 "SOD-523" H 7000 4400 60  0000 C CNN
	1    7050 4200
	0    1    1    0   
$EndComp
$Comp
L ZENER D?
U 1 1 4B608130
P 6250 4900
F 0 "D?" H 6250 5050 50  0000 C CNN
F 1 "uclamp33" H 6250 4750 40  0000 C CNN
F 2 "SOD-523" H 6200 5100 60  0000 C CNN
	1    6250 4900
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 4B607E53
P 7350 3700
F 0 "R?" V 7430 3700 50  0000 C CNN
F 1 "33" V 7350 3700 50  0000 C CNN
F 2 "0402" V 7480 3650 60  0000 C CNN
	1    7350 3700
	0    1    1    0   
$EndComp
Text Notes 8800 3800 0    60   ~ 0
but it's easy!
Text Notes 8800 3700 0    60   ~ 0
to reuse the USB A connector here..
Text Notes 8800 3600 0    60   ~ 0
yea, I know it's not a good idea 
$Comp
L FCI_USB_B U?
U 1 1 4B607B9C
P 8050 3800
F 0 "U?" H 8000 3200 60  0000 C CNN
F 1 "FCI_USB_B" H 8000 3200 60  0000 C CNN
F 2 "FCI_USB_A" H 8050 3450 60  0000 C CNN
	1    8050 3800
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B607777
P 4750 3400
F 0 "C?" H 4800 3500 50  0000 L CNN
F 1 "10uf" H 4800 3300 50  0000 L CNN
F 2 "0603" H 4550 3500 60  0000 C CNN
	1    4750 3400
	-1   0    0    1   
$EndComp
$Comp
L TP TP?
U 1 1 4B5E8458
P 1900 4800
F 0 "TP?" H 1900 4800 60  0000 C CNN
F 1 "V0" H 2100 4800 60  0000 C CNN
F 2 "TP" H 1750 4750 60  0000 C CNN
	1    1900 4800
	-1   0    0    1   
$EndComp
$Comp
L TP TP?
U 1 1 4B5E8450
P 1900 4600
F 0 "TP?" H 1900 4600 60  0000 C CNN
F 1 "V0" H 2100 4600 60  0000 C CNN
F 2 "TP" H 1750 4550 60  0000 C CNN
	1    1900 4600
	-1   0    0    1   
$EndComp
Text HLabel 6700 3700 2    60   Input ~ 0
OUT
Text HLabel 6700 4500 2    60   Input ~ 0
V0
Text HLabel 6700 5050 2    60   Input ~ 0
V-
Text HLabel 6700 2900 2    60   Input ~ 0
V+
$Comp
L TP TP?
U 1 1 4B5E83BB
P 6900 2700
F 0 "TP?" H 6900 2700 60  0000 C CNN
F 1 "V+" H 7100 2700 60  0000 C CNN
F 2 "TP" H 6750 2650 60  0000 C CNN
	1    6900 2700
	1    0    0    -1  
$EndComp
$Comp
L TP TP?
U 1 1 4B5E83A8
P 6900 5150
F 0 "TP?" H 6900 5150 60  0000 C CNN
F 1 "V-" H 7100 5150 60  0000 C CNN
F 2 "TP" H 6750 5100 60  0000 C CNN
	1    6900 5150
	1    0    0    -1  
$EndComp
$Comp
L TP TP?
U 1 1 4B5E8390
P 6900 4600
F 0 "TP?" H 6900 4600 60  0000 C CNN
F 1 "V0" H 7100 4600 60  0000 C CNN
F 2 "TP" H 6750 4550 60  0000 C CNN
	1    6900 4600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B5E837A
P 6600 4200
F 0 "C?" H 6650 4300 50  0000 L CNN
F 1 "1uf" H 6650 4100 50  0000 L CNN
F 2 "0402" H 6850 4200 60  0000 C CNN
	1    6600 4200
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B5E8374
P 6050 4200
F 0 "C?" H 6100 4300 50  0000 L CNN
F 1 "1uf" H 6100 4100 50  0000 L CNN
F 2 "0402" H 6300 4200 60  0000 C CNN
	1    6050 4200
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B5E8316
P 3400 4250
F 0 "C?" H 3450 4350 50  0000 L CNN
F 1 "1uf" H 3450 4150 50  0000 L CNN
F 2 "0402" H 3650 4250 60  0000 C CNN
	1    3400 4250
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B5E82D0
P 2900 4250
F 0 "C?" H 2950 4350 50  0000 L CNN
F 1 "1uf" H 2950 4150 50  0000 L CNN
F 2 "0402" H 3150 4250 60  0000 C CNN
	1    2900 4250
	1    0    0    -1  
$EndComp
$Comp
L TP TP?
U 1 1 4B5E82A4
P 6900 3550
F 0 "TP?" H 6900 3550 60  0000 C CNN
F 1 "OUT" H 7100 3550 60  0000 C CNN
F 2 "TP" H 6750 3500 60  0000 C CNN
	1    6900 3550
	1    0    0    -1  
$EndComp
$Comp
L OPA348 U?
U 1 1 4B5E81FC
P 5850 3550
F 0 "U?" H 6050 3400 60  0000 C CNN
F 1 "OPA348" H 6200 3750 60  0000 C CNN
F 2 "SC-70-5" H 5550 3250 60  0000 C CNN
	1    5850 3550
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B5E2EEF
P 5450 3250
F 0 "C?" H 5500 3350 50  0000 L CNN
F 1 "270pf" H 5500 3150 50  0000 L CNN
F 2 "0402" H 5700 3250 60  0000 C CNN
	1    5450 3250
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4B5E2EB2
P 5250 3300
F 0 "R?" V 5330 3300 50  0000 C CNN
F 1 "170k" V 5250 3300 50  0000 C CNN
F 2 "0402" V 5380 3250 60  0000 C CNN
	1    5250 3300
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 4B5E2EA6
P 5000 3650
F 0 "R?" V 5080 3650 50  0000 C CNN
F 1 "10k" V 5000 3650 50  0000 C CNN
F 2 "0402" V 5130 3600 60  0000 C CNN
	1    5000 3650
	0    1    1    0   
$EndComp
Text Notes 2200 3050 0    60   ~ 0
noise-cancel rolloff at ~ 4.8kHz
Text Notes 4250 4700 0    60   ~ 0
highpass at ~1.3Hz
$Comp
L C C?
U 1 1 4B5E2BEE
P 4450 4400
F 0 "C?" H 4500 4500 50  0000 L CNN
F 1 "22uf" H 4500 4300 50  0000 L CNN
F 2 "0805" H 4700 4400 60  0000 C CNN
	1    4450 4400
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B5E2631
P 4200 3400
F 0 "C?" H 4250 3500 50  0000 L CNN
F 1 "1.5nF" H 4250 3300 50  0000 L CNN
F 2 "0402" H 4200 3100 60  0000 C CNN
	1    4200 3400
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B5E2425
P 3950 4400
F 0 "C?" H 4000 4500 50  0000 L CNN
F 1 "22uf" H 4000 4300 50  0000 L CNN
F 2 "0805" H 4200 4400 60  0000 C CNN
	1    3950 4400
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4B5E23F1
P 3950 3400
F 0 "R?" V 4030 3400 50  0000 C CNN
F 1 "33k" V 3950 3400 50  0000 C CNN
F 2 "0402" V 4080 3350 60  0000 C CNN
	1    3950 3400
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 4B5E23EA
P 3950 3900
F 0 "R?" V 4030 3900 50  0000 C CNN
F 1 "2.7k" V 3950 3900 50  0000 C CNN
F 2 "0402" V 4080 3850 60  0000 C CNN
	1    3950 3900
	-1   0    0    1   
$EndComp
$Comp
L TP TP?
U 1 1 4B5E23B7
P 1700 3800
F 0 "TP?" H 1700 3800 60  0000 C CNN
F 1 "TP" H 1550 3750 60  0000 C CNN
F 2 "TP" H 1550 3750 60  0000 C CNN
	1    1700 3800
	-1   0    0    1   
$EndComp
$Comp
L TP TP?
U 1 1 4B5E23AE
P 1700 3400
F 0 "TP?" H 1700 3400 60  0000 C CNN
F 1 "TP" H 1550 3350 60  0000 C CNN
F 2 "TP" H 1550 3350 60  0000 C CNN
	1    1700 3400
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 4B5E2389
P 2200 3800
F 0 "R?" V 2280 3800 50  0000 C CNN
F 1 "10k" V 2200 3800 50  0000 C CNN
F 2 "0402" V 2330 3750 60  0000 C CNN
	1    2200 3800
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 4B5E236D
P 2200 3400
F 0 "R?" V 2280 3400 50  0000 C CNN
F 1 "10k" V 2200 3400 50  0000 C CNN
F 2 "0402" V 2330 3350 60  0000 C CNN
	1    2200 3400
	0    1    1    0   
$EndComp
$Comp
L MAX4208 U?
U 1 1 4B5E2341
P 3200 3600
F 0 "U?" H 3200 3350 60  0000 C CNN
F 1 "MAX4208" H 3250 3850 60  0000 C CNN
F 2 "MSOP-8" H 3140 3290 60  0000 C CNN
	1    3200 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
