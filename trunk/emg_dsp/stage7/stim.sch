EESchema Schematic File Version 2  date Tue 14 Dec 2010 04:38:47 PM EST
LIBS:power
LIBS:device
LIBS:emg_sym
LIBS:linear
LIBS:stage7-cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 9 16
Title ""
Date "14 dec 2010"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 5900 3550 0    60   ~ 0
eg BZT52C30S
Text Notes 5900 3450 0    60   ~ 0
30V Zener
Wire Wire Line
	7600 3300 7000 3300
Wire Wire Line
	5800 3300 6500 3300
Wire Wire Line
	6700 3000 6700 3050
Connection ~ 6300 2600
Wire Wire Line
	6300 2750 6300 2500
Wire Wire Line
	4900 3300 4200 3300
Connection ~ 4900 2600
Wire Wire Line
	4450 2600 5050 2600
Wire Wire Line
	5800 3150 5900 3150
Wire Wire Line
	5650 2600 5900 2600
Wire Wire Line
	5800 3000 5800 2600
Connection ~ 5800 2600
Wire Wire Line
	4900 2600 4900 3000
Wire Wire Line
	4450 3000 4450 3050
Connection ~ 7250 3300
Connection ~ 7250 2500
Wire Wire Line
	6300 2500 7400 2500
Wire Wire Line
	6300 3300 6300 3150
Connection ~ 6300 3300
Wire Wire Line
	6700 2600 6700 2500
Connection ~ 6700 2500
$Comp
L R R5
U 1 1 4D07D318
P 6750 3300
AR Path="/4CFFE972/4D07D318" Ref="R5"  Part="1" 
AR Path="/4CFFFADB/4D07D318" Ref="R10"  Part="1" 
AR Path="/4D07DC65/4D07D318" Ref="R19"  Part="1" 
AR Path="/4D07DBA5/4D07D318" Ref="R18"  Part="1" 
AR Path="/4D07DBA2/4D07D318" Ref="R17"  Part="1" 
AR Path="/4D07DB9F/4D07D318" Ref="R16"  Part="1" 
AR Path="/4D07DB9C/4D07D318" Ref="R15"  Part="1" 
AR Path="/4D07DB98/4D07D318" Ref="R14"  Part="1" 
AR Path="/4D07DB92/4D07D318" Ref="R13"  Part="1" 
AR Path="/4CFFFAE1/4D07D318" Ref="R12"  Part="1" 
AR Path="/4CFFFADE/4D07D318" Ref="R11"  Part="1" 
AR Path="/4CFFFAD8/4D07D318" Ref="R9"  Part="1" 
AR Path="/4CFFF124/4D07D318" Ref="R8"  Part="1" 
AR Path="/4CFFF121/4D07D318" Ref="R7"  Part="1" 
AR Path="/4CFFF11C/4D07D318" Ref="R6"  Part="1" 
F 0 "R19" V 6830 3300 50  0000 C CNN
F 1 "1k" V 6750 3300 50  0000 C CNN
F 2 "0402" V 6880 3250 60  0000 C CNN
	1    6750 3300
	0    1    1    0   
$EndComp
$Comp
L D D2
U 1 1 4D07D2DB
P 6300 2950
AR Path="/4CFFE972/4D07D2DB" Ref="D2"  Part="1" 
AR Path="/4CFFFADB/4D07D2DB" Ref="D12"  Part="1" 
AR Path="/4D07DC65/4D07D2DB" Ref="D30"  Part="1" 
AR Path="/4D07DBA5/4D07D2DB" Ref="D28"  Part="1" 
AR Path="/4D07DBA2/4D07D2DB" Ref="D26"  Part="1" 
AR Path="/4D07DB9F/4D07D2DB" Ref="D24"  Part="1" 
AR Path="/4D07DB9C/4D07D2DB" Ref="D22"  Part="1" 
AR Path="/4D07DB98/4D07D2DB" Ref="D20"  Part="1" 
AR Path="/4D07DB92/4D07D2DB" Ref="D18"  Part="1" 
AR Path="/4CFFFAE1/4D07D2DB" Ref="D16"  Part="1" 
AR Path="/4CFFFADE/4D07D2DB" Ref="D14"  Part="1" 
AR Path="/4CFFFAD8/4D07D2DB" Ref="D10"  Part="1" 
AR Path="/4CFFF124/4D07D2DB" Ref="D8"  Part="1" 
AR Path="/4CFFF121/4D07D2DB" Ref="D6"  Part="1" 
AR Path="/4CFFF11C/4D07D2DB" Ref="D4"  Part="1" 
F 0 "D30" H 6300 3100 60  0000 C CNN
F 1 "D" H 6300 2800 60  0001 C CNN
F 2 "SOD-323" H 6500 2850 50  0000 C CNN
	1    6300 2950
	0    1    1    0   
$EndComp
$Comp
L TP TP1
U 1 1 4D07C82A
P 7600 2500
AR Path="/4CFFE972/4D07C82A" Ref="TP1"  Part="1" 
AR Path="/4CFFFADB/4D07C82A" Ref="TP6"  Part="1" 
AR Path="/4D07DC65/4D07C82A" Ref="TP15"  Part="1" 
AR Path="/4D07DBA5/4D07C82A" Ref="TP14"  Part="1" 
AR Path="/4D07DBA2/4D07C82A" Ref="TP13"  Part="1" 
AR Path="/4D07DB9F/4D07C82A" Ref="TP12"  Part="1" 
AR Path="/4D07DB9C/4D07C82A" Ref="TP11"  Part="1" 
AR Path="/4D07DB98/4D07C82A" Ref="TP10"  Part="1" 
AR Path="/4D07DB92/4D07C82A" Ref="TP9"  Part="1" 
AR Path="/4CFFFAE1/4D07C82A" Ref="TP8"  Part="1" 
AR Path="/4CFFFADE/4D07C82A" Ref="TP7"  Part="1" 
AR Path="/4CFFFAD8/4D07C82A" Ref="TP5"  Part="1" 
AR Path="/4CFFF124/4D07C82A" Ref="TP4"  Part="1" 
AR Path="/4CFFF121/4D07C82A" Ref="TP3"  Part="1" 
AR Path="/4CFFF11C/4D07C82A" Ref="TP2"  Part="1" 
F 0 "TP15" H 7600 2500 60  0000 C CNN
F 1 "TP" H 7450 2450 60  0000 C CNN
F 2 "TP" H 7450 2450 60  0000 C CNN
	1    7600 2500
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR077
U 1 1 4CFFF042
P 4900 2600
AR Path="/4CFFE972/4CFFF042" Ref="#PWR077"  Part="1" 
AR Path="/4CFFF11C/4CFFF042" Ref="#PWR073"  Part="1" 
AR Path="/4CFFFADB/4CFFF042" Ref="#PWR049"  Part="1" 
AR Path="/4D07DC65/4CFFF042" Ref="#PWR021"  Part="1" 
AR Path="/4D07DBA5/4CFFF042" Ref="#PWR025"  Part="1" 
AR Path="/4D07DBA2/4CFFF042" Ref="#PWR029"  Part="1" 
AR Path="/4D07DB9F/4CFFF042" Ref="#PWR033"  Part="1" 
AR Path="/4D07DB9C/4CFFF042" Ref="#PWR037"  Part="1" 
AR Path="/4D07DB98/4CFFF042" Ref="#PWR041"  Part="1" 
AR Path="/4D07DB92/4CFFF042" Ref="#PWR045"  Part="1" 
AR Path="/4CFFFAE1/4CFFF042" Ref="#PWR053"  Part="1" 
AR Path="/4CFFFADE/4CFFF042" Ref="#PWR057"  Part="1" 
AR Path="/4CFFFAD8/4CFFF042" Ref="#PWR061"  Part="1" 
AR Path="/4CFFF124/4CFFF042" Ref="#PWR065"  Part="1" 
AR Path="/4CFFF121/4CFFF042" Ref="#PWR069"  Part="1" 
F 0 "#PWR077" H 4900 2700 30  0001 C CNN
F 1 "VDD" H 4900 2710 30  0000 C CNN
	1    4900 2600
	1    0    0    -1  
$EndComp
$Comp
L 2SK3539 U13
U 1 1 4CFFEDFB
P 7000 3000
AR Path="/4CFFE972/4CFFEDFB" Ref="U13"  Part="1" 
AR Path="/4CFFF11C/4CFFEDFB" Ref="U15"  Part="1" 
AR Path="/4CFFFADB/4CFFEDFB" Ref="U23"  Part="1" 
AR Path="/4D07DC65/4CFFEDFB" Ref="U41"  Part="1" 
AR Path="/4D07DBA5/4CFFEDFB" Ref="U39"  Part="1" 
AR Path="/4D07DBA2/4CFFEDFB" Ref="U37"  Part="1" 
AR Path="/4D07DB9F/4CFFEDFB" Ref="U35"  Part="1" 
AR Path="/4D07DB9C/4CFFEDFB" Ref="U33"  Part="1" 
AR Path="/4D07DB98/4CFFEDFB" Ref="U31"  Part="1" 
AR Path="/4D07DB92/4CFFEDFB" Ref="U29"  Part="1" 
AR Path="/4CFFFAE1/4CFFEDFB" Ref="U27"  Part="1" 
AR Path="/4CFFFADE/4CFFEDFB" Ref="U25"  Part="1" 
AR Path="/4CFFFAD8/4CFFEDFB" Ref="U21"  Part="1" 
AR Path="/4CFFF124/4CFFEDFB" Ref="U19"  Part="1" 
AR Path="/4CFFF121/4CFFEDFB" Ref="U17"  Part="1" 
F 0 "U41" H 7000 3100 60  0000 C CNN
F 1 "SOT-23" H 7050 3150 60  0000 C CNN
F 2 "S-MINI-3P" H 7000 3000 50  0000 C CNN
	1    7000 3000
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR078
U 1 1 4CFFEA59
P 4450 3050
AR Path="/4CFFE972/4CFFEA59" Ref="#PWR078"  Part="1" 
AR Path="/4CFFF11C/4CFFEA59" Ref="#PWR074"  Part="1" 
AR Path="/4CFFFADB/4CFFEA59" Ref="#PWR050"  Part="1" 
AR Path="/4D07DC65/4CFFEA59" Ref="#PWR022"  Part="1" 
AR Path="/4D07DBA5/4CFFEA59" Ref="#PWR026"  Part="1" 
AR Path="/4D07DBA2/4CFFEA59" Ref="#PWR030"  Part="1" 
AR Path="/4D07DB9F/4CFFEA59" Ref="#PWR034"  Part="1" 
AR Path="/4D07DB9C/4CFFEA59" Ref="#PWR038"  Part="1" 
AR Path="/4D07DB98/4CFFEA59" Ref="#PWR042"  Part="1" 
AR Path="/4D07DB92/4CFFEA59" Ref="#PWR046"  Part="1" 
AR Path="/4CFFFAE1/4CFFEA59" Ref="#PWR054"  Part="1" 
AR Path="/4CFFFADE/4CFFEA59" Ref="#PWR058"  Part="1" 
AR Path="/4CFFFAD8/4CFFEA59" Ref="#PWR062"  Part="1" 
AR Path="/4CFFF124/4CFFEA59" Ref="#PWR066"  Part="1" 
AR Path="/4CFFF121/4CFFEA59" Ref="#PWR070"  Part="1" 
F 0 "#PWR078" H 4450 3050 30  0001 C CNN
F 1 "GND" H 4450 2980 30  0001 C CNN
	1    4450 3050
	1    0    0    -1  
$EndComp
$Comp
L C C18
U 1 1 4CFFEA48
P 4450 2800
AR Path="/4CFFE972/4CFFEA48" Ref="C18"  Part="1" 
AR Path="/4CFFF11C/4CFFEA48" Ref="C20"  Part="1" 
AR Path="/4CFFFADB/4CFFEA48" Ref="C28"  Part="1" 
AR Path="/4D07DC65/4CFFEA48" Ref="C46"  Part="1" 
AR Path="/4D07DBA5/4CFFEA48" Ref="C44"  Part="1" 
AR Path="/4D07DBA2/4CFFEA48" Ref="C42"  Part="1" 
AR Path="/4D07DB9F/4CFFEA48" Ref="C40"  Part="1" 
AR Path="/4D07DB9C/4CFFEA48" Ref="C38"  Part="1" 
AR Path="/4D07DB98/4CFFEA48" Ref="C36"  Part="1" 
AR Path="/4D07DB92/4CFFEA48" Ref="C34"  Part="1" 
AR Path="/4CFFFAE1/4CFFEA48" Ref="C32"  Part="1" 
AR Path="/4CFFFADE/4CFFEA48" Ref="C30"  Part="1" 
AR Path="/4CFFFAD8/4CFFEA48" Ref="C26"  Part="1" 
AR Path="/4CFFF124/4CFFEA48" Ref="C24"  Part="1" 
AR Path="/4CFFF121/4CFFEA48" Ref="C22"  Part="1" 
F 0 "C46" H 4500 2900 50  0000 L CNN
F 1 "0.1uf" H 4500 2700 50  0000 L CNN
F 2 "0402" H 4550 2950 60  0001 C CNN
	1    4450 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR079
U 1 1 4CFFEA2B
P 6700 3050
AR Path="/4CFFE972/4CFFEA2B" Ref="#PWR079"  Part="1" 
AR Path="/4CFFF11C/4CFFEA2B" Ref="#PWR075"  Part="1" 
AR Path="/4CFFFADB/4CFFEA2B" Ref="#PWR051"  Part="1" 
AR Path="/4D07DC65/4CFFEA2B" Ref="#PWR023"  Part="1" 
AR Path="/4D07DBA5/4CFFEA2B" Ref="#PWR027"  Part="1" 
AR Path="/4D07DBA2/4CFFEA2B" Ref="#PWR031"  Part="1" 
AR Path="/4D07DB9F/4CFFEA2B" Ref="#PWR035"  Part="1" 
AR Path="/4D07DB9C/4CFFEA2B" Ref="#PWR039"  Part="1" 
AR Path="/4D07DB98/4CFFEA2B" Ref="#PWR043"  Part="1" 
AR Path="/4D07DB92/4CFFEA2B" Ref="#PWR047"  Part="1" 
AR Path="/4CFFFAE1/4CFFEA2B" Ref="#PWR055"  Part="1" 
AR Path="/4CFFFADE/4CFFEA2B" Ref="#PWR059"  Part="1" 
AR Path="/4CFFFAD8/4CFFEA2B" Ref="#PWR063"  Part="1" 
AR Path="/4CFFF124/4CFFEA2B" Ref="#PWR067"  Part="1" 
AR Path="/4CFFF121/4CFFEA2B" Ref="#PWR071"  Part="1" 
F 0 "#PWR079" H 6700 3050 30  0001 C CNN
F 1 "GND" H 6700 2980 30  0001 C CNN
	1    6700 3050
	1    0    0    -1  
$EndComp
$Comp
L C C19
U 1 1 4CFFEA24
P 6700 2800
AR Path="/4CFFE972/4CFFEA24" Ref="C19"  Part="1" 
AR Path="/4CFFF11C/4CFFEA24" Ref="C21"  Part="1" 
AR Path="/4CFFFADB/4CFFEA24" Ref="C29"  Part="1" 
AR Path="/4D07DC65/4CFFEA24" Ref="C47"  Part="1" 
AR Path="/4D07DBA5/4CFFEA24" Ref="C45"  Part="1" 
AR Path="/4D07DBA2/4CFFEA24" Ref="C43"  Part="1" 
AR Path="/4D07DB9F/4CFFEA24" Ref="C41"  Part="1" 
AR Path="/4D07DB9C/4CFFEA24" Ref="C39"  Part="1" 
AR Path="/4D07DB98/4CFFEA24" Ref="C37"  Part="1" 
AR Path="/4D07DB92/4CFFEA24" Ref="C35"  Part="1" 
AR Path="/4CFFFAE1/4CFFEA24" Ref="C33"  Part="1" 
AR Path="/4CFFFADE/4CFFEA24" Ref="C31"  Part="1" 
AR Path="/4CFFFAD8/4CFFEA24" Ref="C27"  Part="1" 
AR Path="/4CFFF124/4CFFEA24" Ref="C25"  Part="1" 
AR Path="/4CFFF121/4CFFEA24" Ref="C23"  Part="1" 
F 0 "C47" H 6750 2900 50  0000 L CNN
F 1 "100pf" H 6750 2700 50  0000 L CNN
F 2 "0402" H 6800 2950 60  0000 C CNN
	1    6700 2800
	1    0    0    -1  
$EndComp
Text HLabel 7600 3000 2    60   Input ~ 0
CATHO
Text HLabel 7600 3300 2    60   Input ~ 0
Iout
Text HLabel 4200 3300 0    60   Input ~ 0
ANO
$Comp
L GND #PWR080
U 1 1 4CFFE9BD
P 5900 3150
AR Path="/4CFFE972/4CFFE9BD" Ref="#PWR080"  Part="1" 
AR Path="/4CFFF11C/4CFFE9BD" Ref="#PWR076"  Part="1" 
AR Path="/4CFFFADB/4CFFE9BD" Ref="#PWR052"  Part="1" 
AR Path="/4D07DC65/4CFFE9BD" Ref="#PWR024"  Part="1" 
AR Path="/4D07DBA5/4CFFE9BD" Ref="#PWR028"  Part="1" 
AR Path="/4D07DBA2/4CFFE9BD" Ref="#PWR032"  Part="1" 
AR Path="/4D07DB9F/4CFFE9BD" Ref="#PWR036"  Part="1" 
AR Path="/4D07DB9C/4CFFE9BD" Ref="#PWR040"  Part="1" 
AR Path="/4D07DB98/4CFFE9BD" Ref="#PWR044"  Part="1" 
AR Path="/4D07DB92/4CFFE9BD" Ref="#PWR048"  Part="1" 
AR Path="/4CFFFAE1/4CFFE9BD" Ref="#PWR056"  Part="1" 
AR Path="/4CFFFADE/4CFFE9BD" Ref="#PWR060"  Part="1" 
AR Path="/4CFFFAD8/4CFFE9BD" Ref="#PWR064"  Part="1" 
AR Path="/4CFFF124/4CFFE9BD" Ref="#PWR068"  Part="1" 
AR Path="/4CFFF121/4CFFE9BD" Ref="#PWR072"  Part="1" 
F 0 "#PWR080" H 5900 3150 30  0001 C CNN
F 1 "GND" H 5900 3080 30  0001 C CNN
	1    5900 3150
	0    -1   -1   0   
$EndComp
$Comp
L D D1
U 1 1 4CFFE9AE
P 6100 2600
AR Path="/4CFFE972/4CFFE9AE" Ref="D1"  Part="1" 
AR Path="/4CFFF11C/4CFFE9AE" Ref="D3"  Part="1" 
AR Path="/4CFFFADB/4CFFE9AE" Ref="D11"  Part="1" 
AR Path="/4D07DC65/4CFFE9AE" Ref="D29"  Part="1" 
AR Path="/4D07DBA5/4CFFE9AE" Ref="D27"  Part="1" 
AR Path="/4D07DBA2/4CFFE9AE" Ref="D25"  Part="1" 
AR Path="/4D07DB9F/4CFFE9AE" Ref="D23"  Part="1" 
AR Path="/4D07DB9C/4CFFE9AE" Ref="D21"  Part="1" 
AR Path="/4D07DB98/4CFFE9AE" Ref="D19"  Part="1" 
AR Path="/4D07DB92/4CFFE9AE" Ref="D17"  Part="1" 
AR Path="/4CFFFAE1/4CFFE9AE" Ref="D15"  Part="1" 
AR Path="/4CFFFADE/4CFFE9AE" Ref="D13"  Part="1" 
AR Path="/4CFFFAD8/4CFFE9AE" Ref="D9"  Part="1" 
AR Path="/4CFFF124/4CFFE9AE" Ref="D7"  Part="1" 
AR Path="/4CFFF121/4CFFE9AE" Ref="D5"  Part="1" 
F 0 "D29" H 6100 2750 60  0000 C CNN
F 1 "BAT54" H 6100 2450 60  0001 C CNN
F 2 "SOT-23" H 6300 2500 50  0000 C CNN
	1    6100 2600
	-1   0    0    1   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 4CFFE99A
P 5350 2600
AR Path="/4CFFE972/4CFFE99A" Ref="L1"  Part="1" 
AR Path="/4CFFF11C/4CFFE99A" Ref="L2"  Part="1" 
AR Path="/4CFFFADB/4CFFE99A" Ref="L6"  Part="1" 
AR Path="/4D07DC65/4CFFE99A" Ref="L15"  Part="1" 
AR Path="/4D07DBA5/4CFFE99A" Ref="L14"  Part="1" 
AR Path="/4D07DBA2/4CFFE99A" Ref="L13"  Part="1" 
AR Path="/4D07DB9F/4CFFE99A" Ref="L12"  Part="1" 
AR Path="/4D07DB9C/4CFFE99A" Ref="L11"  Part="1" 
AR Path="/4D07DB98/4CFFE99A" Ref="L10"  Part="1" 
AR Path="/4D07DB92/4CFFE99A" Ref="L9"  Part="1" 
AR Path="/4CFFFAE1/4CFFE99A" Ref="L8"  Part="1" 
AR Path="/4CFFFADE/4CFFE99A" Ref="L7"  Part="1" 
AR Path="/4CFFFAD8/4CFFE99A" Ref="L5"  Part="1" 
AR Path="/4CFFF124/4CFFE99A" Ref="L4"  Part="1" 
AR Path="/4CFFF121/4CFFE99A" Ref="L3"  Part="1" 
F 0 "L15" V 5300 2600 40  0000 C CNN
F 1 "22uh" V 5450 2600 40  0000 C CNN
F 2 "0603" V 5260 2560 60  0000 C CNN
	1    5350 2600
	0    -1   -1   0   
$EndComp
$Comp
L LT1615 U12
U 1 1 4CFFE988
P 5350 3150
AR Path="/4CFFE972/4CFFE988" Ref="U12"  Part="1" 
AR Path="/4CFFF11C/4CFFE988" Ref="U14"  Part="1" 
AR Path="/4CFFFADB/4CFFE988" Ref="U22"  Part="1" 
AR Path="/4D07DC65/4CFFE988" Ref="U40"  Part="1" 
AR Path="/4D07DBA5/4CFFE988" Ref="U38"  Part="1" 
AR Path="/4D07DBA2/4CFFE988" Ref="U36"  Part="1" 
AR Path="/4D07DB9F/4CFFE988" Ref="U34"  Part="1" 
AR Path="/4D07DB9C/4CFFE988" Ref="U32"  Part="1" 
AR Path="/4D07DB98/4CFFE988" Ref="U30"  Part="1" 
AR Path="/4D07DB92/4CFFE988" Ref="U28"  Part="1" 
AR Path="/4CFFFAE1/4CFFE988" Ref="U26"  Part="1" 
AR Path="/4CFFFADE/4CFFE988" Ref="U24"  Part="1" 
AR Path="/4CFFFAD8/4CFFE988" Ref="U20"  Part="1" 
AR Path="/4CFFF124/4CFFE988" Ref="U18"  Part="1" 
AR Path="/4CFFF121/4CFFE988" Ref="U16"  Part="1" 
F 0 "U40" H 5350 2850 60  0000 C CNN
F 1 "LT1615" H 5350 3400 60  0000 C CNN
F 2 "SOT-23-5" H 5350 3150 60  0000 C CNN
	1    5350 3150
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
