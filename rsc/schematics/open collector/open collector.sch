EESchema Schematic File Version 4
LIBS:open_collector-cache
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
U 1 1 5FC0B823
P 7050 4500
F 0 "Q1" H 7241 4500 50  0000 L CNN
F 1 "Q_NPN_BCE" H 7241 4455 50  0001 L CNN
F 2 "" H 7250 4600 50  0001 C CNN
F 3 "~" H 7050 4500 50  0001 C CNN
	1    7050 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FC0C16E
P 7150 4050
F 0 "R1" H 7220 4050 50  0000 L CNN
F 1 "R" H 7220 4005 50  0001 L CNN
F 2 "" V 7080 4050 50  0001 C CNN
F 3 "~" H 7150 4050 50  0001 C CNN
	1    7150 4050
	1    0    0    -1  
$EndComp
$Comp
L open_collector-eagle-import:VCC #P+01
U 1 1 5FC0C6F9
P 7150 3700
F 0 "#P+01" H 7150 3700 50  0001 C CNN
F 1 "VCC" H 7150 3822 59  0000 C CNN
F 2 "" H 7150 3700 50  0001 C CNN
F 3 "" H 7150 3700 50  0001 C CNN
	1    7150 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5FC0CE19
P 7150 4750
F 0 "#PWR01" H 7150 4500 50  0001 C CNN
F 1 "GND" H 7155 4577 50  0000 C CNN
F 2 "" H 7150 4750 50  0001 C CNN
F 3 "" H 7150 4750 50  0001 C CNN
	1    7150 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4200 7150 4250
Wire Wire Line
	7150 3900 7150 3800
Wire Wire Line
	6850 4500 6650 4500
Wire Wire Line
	7150 4250 7450 4250
Connection ~ 7150 4250
Wire Wire Line
	7150 4250 7150 4300
Text Label 7350 4250 0    50   ~ 0
VOUT
Text Label 6700 4500 0    50   ~ 0
VIN
Wire Wire Line
	7150 4700 7150 4750
$EndSCHEMATC
