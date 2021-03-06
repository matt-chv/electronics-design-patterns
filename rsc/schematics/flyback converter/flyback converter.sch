EESchema Schematic File Version 4
LIBS:flyback converter-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Q_PMOS_DGS Q1
U 1 1 5EC52161
P 4350 2700
F 0 "Q1" H 4601 2700 50  0000 C CNN
F 1 "Q_PMOS_DGS" V 4602 2700 50  0001 C CNN
F 2 "" H 4550 2800 50  0001 C CNN
F 3 "~" H 4350 2700 50  0001 C CNN
	1    4350 2700
	1    0    0    1   
$EndComp
$Comp
L Device:D D1
U 1 1 5EC53D14
P 5500 2500
F 0 "D1" H 5450 2400 50  0000 L CNN
F 1 "D" V 5545 2579 50  0001 L CNN
F 2 "" H 5500 2500 50  0001 C CNN
F 3 "~" H 5500 2500 50  0001 C CNN
	1    5500 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:C Co
U 1 1 5EC54F3F
P 5700 2300
F 0 "Co" H 5815 2300 50  0000 L CNN
F 1 "C" H 5815 2255 50  0001 L CNN
F 2 "" H 5738 2150 50  0001 C CNN
F 3 "~" H 5700 2300 50  0001 C CNN
	1    5700 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2100 3650 2100
Text Label 3500 2100 0    50   ~ 0
IN
Text Label 5800 2500 0    50   ~ 0
OUT+
$Comp
L power:GND #PWR?
U 1 1 5EC563BF
P 4450 3100
F 0 "#PWR?" H 4450 2850 50  0001 C CNN
F 1 "GND" H 4455 2927 50  0000 C CNN
F 2 "" H 4450 3100 50  0001 C CNN
F 3 "" H 4450 3100 50  0001 C CNN
	1    4450 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2950 3900 2950
Wire Wire Line
	3900 2950 3900 2800
Wire Wire Line
	3900 2800 3950 2800
Wire Wire Line
	3950 2800 3950 2950
Wire Wire Line
	3950 2950 4150 2950
Wire Wire Line
	4150 2950 4150 2800
Wire Wire Line
	4150 2800 4200 2800
Wire Wire Line
	4200 2950 4250 2950
Text Label 4000 2700 0    50   ~ 0
CMD
Text Label 3900 2800 0    50   ~ 0
ton
Text Label 3950 2950 0    50   ~ 0
toff
Wire Wire Line
	4450 3100 4450 3000
Wire Wire Line
	4200 2800 4200 2950
Wire Wire Line
	4150 2700 3950 2700
$Comp
L Device:C Ci
U 1 1 5EC5DBCC
P 3650 2700
F 0 "Ci" H 3400 2700 50  0000 L CNN
F 1 "C" H 3765 2655 50  0001 L CNN
F 2 "" H 3688 2550 50  0001 C CNN
F 3 "~" H 3650 2700 50  0001 C CNN
	1    3650 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2850 3650 3000
Wire Wire Line
	4450 2900 4450 3000
Connection ~ 4450 3000
Wire Wire Line
	3650 3000 4450 3000
Wire Wire Line
	5700 2100 5700 2150
Wire Wire Line
	5700 2450 5700 2500
Wire Wire Line
	3650 2100 3650 2550
Wire Wire Line
	3650 2100 3500 2100
Connection ~ 3650 2100
Wire Wire Line
	5800 2100 5700 2100
Connection ~ 5700 2100
Text Label 5800 2100 0    50   ~ 0
OUT-
$Comp
L Device:Transformer_1P_1S T1
U 1 1 5EC91624
P 4900 2300
F 0 "T1" H 4900 2681 50  0001 C CNN
F 1 "1::N" H 4900 2589 50  0000 C CNN
F 2 "" H 4900 2300 50  0001 C CNN
F 3 "~" H 4900 2300 50  0001 C CNN
	1    4900 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2100 5700 2100
Wire Wire Line
	5300 2500 5350 2500
Wire Wire Line
	5700 2500 5800 2500
Wire Wire Line
	5650 2500 5700 2500
Connection ~ 5700 2500
Wire Wire Line
	4500 2500 4450 2500
$EndSCHEMATC
