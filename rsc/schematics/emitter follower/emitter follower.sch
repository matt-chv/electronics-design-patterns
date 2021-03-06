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
L Device:Q_NPN_BCE Q1
U 1 1 5FC28311
P 6900 3850
F 0 "Q1" H 7091 3850 50  0000 L CNN
F 1 "Q_NPN_BCE" H 7091 3805 50  0001 L CNN
F 2 "" H 7100 3950 50  0001 C CNN
F 3 "~" H 6900 3850 50  0001 C CNN
	1    6900 3850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5FC289EF
P 7000 3550
F 0 "#PWR01" H 7000 3400 50  0001 C CNN
F 1 "VCC" H 7017 3723 50  0000 C CNN
F 2 "" H 7000 3550 50  0001 C CNN
F 3 "" H 7000 3550 50  0001 C CNN
	1    7000 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FC29000
P 7000 4300
F 0 "R1" H 7070 4300 50  0000 L CNN
F 1 "R" H 7070 4255 50  0001 L CNN
F 2 "" V 6930 4300 50  0001 C CNN
F 3 "~" H 7000 4300 50  0001 C CNN
	1    7000 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5FC296FB
P 7000 4550
F 0 "#PWR02" H 7000 4300 50  0001 C CNN
F 1 "GND" H 7005 4377 50  0000 C CNN
F 2 "" H 7000 4550 50  0001 C CNN
F 3 "" H 7000 4550 50  0001 C CNN
	1    7000 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3850 6700 3850
Text Label 6600 3850 0    50   ~ 0
VIN
Wire Wire Line
	7000 4050 7000 4100
Wire Wire Line
	7000 4450 7000 4550
Wire Wire Line
	7000 4100 7400 4100
Connection ~ 7000 4100
Wire Wire Line
	7000 4100 7000 4150
Text Label 7250 4100 0    50   ~ 0
VOUT
Wire Wire Line
	7000 3650 7000 3550
$EndSCHEMATC
