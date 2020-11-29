EESchema Schematic File Version 4
<<<<<<< HEAD
LIBS:voltage divider-cache
=======
>>>>>>> 4c8e9a7... update to jekyll blog template
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
P 4550 3000
F 0 "R1" H 4620 3000 50  0000 L CNN
F 1 "R" H 4620 2955 50  0001 L CNN
F 2 "" V 4480 3000 50  0001 C CNN
F 3 "~" H 4550 3000 50  0001 C CNN
	1    4550 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5EC5BAE8
P 4550 3450
F 0 "R2" H 4620 3450 50  0000 L CNN
F 1 "R" H 4620 3405 50  0001 L CNN
F 2 "" V 4480 3450 50  0001 C CNN
F 3 "~" H 4550 3450 50  0001 C CNN
	1    4550 3450
	1    0    0    -1  
$EndComp
$Comp
<<<<<<< HEAD
L power:GND #PWR01
U 1 1 5EC5C190
P 4550 3700
F 0 "#PWR01" H 4550 3450 50  0001 C CNN
=======
L power:GND #PWR?
U 1 1 5EC5C190
P 4550 3700
F 0 "#PWR?" H 4550 3450 50  0001 C CNN
>>>>>>> 4c8e9a7... update to jekyll blog template
F 1 "GND" H 4555 3527 50  0000 C CNN
F 2 "" H 4550 3700 50  0001 C CNN
F 3 "" H 4550 3700 50  0001 C CNN
	1    4550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2750 4550 2750
Wire Wire Line
	4550 2750 4550 2850
Wire Wire Line
	4550 3600 4550 3700
Wire Wire Line
	4850 3250 4550 3250
Wire Wire Line
	4550 3150 4550 3250
Connection ~ 4550 3250
Wire Wire Line
	4550 3250 4550 3300
Text Label 4150 2750 0    50   ~ 0
Vin
Text Label 4700 3250 0    50   ~ 0
Vout
<<<<<<< HEAD
$Comp
L Device:R R3
U 1 1 5FC0DCE9
P 5400 3000
F 0 "R3" H 5470 3000 50  0001 L CNN
F 1 "R" H 5470 2955 50  0000 L CNN
F 2 "" V 5330 3000 50  0001 C CNN
F 3 "~" H 5400 3000 50  0001 C CNN
	1    5400 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5FC0DCF5
P 5400 3700
F 0 "#PWR02" H 5400 3450 50  0001 C CNN
F 1 "GND" H 5405 3527 50  0000 C CNN
F 2 "" H 5400 3700 50  0001 C CNN
F 3 "" H 5400 3700 50  0001 C CNN
	1    5400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 2750 5400 2750
Wire Wire Line
	5400 2750 5400 2850
Wire Wire Line
	5400 3600 5400 3700
Wire Wire Line
	5700 3250 5400 3250
Wire Wire Line
	5400 3150 5400 3250
Connection ~ 5400 3250
Wire Wire Line
	5400 3250 5400 3300
Text Label 5000 2750 0    50   ~ 0
Vin
Text Label 5550 3250 0    50   ~ 0
VOUT_LPF
$Comp
L Device:R R4
U 1 1 5FC0E9F5
P 6100 3450
F 0 "R4" H 6170 3450 50  0001 L CNN
F 1 "R" H 6170 3405 50  0000 L CNN
F 2 "" V 6030 3450 50  0001 C CNN
F 3 "~" H 6100 3450 50  0001 C CNN
	1    6100 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5FC0E9FB
P 6100 3700
F 0 "#PWR03" H 6100 3450 50  0001 C CNN
F 1 "GND" H 6105 3527 50  0000 C CNN
F 2 "" H 6100 3700 50  0001 C CNN
F 3 "" H 6100 3700 50  0001 C CNN
	1    6100 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2750 6100 2750
Wire Wire Line
	6100 2750 6100 2850
Wire Wire Line
	6100 3600 6100 3700
Wire Wire Line
	6400 3250 6100 3250
Wire Wire Line
	6100 3150 6100 3250
Connection ~ 6100 3250
Wire Wire Line
	6100 3250 6100 3300
Text Label 5700 2750 0    50   ~ 0
Vin
Text Label 6250 3250 0    50   ~ 0
VOUT_HPF
$Comp
L Device:C C1
U 1 1 5FC0F5E2
P 5400 3450
F 0 "C1" H 5515 3496 50  0001 L CNN
F 1 "C" H 5515 3450 50  0000 L CNN
F 2 "" H 5438 3300 50  0001 C CNN
F 3 "~" H 5400 3450 50  0001 C CNN
	1    5400 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5FC0FB52
P 6100 3000
F 0 "C2" H 6215 3046 50  0001 L CNN
F 1 "C" H 6215 3000 50  0000 L CNN
F 2 "" H 6138 2850 50  0001 C CNN
F 3 "~" H 6100 3000 50  0001 C CNN
	1    6100 3000
	1    0    0    -1  
$EndComp
Text Notes 5350 4000 0    50   ~ 0
LPF\n
Text Notes 6050 4000 0    50   ~ 0
HPF\n
=======
>>>>>>> 4c8e9a7... update to jekyll blog template
$EndSCHEMATC
