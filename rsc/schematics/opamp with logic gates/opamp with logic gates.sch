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
L 74xx:74HC14 U1
U 1 1 5EC3CD8C
P 3550 2550
F 0 "U1" H 3550 2867 50  0000 C CNN
F 1 "74HC14" H 3550 2776 50  0000 C CNN
F 2 "" H 3550 2550 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 3550 2550 50  0001 C CNN
	1    3550 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1_In
U 1 1 5EC3FA36
P 2800 2550
F 0 "C1_In" V 2640 2550 50  0000 C CNN
F 1 "C" V 2639 2550 50  0001 C CNN
F 2 "" H 2838 2400 50  0001 C CNN
F 3 "~" H 2800 2550 50  0001 C CNN
	1    2800 2550
	0    1    1    0   
$EndComp
$Comp
L Device:C C2_stray
U 1 1 5EC40670
P 3100 2800
F 0 "C2_stray" H 2985 2800 50  0000 R CNN
F 1 "C" H 2985 2845 50  0001 R CNN
F 2 "" H 3138 2650 50  0001 C CNN
F 3 "~" H 3100 2800 50  0001 C CNN
	1    3100 2800
	-1   0    0    1   
$EndComp
$Comp
L Device:C C3
U 1 1 5EC41034
P 4600 2800
F 0 "C3" H 4715 2800 50  0000 L CNN
F 1 "C" H 4715 2755 50  0001 L CNN
F 2 "" H 4638 2650 50  0001 C CNN
F 3 "~" H 4600 2800 50  0001 C CNN
	1    4600 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1_OSC
U 1 1 5EC41659
P 3550 2000
F 0 "R1_OSC" V 3343 2000 50  0000 C CNN
F 1 "R" V 3434 2000 50  0000 C CNN
F 2 "" V 3480 2000 50  0001 C CNN
F 3 "~" H 3550 2000 50  0001 C CNN
	1    3550 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5EC424A8
P 4250 2550
F 0 "R2" V 4135 2550 50  0000 C CNN
F 1 "R" V 4134 2550 50  0001 C CNN
F 2 "" V 4180 2550 50  0001 C CNN
F 3 "~" H 4250 2550 50  0001 C CNN
	1    4250 2550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC42F23
P 3800 3000
F 0 "#PWR?" H 3800 2750 50  0001 C CNN
F 1 "GND" H 3805 2827 50  0000 C CNN
F 2 "" H 3800 3000 50  0001 C CNN
F 3 "" H 3800 3000 50  0001 C CNN
	1    3800 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2550 3100 2550
Wire Wire Line
	3100 2650 3100 2550
Connection ~ 3100 2550
Wire Wire Line
	3100 2550 3200 2550
Wire Wire Line
	3850 2550 3950 2550
Wire Wire Line
	3700 2000 3950 2000
Wire Wire Line
	3950 2000 3950 2550
Connection ~ 3950 2550
Wire Wire Line
	3950 2550 4100 2550
Wire Wire Line
	3400 2000 3200 2000
Wire Wire Line
	3200 2000 3200 2550
Connection ~ 3200 2550
Wire Wire Line
	3200 2550 3250 2550
Wire Wire Line
	3100 2950 3800 2950
Wire Wire Line
	3800 2950 3800 3000
Wire Wire Line
	4600 2950 3800 2950
Connection ~ 3800 2950
Wire Wire Line
	4400 2550 4600 2550
Wire Wire Line
	4600 2550 4600 2650
Wire Wire Line
	4600 2550 4850 2550
Connection ~ 4600 2550
Wire Wire Line
	2650 2550 2450 2550
Text Label 2450 2550 0    50   ~ 0
Vin_AC
Text Label 4700 2550 0    50   ~ 0
VOUT_AC
$EndSCHEMATC
