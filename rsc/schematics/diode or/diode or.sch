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
L Device:D D1
U 1 1 5EC0FC5F
P 4750 2550
F 0 "D1" H 4750 2674 50  0000 C CNN
F 1 "D" H 4750 2675 50  0001 C CNN
F 2 "" H 4750 2550 50  0001 C CNN
F 3 "~" H 4750 2550 50  0001 C CNN
	1    4750 2550
	-1   0    0    -1  
$EndComp
$Comp
L Device:D D2
U 1 1 5EC103A2
P 4750 2850
F 0 "D2" H 4750 2974 50  0000 C CNN
F 1 "D" H 4750 2975 50  0001 C CNN
F 2 "" H 4750 2850 50  0001 C CNN
F 3 "~" H 4750 2850 50  0001 C CNN
	1    4750 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4600 2550 4600 2700
Wire Wire Line
	4900 2550 4900 2700
Wire Wire Line
	5050 2700 4900 2700
Connection ~ 4900 2700
Wire Wire Line
	4900 2700 4900 2850
Wire Wire Line
	4450 2700 4600 2700
Connection ~ 4600 2700
Wire Wire Line
	4600 2700 4600 2850
Text Label 5000 2700 0    50   ~ 0
OUT
Text Label 4450 2700 0    50   ~ 0
IN
$EndSCHEMATC
