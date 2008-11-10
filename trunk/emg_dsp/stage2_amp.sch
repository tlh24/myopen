EESchema Schematic File Version 2
LIBS:power,device,emg_sym,./stage2.cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 5 5
Title ""
Date "29 oct 2008"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 5750 4050 2    60   Input
Vdd
Text HLabel 6750 3800 2    60   Input
GND
Text Notes 5950 3100 0    60   ~
25db
Text Notes 4900 3100 0    60   ~
25db
Text Notes 3700 3100 0    60   ~
15db
Wire Wire Line
	3550 3200 3400 3200
Wire Wire Line
	6750 3600 6750 3800
Wire Wire Line
	6750 3800 4200 3800
Connection ~ 4700 4050
Wire Wire Line
	5750 3350 5750 4050
Wire Wire Line
	5750 4050 3550 4050
Connection ~ 5350 3800
Wire Wire Line
	6400 3800 6400 3350
Wire Wire Line
	5350 3200 5750 3200
Wire Wire Line
	4200 3200 4700 3200
Wire Wire Line
	4200 3800 4200 3350
Wire Wire Line
	5350 3800 5350 3350
Wire Wire Line
	3550 4050 3550 3350
Wire Wire Line
	4700 4050 4700 3350
Connection ~ 6750 3200
Connection ~ 6400 3800
Wire Wire Line
	7200 3200 6400 3200
Text HLabel 3400 3200 0    60   Input
in
Text HLabel 7200 3200 2    60   Input
out
$Comp
L C C87
U 1 1 48C9FE70
P 6750 3400
AR Path="/48C9FDD8/48C9FE11/48C9FE70" Ref="C87"  Part="1" 
AR Path="/48C9FDD8/48CA00FF/48C9FE70" Ref="C118"  Part="1" 
AR Path="/48C9FDD8/48CA00FE/48C9FE70" Ref="C117"  Part="1" 
AR Path="/48C9FDD8/48CA00FD/48C9FE70" Ref="C116"  Part="1" 
AR Path="/48C9FDD8/48CA00FC/48C9FE70" Ref="C115"  Part="1" 
AR Path="/48C9FDD8/48CA00FB/48C9FE70" Ref="C114"  Part="1" 
AR Path="/48C9FDD8/48CA00FA/48C9FE70" Ref="C113"  Part="1" 
AR Path="/48C9FDD8/48CA00F9/48C9FE70" Ref="C112"  Part="1" 
AR Path="/48C9FDD8/48CA00F8/48C9FE70" Ref="C111"  Part="1" 
AR Path="/48C9FDD8/48CA00F7/48C9FE70" Ref="C110"  Part="1" 
AR Path="/48C9FDD8/48CA00F6/48C9FE70" Ref="C109"  Part="1" 
AR Path="/48C9FDD8/48CA00F5/48C9FE70" Ref="C108"  Part="1" 
AR Path="/48C9FDD8/48CA00F4/48C9FE70" Ref="C107"  Part="1" 
AR Path="/48C9FDD8/48CA00F3/48C9FE70" Ref="C106"  Part="1" 
AR Path="/48C9FDD8/48CA00F2/48C9FE70" Ref="C105"  Part="1" 
AR Path="/48C9FDD8/48CA00F1/48C9FE70" Ref="C104"  Part="1" 
AR Path="/48C9FDD8/48CA00F0/48C9FE70" Ref="C103"  Part="1" 
AR Path="/48C9FDD8/48CA00CF/48C9FE70" Ref="C102"  Part="1" 
AR Path="/48C9FDD8/48CA00CE/48C9FE70" Ref="C101"  Part="1" 
AR Path="/48C9FDD8/48CA00CD/48C9FE70" Ref="C100"  Part="1" 
AR Path="/48C9FDD8/48CA00CC/48C9FE70" Ref="C99"  Part="1" 
AR Path="/48C9FDD8/48CA00CB/48C9FE70" Ref="C98"  Part="1" 
AR Path="/48C9FDD8/48CA00CA/48C9FE70" Ref="C97"  Part="1" 
AR Path="/48C9FDD8/48CA00C9/48C9FE70" Ref="C96"  Part="1" 
AR Path="/48C9FDD8/48CA00C8/48C9FE70" Ref="C95"  Part="1" 
AR Path="/48C9FDD8/48CA00A7/48C9FE70" Ref="C94"  Part="1" 
AR Path="/48C9FDD8/48CA00A6/48C9FE70" Ref="C93"  Part="1" 
AR Path="/48C9FDD8/48CA00A5/48C9FE70" Ref="C92"  Part="1" 
AR Path="/48C9FDD8/48CA00A4/48C9FE70" Ref="C91"  Part="1" 
AR Path="/48C9FDD8/48CA008E/48C9FE70" Ref="C90"  Part="1" 
AR Path="/48C9FDD8/48CA007D/48C9FE70" Ref="C89"  Part="1" 
AR Path="/48C9FDD8/48CA002F/48C9FE70" Ref="C88"  Part="1" 
F 0 "C88" H 6800 3500 50  0000 L C
F 1 "0.047uf" H 6800 3300 50  0000 L C
F 2 "0402" H 6950 3200 60  0000 C C
	1    6750 3400
	1    0    0    -1  
$EndComp
$Comp
L LMV1032 U49
U 1 1 48C9FE5C
P 6100 3250
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
F 0 "U52" H 6100 2950 60  0000 C C
F 1 "LMV1032" H 6100 3050 60  0000 C C
F 2 "microSMD-4" H 6040 2890 60  0000 C C
	1    6100 3250
	-1   0    0    -1  
$EndComp
$Comp
L LMV1032 U48
U 1 1 48C9FE4D
P 5050 3250
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
F 0 "U51" H 5050 2950 60  0000 C C
F 1 "LMV1032" H 5050 3050 60  0000 C C
F 2 "microSMD-4" H 4990 2890 60  0000 C C
	1    5050 3250
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
F 0 "U50" H 3900 2950 60  0000 C C
F 1 "LMV1032" H 3900 3050 60  0000 C C
F 2 "microSMD-4" H 3840 2890 60  0000 C C
	1    3900 3250
	-1   0    0    -1  
$EndComp
$EndSCHEMATC
