EESchema Schematic File Version 4
LIBS:crowbar circuit-cache
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
Text Label 6200 3900 0    50   ~ 0
VOUT
Text Label 5300 3900 0    50   ~ 0
VIN
$Comp
L Device:D_Zener D1
U 1 1 5FC0D3D8
P 6150 4150
F 0 "D1" V 6150 4229 50  0000 L CNN
F 1 "D_Zener" V 6195 4229 50  0001 L CNN
F 2 "" H 6150 4150 50  0001 C CNN
F 3 "~" H 6150 4150 50  0001 C CNN
	1    6150 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 4000 6150 3900
Connection ~ 6150 3900
Wire Wire Line
	6150 3900 6300 3900
$Comp
L power:GND #PWR01
U 1 1 5FC0DD9B
P 6150 4400
F 0 "#PWR01" H 6150 4150 50  0001 C CNN
F 1 "GND" H 6155 4227 50  0000 C CNN
F 2 "" H 6150 4400 50  0001 C CNN
F 3 "" H 6150 4400 50  0001 C CNN
	1    6150 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4400 6150 4300
$Comp
L Device:Fuse F1
U 1 1 5FC0F08B
P 5750 3900
F 0 "F1" V 5645 3900 50  0000 C CNN
F 1 "Fuse" V 5644 3900 50  0001 C CNN
F 2 "" V 5680 3900 50  0001 C CNN
F 3 "~" H 5750 3900 50  0001 C CNN
	1    5750 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	5300 3900 5600 3900
Wire Wire Line
	5900 3900 6150 3900
$EndSCHEMATC
