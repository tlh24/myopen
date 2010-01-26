EESchema Schematic File Version 2  date Tue 26 Jan 2010 03:16:39 PM EST
LIBS:power,device,emg_sym,./stage4.cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 3 38
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
	5200 3650 5100 3650
Wire Wire Line
	5100 3650 5100 3950
Wire Wire Line
	5100 3950 5200 3950
Connection ~ 5350 4800
Wire Wire Line
	8850 4800 4550 4800
Wire Wire Line
	8850 4800 8850 4700
Wire Wire Line
	8850 3100 8850 2900
Connection ~ 8050 5350
Wire Wire Line
	5200 5350 8850 5350
Connection ~ 8200 4800
Wire Wire Line
	8750 4800 8750 4600
Wire Wire Line
	8200 4200 8050 4200
Connection ~ 6150 2900
Wire Wire Line
	5850 4250 5850 2900
Wire Wire Line
	5350 4800 5350 4650
Connection ~ 6150 4800
Wire Wire Line
	8050 4200 8050 5350
Wire Wire Line
	5200 5350 5200 3950
Wire Wire Line
	8350 3750 8850 3750
Wire Wire Line
	7400 3250 7400 3100
Wire Wire Line
	7400 3100 8350 3100
Wire Wire Line
	8350 3100 8350 3750
Connection ~ 7600 3850
Wire Wire Line
	7600 3650 7600 3850
Connection ~ 6650 3850
Wire Wire Line
	6150 3850 6900 3850
Connection ~ 6400 4800
Connection ~ 6400 3350
Wire Wire Line
	6650 3850 6650 3800
Wire Wire Line
	6150 4800 6150 3950
Wire Wire Line
	6200 3750 6200 3350
Wire Wire Line
	6200 3750 6150 3750
Wire Wire Line
	4400 3600 4350 3600
Wire Wire Line
	4900 3600 4950 3600
Wire Wire Line
	4950 3600 4950 3750
Wire Wire Line
	4950 3750 5200 3750
Wire Wire Line
	5200 3850 4950 3850
Wire Wire Line
	4950 3850 4950 4000
Wire Wire Line
	4950 4000 4900 4000
Wire Wire Line
	4400 4000 4350 4000
Connection ~ 6400 3850
Wire Wire Line
	6400 4350 6400 4400
Wire Wire Line
	6200 3350 6650 3350
Wire Wire Line
	6650 3350 6650 3400
Wire Wire Line
	6400 4400 6900 4400
Wire Wire Line
	7400 3750 7400 3850
Connection ~ 7600 3250
Connection ~ 6900 4800
Wire Wire Line
	7400 3850 7750 3850
Wire Wire Line
	7750 3650 7700 3650
Wire Wire Line
	7700 3650 7700 4800
Wire Wire Line
	7600 3250 7600 3100
Connection ~ 7600 3100
Wire Wire Line
	6150 2900 6150 3650
Wire Wire Line
	8050 2900 8050 3300
Connection ~ 5200 4250
Wire Wire Line
	5350 4250 5200 4250
Wire Wire Line
	5850 4650 5850 4800
Connection ~ 5850 4800
Wire Wire Line
	8750 2900 8750 4200
Connection ~ 8050 2900
Wire Wire Line
	8200 4800 8200 4600
Connection ~ 7700 4800
Connection ~ 8750 4800
Wire Wire Line
	5850 2900 8850 2900
Connection ~ 8750 2900
Wire Wire Line
	8850 3750 8850 3900
Wire Wire Line
	8850 5350 8850 5250
Wire Wire Line
	4550 4800 4550 5000
$Comp
L TP TP?
U 1 1 4B5E8458
P 4350 5000
F 0 "TP?" H 4350 5000 60  0000 C CNN
F 1 "V0" H 4550 5000 60  0000 C CNN
F 2 "TP" H 4200 4950 60  0000 C CNN
	1    4350 5000
	-1   0    0    1   
$EndComp
$Comp
L TP TP?
U 1 1 4B5E8450
P 4350 4800
F 0 "TP?" H 4350 4800 60  0000 C CNN
F 1 "V0" H 4550 4800 60  0000 C CNN
F 2 "TP" H 4200 4750 60  0000 C CNN
	1    4350 4800
	-1   0    0    1   
$EndComp
Text HLabel 8850 3900 2    60   Input ~ 0
OUT
Text HLabel 8850 4700 2    60   Input ~ 0
V0
Text HLabel 8850 5250 2    60   Input ~ 0
V-
Text HLabel 8850 3100 2    60   Input ~ 0
V+
$Comp
L TP TP?
U 1 1 4B5E83BB
P 9050 2900
F 0 "TP?" H 9050 2900 60  0000 C CNN
F 1 "V+" H 9250 2900 60  0000 C CNN
F 2 "TP" H 8900 2850 60  0000 C CNN
	1    9050 2900
	1    0    0    -1  
$EndComp
$Comp
L TP TP?
U 1 1 4B5E83A8
P 9050 5350
F 0 "TP?" H 9050 5350 60  0000 C CNN
F 1 "V-" H 9250 5350 60  0000 C CNN
F 2 "TP" H 8900 5300 60  0000 C CNN
	1    9050 5350
	1    0    0    -1  
$EndComp
$Comp
L TP TP?
U 1 1 4B5E8390
P 9050 4800
F 0 "TP?" H 9050 4800 60  0000 C CNN
F 1 "V0" H 9250 4800 60  0000 C CNN
F 2 "TP" H 8900 4750 60  0000 C CNN
	1    9050 4800
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B5E837A
P 8750 4400
F 0 "C?" H 8800 4500 50  0000 L CNN
F 1 "1uf" H 8800 4300 50  0000 L CNN
F 2 "0402" H 9000 4400 60  0000 C CNN
	1    8750 4400
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B5E8374
P 8200 4400
F 0 "C?" H 8250 4500 50  0000 L CNN
F 1 "1uf" H 8250 4300 50  0000 L CNN
F 2 "0402" H 8450 4400 60  0000 C CNN
	1    8200 4400
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B5E8316
P 5850 4450
F 0 "C?" H 5900 4550 50  0000 L CNN
F 1 "1uf" H 5900 4350 50  0000 L CNN
F 2 "0402" H 6100 4450 60  0000 C CNN
	1    5850 4450
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B5E82D0
P 5350 4450
F 0 "C?" H 5400 4550 50  0000 L CNN
F 1 "1uf" H 5400 4350 50  0000 L CNN
F 2 "0402" H 5600 4450 60  0000 C CNN
	1    5350 4450
	1    0    0    -1  
$EndComp
$Comp
L TP TP?
U 1 1 4B5E82A4
P 9050 3750
F 0 "TP?" H 9050 3750 60  0000 C CNN
F 1 "OUT" H 9250 3750 60  0000 C CNN
F 2 "TP" H 8900 3700 60  0000 C CNN
	1    9050 3750
	1    0    0    -1  
$EndComp
$Comp
L OPA348 U?
U 1 1 4B5E81FC
P 8000 3750
F 0 "U?" H 8200 3600 60  0000 C CNN
F 1 "OPA348" H 8350 3950 60  0000 C CNN
F 2 "SC-70-5" H 7700 3450 60  0000 C CNN
	1    8000 3750
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B5E2EEF
P 7600 3450
F 0 "C?" H 7650 3550 50  0000 L CNN
F 1 "270pf" H 7650 3350 50  0000 L CNN
F 2 "0402" H 7850 3450 60  0000 C CNN
	1    7600 3450
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4B5E2EB2
P 7400 3500
F 0 "R?" V 7480 3500 50  0000 C CNN
F 1 "120k" V 7400 3500 50  0000 C CNN
F 2 "0402" V 7530 3450 60  0000 C CNN
	1    7400 3500
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 4B5E2EA6
P 7150 3850
F 0 "R?" V 7230 3850 50  0000 C CNN
F 1 "10k" V 7150 3850 50  0000 C CNN
F 2 "0402" V 7280 3800 60  0000 C CNN
	1    7150 3850
	0    1    1    0   
$EndComp
Text Notes 4650 3250 0    60   ~ 0
noise-cancel rolloff at ~ 4.8kHz
Text Notes 6400 4900 0    60   ~ 0
highpass at ~1.3Hz
$Comp
L C C?
U 1 1 4B5E2BEE
P 6900 4600
F 0 "C?" H 6950 4700 50  0000 L CNN
F 1 "22uf" H 6950 4500 50  0000 L CNN
F 2 "0805" H 7150 4600 60  0000 C CNN
	1    6900 4600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B5E2631
P 6650 3600
F 0 "C?" H 6700 3700 50  0000 L CNN
F 1 "1nf" H 6700 3500 50  0000 L CNN
F 2 "0402" H 6900 3600 60  0000 C CNN
	1    6650 3600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 4B5E2425
P 6400 4600
F 0 "C?" H 6450 4700 50  0000 L CNN
F 1 "22uf" H 6450 4500 50  0000 L CNN
F 2 "0805" H 6650 4600 60  0000 C CNN
	1    6400 4600
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 4B5E23F1
P 6400 3600
F 0 "R?" V 6480 3600 50  0000 C CNN
F 1 "33k" V 6400 3600 50  0000 C CNN
F 2 "0402" V 6530 3550 60  0000 C CNN
	1    6400 3600
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 4B5E23EA
P 6400 4100
F 0 "R?" V 6480 4100 50  0000 C CNN
F 1 "2.7k" V 6400 4100 50  0000 C CNN
F 2 "0402" V 6530 4050 60  0000 C CNN
	1    6400 4100
	-1   0    0    1   
$EndComp
$Comp
L TP TP?
U 1 1 4B5E23B7
P 4150 4000
F 0 "TP?" H 4150 4000 60  0000 C CNN
F 1 "TP" H 4000 3950 60  0000 C CNN
F 2 "TP" H 4000 3950 60  0000 C CNN
	1    4150 4000
	-1   0    0    1   
$EndComp
$Comp
L TP TP?
U 1 1 4B5E23AE
P 4150 3600
F 0 "TP?" H 4150 3600 60  0000 C CNN
F 1 "TP" H 4000 3550 60  0000 C CNN
F 2 "TP" H 4000 3550 60  0000 C CNN
	1    4150 3600
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 4B5E2389
P 4650 4000
F 0 "R?" V 4730 4000 50  0000 C CNN
F 1 "10k" V 4650 4000 50  0000 C CNN
F 2 "0402" V 4780 3950 60  0000 C CNN
	1    4650 4000
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 4B5E236D
P 4650 3600
F 0 "R?" V 4730 3600 50  0000 C CNN
F 1 "10k" V 4650 3600 50  0000 C CNN
F 2 "0402" V 4780 3550 60  0000 C CNN
	1    4650 3600
	0    1    1    0   
$EndComp
$Comp
L MAX4208 U?
U 1 1 4B5E2341
P 5650 3800
F 0 "U?" H 5650 3550 60  0000 C CNN
F 1 "MAX4208" H 5700 4050 60  0000 C CNN
F 2 "MSOP-8" H 5590 3490 60  0001 C CNN
	1    5650 3800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
