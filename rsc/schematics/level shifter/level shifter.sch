EESchema Schematic File Version 4
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
L Device:Q_NMOS_DGS Q1
U 1 1 5EC11372
P 5400 2650
F 0 "Q1" V 5651 2650 50  0000 C CNN
F 1 "Q_NMOS_DGS" V 5742 2650 50  0001 C CNN
F 2 "" H 5600 2750 50  0001 C CNN
F 3 "~" H 5400 2650 50  0001 C CNN
	1    5400 2650
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5EC125B1
P 5000 2500
F 0 "R1" H 5070 2500 50  0000 L CNN
F 1 "R" H 5070 2455 50  0001 L CNN
F 2 "" V 4930 2500 50  0001 C CNN
F 3 "~" H 5000 2500 50  0001 C CNN
	1    5000 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5EC13862
P 5750 2500
F 0 "R2" H 5820 2500 50  0000 L CNN
F 1 "R" H 5820 2455 50  0001 L CNN
F 2 "" V 5680 2500 50  0001 C CNN
F 3 "~" H 5750 2500 50  0001 C CNN
	1    5750 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5EC13933
P 5000 2100
F 0 "#PWR?" H 5000 1950 50  0001 C CNN
F 1 "+3V3" H 5015 2273 50  0000 C CNN
F 2 "" H 5000 2100 50  0001 C CNN
F 3 "" H 5000 2100 50  0001 C CNN
	1    5000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2100 5750 2350
Wire Wire Line
	5000 2100 5000 2250
Wire Wire Line
	5750 2650 5750 2750
Wire Wire Line
	5750 2750 5600 2750
Wire Wire Line
	5200 2750 5000 2750
Wire Wire Line
	5000 2750 5000 2650
Wire Wire Line
	5400 2450 5400 2250
Wire Wire Line
	5400 2250 5000 2250
Connection ~ 5000 2250
Wire Wire Line
	5000 2250 5000 2350
Wire Wire Line
	4750 2750 5000 2750
Connection ~ 5000 2750
Wire Wire Line
	6000 2750 5750 2750
Connection ~ 5750 2750
Text Label 5850 2750 0    50   ~ 0
OUT
Text Label 4750 2750 0    50   ~ 0
IN
$Comp
L power:+5V #PWR?
U 1 1 5EC15955
P 5750 2100
F 0 "#PWR?" H 5750 1950 50  0001 C CNN
F 1 "+5V" H 5765 2273 50  0000 C CNN
F 2 "" H 5750 2100 50  0001 C CNN
F 3 "" H 5750 2100 50  0001 C CNN
	1    5750 2100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
