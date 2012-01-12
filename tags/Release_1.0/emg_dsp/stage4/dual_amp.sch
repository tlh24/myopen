EESchema Schematic File Version 2  date Sun 31 Jan 2010 07:35:14 PM EST
LIBS:power,device,emg_sym,./stage4.cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 39 39
Title ""
Date "9 jan 2009"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 4300 3800
Wire Wire Line
	4300 3800 4300 4500
Wire Wire Line
	4300 4500 4200 4500
Connection ~ 7100 3800
Wire Wire Line
	7100 3800 7100 4500
Wire Wire Line
	7100 4500 7000 4500
Connection ~ 6250 4050
Wire Wire Line
	6250 4050 6250 4500
Wire Wire Line
	6250 4500 6350 4500
Connection ~ 3550 4050
Wire Wire Line
	7500 4050 3450 4050
Wire Wire Line
	3450 4050 3450 4500
Wire Wire Line
	3450 4500 3550 4500
Connection ~ 7000 3800
Wire Wire Line
	7000 3350 7000 3800
Connection ~ 4950 4050
Wire Wire Line
	4950 3350 4950 4050
Wire Wire Line
	5600 3200 5650 3200
Wire Wire Line
	4200 3200 4250 3200
Wire Wire Line
	3550 4050 3550 3350
Wire Wire Line
	4200 3350 4200 3800
Wire Wire Line
	3550 3200 3400 3200
Wire Wire Line
	4900 3200 4950 3200
Wire Wire Line
	6300 3200 6350 3200
Wire Wire Line
	4200 3800 7500 3800
Wire Wire Line
	6350 3350 6350 4050
Connection ~ 6350 4050
Wire Wire Line
	5600 3350 5600 3800
Connection ~ 5600 3800
Wire Wire Line
	7000 3200 7500 3200
Wire Wire Line
	5600 4350 5650 4350
Wire Wire Line
	4200 4350 4250 4350
Wire Wire Line
	3550 4350 3400 4350
Wire Wire Line
	4900 4350 4950 4350
Wire Wire Line
	6300 4350 6350 4350
Wire Wire Line
	7000 4350 7500 4350
Wire Wire Line
	4950 4500 4850 4500
Wire Wire Line
	4850 4500 4850 4050
Connection ~ 4850 4050
Wire Wire Line
	5600 4500 5700 4500
Wire Wire Line
	5700 4500 5700 3800
Connection ~ 5700 3800
$Comp
L C2 U?
U 2 1 4B662126
P 5950 4350
F 0 "U?" H 6000 4200 60  0000 C CNN
F 1 "C2" H 6000 4500 60  0000 C CNN
F 2 "0405" H 6000 4050 60  0000 C CNN
	2    5950 4350
	1    0    0    -1  
$EndComp
$Comp
L C2 U?
U 2 1 4B662125
P 4550 4350
F 0 "U?" H 4600 4200 60  0000 C CNN
F 1 "C2" H 4600 4500 60  0000 C CNN
F 2 "0405" H 4600 4050 60  0000 C CNN
	2    4550 4350
	1    0    0    -1  
$EndComp
Text HLabel 3400 4350 0    60   Input ~ 0
in1
Text HLabel 7500 4350 2    60   Input ~ 0
out1
$Comp
L LMV1032 U?
U 1 1 4B662124
P 6700 4400
F 0 "U?" H 6700 4100 60  0000 C CNN
F 1 "LMV1032-15" H 6700 4200 60  0000 C CNN
F 2 "microSMD-4" H 6640 4040 60  0000 C CNN
	1    6700 4400
	-1   0    0    -1  
$EndComp
$Comp
L LMV1032 U?
U 1 1 4B662123
P 5300 4400
F 0 "U?" H 5300 4100 60  0000 C CNN
F 1 "LMV1032-25" H 5300 4200 60  0000 C CNN
F 2 "microSMD-4" H 5240 4040 60  0000 C CNN
	1    5300 4400
	-1   0    0    -1  
$EndComp
$Comp
L LMV1032 U?
U 1 1 4B662122
P 3900 4400
F 0 "U?" H 3900 4100 60  0000 C CNN
F 1 "LMV1032-25" H 3900 4200 60  0000 C CNN
F 2 "microSMD-4" H 3840 4040 60  0000 C CNN
	1    3900 4400
	-1   0    0    -1  
$EndComp
$Comp
L C2 U?
U 1 1 4B6620F6
P 5950 3200
F 0 "U?" H 6000 3050 60  0000 C CNN
F 1 "C2" H 6000 3350 60  0000 C CNN
F 2 "0405" H 6000 2900 60  0000 C CNN
	1    5950 3200
	1    0    0    -1  
$EndComp
$Comp
L C2 U?
U 1 1 4B6620D9
P 4550 3200
F 0 "U?" H 4600 3050 60  0000 C CNN
F 1 "C2" H 4600 3350 60  0000 C CNN
F 2 "0405" H 4600 2900 60  0000 C CNN
	1    4550 3200
	1    0    0    -1  
$EndComp
Text Notes 7150 3500 0    60   ~ 0
causes instability.  bad idea!
Text Notes 7150 3400 0    60   ~ 0
capacitor to ground on the output
Text HLabel 7500 4050 2    60   Input ~ 0
Vdd
Text HLabel 7500 3800 2    60   Input ~ 0
GND
Text HLabel 3400 3200 0    60   Input ~ 0
in0
Text HLabel 7500 3200 2    60   Input ~ 0
out0
$Comp
L LMV1032 U49
U 1 1 48C9FE5C
P 6700 3250
AR Path="/48C9FDD8/48C9FE11/48C9FE5C" Ref="U49"  Part="1" 
AR Path="/48C9FDD8/48CA00FF/48C9FE5C" Ref="U142"  Part="1" 
AR Path="/48C9FDD8/48CA00FE/48C9FE5C" Ref="U139"  Part="1" 
AR Path="/48C9FDD8/48CA00FD/48C9FE5C" Ref="U136"  Part="1" 
AR Path="/48C9FDD8/48CA00FC/48C9FE5C" Ref="U133"  Part="1" 
AR Path="/48C9FDD8/48CA00FB/48C9FE5C" Ref="U130"  Part="1" 
AR Path="/48C9FDD8/48CA00FA/48C9FE5C" Ref="U127"  Part="1" 
AR Path="/48C9FDD8/48CA00F9/48C9FE5C" Ref="U124"  Part="1" 
AR Path="/48C9FDD8/48CA00F8/48C9FE5C" Ref="U121"  Part="1" 
AR Path="/48C9FDD8/48CA00F7/48C9FE5C" Ref="U118"  Part="1" 
AR Path="/48C9FDD8/48CA00F6/48C9FE5C" Ref="U115"  Part="1" 
AR Path="/48C9FDD8/48CA00F5/48C9FE5C" Ref="U112"  Part="1" 
AR Path="/48C9FDD8/48CA00F4/48C9FE5C" Ref="U109"  Part="1" 
AR Path="/48C9FDD8/48CA00F3/48C9FE5C" Ref="U106"  Part="1" 
AR Path="/48C9FDD8/48CA00F2/48C9FE5C" Ref="U103"  Part="1" 
AR Path="/48C9FDD8/48CA00F1/48C9FE5C" Ref="U100"  Part="1" 
AR Path="/48C9FDD8/48CA00F0/48C9FE5C" Ref="U97"  Part="1" 
AR Path="/48C9FDD8/48CA00CF/48C9FE5C" Ref="U94"  Part="1" 
AR Path="/48C9FDD8/48CA00CE/48C9FE5C" Ref="U91"  Part="1" 
AR Path="/48C9FDD8/48CA00CD/48C9FE5C" Ref="U88"  Part="1" 
AR Path="/48C9FDD8/48CA00CC/48C9FE5C" Ref="U85"  Part="1" 
AR Path="/48C9FDD8/48CA00CB/48C9FE5C" Ref="U82"  Part="1" 
AR Path="/48C9FDD8/48CA00CA/48C9FE5C" Ref="U79"  Part="1" 
AR Path="/48C9FDD8/48CA00C9/48C9FE5C" Ref="U76"  Part="1" 
AR Path="/48C9FDD8/48CA00C8/48C9FE5C" Ref="U73"  Part="1" 
AR Path="/48C9FDD8/48CA00A7/48C9FE5C" Ref="U70"  Part="1" 
AR Path="/48C9FDD8/48CA00A6/48C9FE5C" Ref="U67"  Part="1" 
AR Path="/48C9FDD8/48CA00A5/48C9FE5C" Ref="U64"  Part="1" 
AR Path="/48C9FDD8/48CA00A4/48C9FE5C" Ref="U61"  Part="1" 
AR Path="/48C9FDD8/48CA008E/48C9FE5C" Ref="U58"  Part="1" 
AR Path="/48C9FDD8/48CA007D/48C9FE5C" Ref="U55"  Part="1" 
AR Path="/48C9FDD8/48CA002F/48C9FE5C" Ref="U52"  Part="1" 
F 0 "U49" H 6700 2950 60  0000 C CNN
F 1 "LMV1032-15" H 6700 3050 60  0000 C CNN
F 2 "microSMD-4" H 6640 2890 60  0000 C CNN
	1    6700 3250
	-1   0    0    -1  
$EndComp
$Comp
L LMV1032 U48
U 1 1 48C9FE4D
P 5300 3250
AR Path="/48C9FDD8/48C9FE11/48C9FE4D" Ref="U48"  Part="1" 
AR Path="/48C9FDD8/48CA00FF/48C9FE4D" Ref="U141"  Part="1" 
AR Path="/48C9FDD8/48CA00FE/48C9FE4D" Ref="U138"  Part="1" 
AR Path="/48C9FDD8/48CA00FD/48C9FE4D" Ref="U135"  Part="1" 
AR Path="/48C9FDD8/48CA00FC/48C9FE4D" Ref="U132"  Part="1" 
AR Path="/48C9FDD8/48CA00FB/48C9FE4D" Ref="U129"  Part="1" 
AR Path="/48C9FDD8/48CA00FA/48C9FE4D" Ref="U126"  Part="1" 
AR Path="/48C9FDD8/48CA00F9/48C9FE4D" Ref="U123"  Part="1" 
AR Path="/48C9FDD8/48CA00F8/48C9FE4D" Ref="U120"  Part="1" 
AR Path="/48C9FDD8/48CA00F7/48C9FE4D" Ref="U117"  Part="1" 
AR Path="/48C9FDD8/48CA00F6/48C9FE4D" Ref="U114"  Part="1" 
AR Path="/48C9FDD8/48CA00F5/48C9FE4D" Ref="U111"  Part="1" 
AR Path="/48C9FDD8/48CA00F4/48C9FE4D" Ref="U108"  Part="1" 
AR Path="/48C9FDD8/48CA00F3/48C9FE4D" Ref="U105"  Part="1" 
AR Path="/48C9FDD8/48CA00F2/48C9FE4D" Ref="U102"  Part="1" 
AR Path="/48C9FDD8/48CA00F1/48C9FE4D" Ref="U99"  Part="1" 
AR Path="/48C9FDD8/48CA00F0/48C9FE4D" Ref="U96"  Part="1" 
AR Path="/48C9FDD8/48CA00CF/48C9FE4D" Ref="U93"  Part="1" 
AR Path="/48C9FDD8/48CA00CE/48C9FE4D" Ref="U90"  Part="1" 
AR Path="/48C9FDD8/48CA00CD/48C9FE4D" Ref="U87"  Part="1" 
AR Path="/48C9FDD8/48CA00CC/48C9FE4D" Ref="U84"  Part="1" 
AR Path="/48C9FDD8/48CA00CB/48C9FE4D" Ref="U81"  Part="1" 
AR Path="/48C9FDD8/48CA00CA/48C9FE4D" Ref="U78"  Part="1" 
AR Path="/48C9FDD8/48CA00C9/48C9FE4D" Ref="U75"  Part="1" 
AR Path="/48C9FDD8/48CA00C8/48C9FE4D" Ref="U72"  Part="1" 
AR Path="/48C9FDD8/48CA00A7/48C9FE4D" Ref="U69"  Part="1" 
AR Path="/48C9FDD8/48CA00A6/48C9FE4D" Ref="U66"  Part="1" 
AR Path="/48C9FDD8/48CA00A5/48C9FE4D" Ref="U63"  Part="1" 
AR Path="/48C9FDD8/48CA00A4/48C9FE4D" Ref="U60"  Part="1" 
AR Path="/48C9FDD8/48CA008E/48C9FE4D" Ref="U57"  Part="1" 
AR Path="/48C9FDD8/48CA007D/48C9FE4D" Ref="U54"  Part="1" 
AR Path="/48C9FDD8/48CA002F/48C9FE4D" Ref="U51"  Part="1" 
F 0 "U48" H 5300 2950 60  0000 C CNN
F 1 "LMV1032-25" H 5300 3050 60  0000 C CNN
F 2 "microSMD-4" H 5240 2890 60  0000 C CNN
	1    5300 3250
	-1   0    0    -1  
$EndComp
$Comp
L LMV1032 U47
U 1 1 48C9FE38
P 3900 3250
AR Path="/48C9FDD8/48C9FE11/48C9FE38" Ref="U47"  Part="1" 
AR Path="/48C9FDD8/48CA00FF/48C9FE38" Ref="U140"  Part="1" 
AR Path="/48C9FDD8/48CA00FE/48C9FE38" Ref="U137"  Part="1" 
AR Path="/48C9FDD8/48CA00FD/48C9FE38" Ref="U134"  Part="1" 
AR Path="/48C9FDD8/48CA00FC/48C9FE38" Ref="U131"  Part="1" 
AR Path="/48C9FDD8/48CA00FB/48C9FE38" Ref="U128"  Part="1" 
AR Path="/48C9FDD8/48CA00FA/48C9FE38" Ref="U125"  Part="1" 
AR Path="/48C9FDD8/48CA00F9/48C9FE38" Ref="U122"  Part="1" 
AR Path="/48C9FDD8/48CA00F8/48C9FE38" Ref="U119"  Part="1" 
AR Path="/48C9FDD8/48CA00F7/48C9FE38" Ref="U116"  Part="1" 
AR Path="/48C9FDD8/48CA00F6/48C9FE38" Ref="U113"  Part="1" 
AR Path="/48C9FDD8/48CA00F5/48C9FE38" Ref="U110"  Part="1" 
AR Path="/48C9FDD8/48CA00F4/48C9FE38" Ref="U107"  Part="1" 
AR Path="/48C9FDD8/48CA00F3/48C9FE38" Ref="U104"  Part="1" 
AR Path="/48C9FDD8/48CA00F2/48C9FE38" Ref="U101"  Part="1" 
AR Path="/48C9FDD8/48CA00F1/48C9FE38" Ref="U98"  Part="1" 
AR Path="/48C9FDD8/48CA00F0/48C9FE38" Ref="U95"  Part="1" 
AR Path="/48C9FDD8/48CA00CF/48C9FE38" Ref="U92"  Part="1" 
AR Path="/48C9FDD8/48CA00CE/48C9FE38" Ref="U89"  Part="1" 
AR Path="/48C9FDD8/48CA00CD/48C9FE38" Ref="U86"  Part="1" 
AR Path="/48C9FDD8/48CA00CC/48C9FE38" Ref="U83"  Part="1" 
AR Path="/48C9FDD8/48CA00CB/48C9FE38" Ref="U80"  Part="1" 
AR Path="/48C9FDD8/48CA00CA/48C9FE38" Ref="U77"  Part="1" 
AR Path="/48C9FDD8/48CA00C9/48C9FE38" Ref="U74"  Part="1" 
AR Path="/48C9FDD8/48CA00C8/48C9FE38" Ref="U71"  Part="1" 
AR Path="/48C9FDD8/48CA00A7/48C9FE38" Ref="U68"  Part="1" 
AR Path="/48C9FDD8/48CA00A6/48C9FE38" Ref="U65"  Part="1" 
AR Path="/48C9FDD8/48CA00A5/48C9FE38" Ref="U62"  Part="1" 
AR Path="/48C9FDD8/48CA00A4/48C9FE38" Ref="U59"  Part="1" 
AR Path="/48C9FDD8/48CA008E/48C9FE38" Ref="U56"  Part="1" 
AR Path="/48C9FDD8/48CA007D/48C9FE38" Ref="U53"  Part="1" 
AR Path="/48C9FDD8/48CA002F/48C9FE38" Ref="U50"  Part="1" 
F 0 "U47" H 3900 2950 60  0000 C CNN
F 1 "LMV1032-25" H 3900 3050 60  0000 C CNN
F 2 "microSMD-4" H 3840 2890 60  0000 C CNN
	1    3900 3250
	-1   0    0    -1  
$EndComp
$EndSCHEMATC