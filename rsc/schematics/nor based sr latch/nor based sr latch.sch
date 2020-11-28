EESchema Schematic File Version 4
LIBS:nor_based_sr_latch-cache
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
L 74xGxx:74AHC1G02 U1
U 1 1 5FC0B508
P 5650 2400
F 0 "U1" H 5625 2575 50  0000 C CNN
F 1 "74AHC1G02" H 5625 2576 50  0001 C CNN
F 2 "" H 5650 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5650 2400 50  0001 C CNN
	1    5650 2400
	1    0    0    -1  
$EndComp
$Comp
L 74xGxx:74AHC1G02 U2
U 1 1 5FC0C394
P 5650 2900
F 0 "U2" H 5600 2750 50  0000 C CNN
F 1 "74AHC1G02" H 5625 3076 50  0001 C CNN
F 2 "" H 5650 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 5650 2900 50  0001 C CNN
	1    5650 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 2350 5000 2350
Wire Wire Line
	5900 2900 5950 2900
Wire Wire Line
	5350 2950 5000 2950
Wire Wire Line
	5350 2450 5250 2450
Wire Wire Line
	5250 2450 5250 2550
Connection ~ 5950 2900
Wire Wire Line
	5950 2900 6250 2900
Wire Wire Line
	5900 2400 5950 2400
Wire Wire Line
	5950 2400 5950 2550
Wire Wire Line
	5950 2550 5250 2750
Wire Wire Line
	5250 2750 5250 2850
Wire Wire Line
	5250 2850 5350 2850
Connection ~ 5950 2400
Wire Wire Line
	5950 2400 6250 2400
Wire Wire Line
	5950 2750 5250 2550
Wire Wire Line
	5950 2750 5950 2900
Text Label 5100 2350 0    50   ~ 0
R
Text Label 5100 2950 0    50   ~ 0
S
Text Label 6150 2400 0    50   ~ 0
Q
Text Label 6150 2900 0    50   ~ 0
~Q
$EndSCHEMATC
