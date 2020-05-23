EESchema Schematic File Version 4
LIBS:photo_diode_bias-cache
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
L power:GNDREF #PWR?
U 1 1 5E95F7F2
P 4000 2450
F 0 "#PWR?" H 4000 2200 50  0001 C CNN
F 1 "GNDREF" H 4005 2277 50  0001 C CNN
F 2 "" H 4000 2450 50  0001 C CNN
F 3 "" H 4000 2450 50  0001 C CNN
	1    4000 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2450 4000 2200
Wire Wire Line
	4000 2200 4100 2200
Wire Wire Line
	4150 1650 3950 1650
Wire Wire Line
	3950 1650 3950 2000
Wire Wire Line
	3950 2000 4100 2000
Wire Wire Line
	4450 1650 4700 1650
Wire Wire Line
	4700 1650 4700 2100
Wire Wire Line
	4700 2100 5100 2100
$Comp
L Amplifier_Current:BQ500100DCK U?
U 1 1 5E95E29C
P 4400 2100
F 0 "U?" H 4744 2100 50  0001 L CNN
F 1 "Amplifier" H 4400 1950 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4400 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/bq500100.pdf" H 4400 2100 50  0001 C CNN
	1    4400 2100
	1    0    0    -1  
$EndComp
Connection ~ 4700 2100
$Comp
L Device:D D1
U 1 1 5EC948E7
P 4300 1650
F 0 "D1" H 4300 1526 50  0000 C CNN
F 1 "D" H 4300 1525 50  0001 C CNN
F 2 "" H 4300 1650 50  0001 C CNN
F 3 "~" H 4300 1650 50  0001 C CNN
	1    4300 1650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5EC950B1
P 3700 2000
F 0 "R1" V 3585 2000 50  0000 C CNN
F 1 "R" V 3584 2000 50  0001 C CNN
F 2 "" V 3630 2000 50  0001 C CNN
F 3 "~" H 3700 2000 50  0001 C CNN
	1    3700 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 2000 3550 2000
Text Label 3400 2000 0    50   ~ 0
VIN
Wire Wire Line
	3850 2000 3950 2000
Connection ~ 3950 2000
Text Label 4950 2100 0    50   ~ 0
VOUT
$EndSCHEMATC
