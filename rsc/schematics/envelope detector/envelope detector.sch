EESchema Schematic File Version 4
LIBS:envelope detector-cache
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
L Device:R R1
U 1 1 5EC5B495
P 5650 2900
F 0 "R1" H 5720 2900 50  0000 L CNN
F 1 "R" H 5720 2855 50  0001 L CNN
F 2 "" V 5580 2900 50  0001 C CNN
F 3 "~" H 5650 2900 50  0001 C CNN
	1    5650 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5EC5C190
P 5200 3150
F 0 "#PWR01" H 5200 2900 50  0001 C CNN
F 1 "GND" H 5205 2977 50  0000 C CNN
F 2 "" H 5200 3150 50  0001 C CNN
F 3 "" H 5200 3150 50  0001 C CNN
	1    5200 3150
	1    0    0    -1  
$EndComp
Text Label 4150 2750 0    50   ~ 0
VIN
Text Label 5950 2750 0    50   ~ 0
VOUT
$Comp
L Device:C C1
U 1 1 5FC1371D
P 5200 2900
F 0 "C1" H 5315 2946 50  0000 L CNN
F 1 "C" H 5315 2900 50  0001 L CNN
F 2 "" H 5238 2750 50  0001 C CNN
F 3 "~" H 5200 2900 50  0001 C CNN
	1    5200 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5FC1449D
P 4850 2750
F 0 "D1" H 4850 2626 50  0000 C CNN
F 1 "D" H 4850 2625 50  0001 C CNN
F 2 "" H 4850 2750 50  0001 C CNN
F 3 "~" H 4850 2750 50  0001 C CNN
	1    4850 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 2750 4700 2750
Wire Wire Line
	5000 2750 5200 2750
Wire Wire Line
	5200 2750 5650 2750
Connection ~ 5200 2750
Wire Wire Line
	5650 2750 6100 2750
Connection ~ 5650 2750
Wire Wire Line
	5650 3050 5200 3050
Wire Wire Line
	5200 3050 5200 3150
Connection ~ 5200 3050
$EndSCHEMATC
