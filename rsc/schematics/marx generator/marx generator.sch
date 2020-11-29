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
L Device:C C1
U 1 1 5ECBD53C
P 900 2250
F 0 "C1" V 648 2250 50  0000 C CNN
F 1 "C" V 739 2250 50  0000 C CNN
F 2 "" H 938 2100 50  0001 C CNN
F 3 "~" H 900 2250 50  0001 C CNN
	1    900  2250
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5ECBD5D1
P 1950 2250
F 0 "C2" V 1698 2250 50  0000 C CNN
F 1 "C" V 1789 2250 50  0001 C CNN
F 2 "" H 1988 2100 50  0001 C CNN
F 3 "~" H 1950 2250 50  0001 C CNN
	1    1950 2250
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_CBE Q?
U 1 1 5ECBEC44
P 1300 2350
F 0 "Q?" V 1537 2350 50  0001 C CNN
F 1 "Q_NPN_CBE" V 1537 2350 50  0001 C CNN
F 2 "" H 1500 2450 50  0001 C CNN
F 3 "~" H 1300 2350 50  0001 C CNN
	1    1300 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C0
U 1 1 5ECBF515
P 1300 2750
F 0 "C0" H 1185 2704 50  0000 R CNN
F 1 "C" H 1185 2795 50  0000 R CNN
F 2 "" H 1338 2600 50  0001 C CNN
F 3 "~" H 1300 2750 50  0001 C CNN
	1    1300 2750
	-1   0    0    1   
$EndComp
$Comp
L Device:R R0
U 1 1 5ECBFB9E
P 1500 2550
F 0 "R0" V 1385 2550 50  0000 C CNN
F 1 "R" V 1384 2550 50  0001 C CNN
F 2 "" V 1430 2550 50  0001 C CNN
F 3 "~" H 1500 2550 50  0001 C CNN
	1    1500 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5ECC01E1
P 1050 1850
F 0 "R1" H 980 1804 50  0000 R CNN
F 1 "R" H 980 1895 50  0000 R CNN
F 2 "" V 980 1850 50  0001 C CNN
F 3 "~" H 1050 1850 50  0001 C CNN
	1    1050 1850
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5ECC0B4D
P 1050 1600
F 0 "#PWR?" H 1050 1450 50  0001 C CNN
F 1 "VCC" H 1067 1773 50  0000 C CNN
F 2 "" H 1050 1600 50  0001 C CNN
F 3 "" H 1050 1600 50  0001 C CNN
	1    1050 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ECC0E77
P 750 2950
F 0 "#PWR?" H 750 2700 50  0001 C CNN
F 1 "GND" H 755 2777 50  0000 C CNN
F 2 "" H 750 2950 50  0001 C CNN
F 3 "" H 750 2950 50  0001 C CNN
	1    750  2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ECC1279
P 1750 2950
F 0 "#PWR?" H 1750 2700 50  0001 C CNN
F 1 "GND" H 1755 2777 50  0000 C CNN
F 2 "" H 1750 2950 50  0001 C CNN
F 3 "" H 1750 2950 50  0001 C CNN
	1    1750 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ECC19B8
P 2350 2950
F 0 "#PWR?" H 2350 2700 50  0001 C CNN
F 1 "GND" H 2355 2777 50  0000 C CNN
F 2 "" H 2350 2950 50  0001 C CNN
F 3 "" H 2350 2950 50  0001 C CNN
	1    2350 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5ECC229B
P 1750 2750
F 0 "R16" H 1680 2704 50  0000 R CNN
F 1 "R" H 1680 2795 50  0001 R CNN
F 2 "" V 1680 2750 50  0001 C CNN
F 3 "~" H 1750 2750 50  0001 C CNN
	1    1750 2750
	-1   0    0    1   
$EndComp
$Comp
L Device:Q_NPN_CBE Q?
U 1 1 5ECC2D1A
P 2350 2350
F 0 "Q?" V 2587 2350 50  0001 C CNN
F 1 "Q_NPN_CBE" V 2587 2350 50  0001 C CNN
F 2 "" H 2550 2450 50  0001 C CNN
F 3 "~" H 2350 2350 50  0001 C CNN
	1    2350 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 5ECC39B2
P 2350 2750
F 0 "R17" H 2280 2704 50  0000 R CNN
F 1 "R" H 2280 2795 50  0001 R CNN
F 2 "" V 2280 2750 50  0001 C CNN
F 3 "~" H 2350 2750 50  0001 C CNN
	1    2350 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 2900 2350 2950
Wire Wire Line
	2350 2550 2350 2600
Wire Wire Line
	2550 2250 2600 2250
Wire Wire Line
	2350 2550 2550 2550
Wire Wire Line
	2550 2550 2550 2250
Connection ~ 2350 2550
Connection ~ 2550 2250
Wire Wire Line
	1750 2600 1750 2250
Wire Wire Line
	1750 2900 1750 2950
$Comp
L Device:R RM
U 1 1 5ECD24F3
P 750 2750
F 0 "RM" H 680 2750 50  0000 R CNN
F 1 "R" H 680 2795 50  0001 R CNN
F 2 "" V 680 2750 50  0001 C CNN
F 3 "~" H 750 2750 50  0001 C CNN
	1    750  2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	750  2600 750  2250
Wire Wire Line
	750  2900 750  2950
Wire Wire Line
	1050 2000 1050 2250
Wire Wire Line
	1050 2250 1100 2250
Connection ~ 1050 2250
Wire Wire Line
	1050 1600 1050 1700
$Comp
L Device:R R2
U 1 1 5ECD4BD5
P 2150 1850
F 0 "R2" H 2080 1850 50  0000 R CNN
F 1 "R" H 2080 1895 50  0001 R CNN
F 2 "" V 2080 1850 50  0001 C CNN
F 3 "~" H 2150 1850 50  0001 C CNN
	1    2150 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 2000 2150 2250
Wire Wire Line
	2100 2250 2150 2250
Connection ~ 2150 2250
Wire Wire Line
	1350 2550 1300 2550
Wire Wire Line
	1300 2550 1300 2600
Connection ~ 1300 2550
Wire Wire Line
	1650 2550 1650 2250
Wire Wire Line
	1650 2250 1500 2250
Wire Wire Line
	1650 2250 1750 2250
Connection ~ 1650 2250
Connection ~ 1750 2250
$Comp
L Device:C C15
U 1 1 5ED10000
P 3850 2250
F 0 "C15" V 3598 2250 50  0000 C CNN
F 1 "C" V 3689 2250 50  0000 C CNN
F 2 "" H 3888 2100 50  0001 C CNN
F 3 "~" H 3850 2250 50  0001 C CNN
	1    3850 2250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5ED10006
P 3450 2950
F 0 "#PWR?" H 3450 2700 50  0001 C CNN
F 1 "GND" H 3455 2777 50  0000 C CNN
F 2 "" H 3450 2950 50  0001 C CNN
F 3 "" H 3450 2950 50  0001 C CNN
	1    3450 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CBE Q?
U 1 1 5ED1000C
P 3450 2350
F 0 "Q?" V 3687 2350 50  0001 C CNN
F 1 "Q_NPN_CBE" V 3687 2350 50  0001 C CNN
F 2 "" H 3650 2450 50  0001 C CNN
F 3 "~" H 3450 2350 50  0001 C CNN
	1    3450 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R29
U 1 1 5ED10012
P 3450 2750
F 0 "R29" H 3380 2704 50  0000 R CNN
F 1 "R" H 3380 2795 50  0001 R CNN
F 2 "" V 3380 2750 50  0001 C CNN
F 3 "~" H 3450 2750 50  0001 C CNN
	1    3450 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 2900 3450 2950
Wire Wire Line
	3450 2550 3450 2600
Wire Wire Line
	3650 2250 3700 2250
Wire Wire Line
	3450 2550 3650 2550
Wire Wire Line
	3650 2550 3650 2250
Connection ~ 3450 2550
Connection ~ 3650 2250
$Comp
L Device:R R14
U 1 1 5ED1001F
P 3250 1850
F 0 "R14" H 3180 1850 50  0000 R CNN
F 1 "R" H 3180 1895 50  0001 R CNN
F 2 "" V 3180 1850 50  0001 C CNN
F 3 "~" H 3250 1850 50  0001 C CNN
	1    3250 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 2000 3250 2250
Wire Wire Line
	3200 2250 3250 2250
Connection ~ 3250 2250
$Comp
L power:GND #PWR?
U 1 1 5ED140CF
P 4550 2950
F 0 "#PWR?" H 4550 2700 50  0001 C CNN
F 1 "GND" H 4555 2777 50  0000 C CNN
F 2 "" H 4550 2950 50  0001 C CNN
F 3 "" H 4550 2950 50  0001 C CNN
	1    4550 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_CBE Q?
U 1 1 5ED140D5
P 4250 2350
F 0 "Q?" V 4487 2350 50  0001 C CNN
F 1 "Q_NPN_CBE" V 4487 2350 50  0001 C CNN
F 2 "" H 4450 2450 50  0001 C CNN
F 3 "~" H 4250 2350 50  0001 C CNN
	1    4250 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R RL
U 1 1 5ED140DB
P 4550 2750
F 0 "RL" H 4480 2704 50  0000 R CNN
F 1 "R" H 4480 2795 50  0001 R CNN
F 2 "" V 4480 2750 50  0001 C CNN
F 3 "~" H 4550 2750 50  0001 C CNN
	1    4550 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 2550 4450 2550
Wire Wire Line
	4450 2550 4450 2250
Connection ~ 4450 2250
$Comp
L Device:R R15
U 1 1 5ED140E8
P 4050 1850
F 0 "R15" H 3980 1850 50  0000 R CNN
F 1 "R" H 3980 1895 50  0001 R CNN
F 2 "" V 3980 1850 50  0001 C CNN
F 3 "~" H 4050 1850 50  0001 C CNN
	1    4050 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4050 2000 4050 2250
Wire Wire Line
	4000 2250 4050 2250
Connection ~ 4050 2250
Wire Wire Line
	4550 2950 4550 2900
Wire Wire Line
	4550 2600 4550 2250
Wire Wire Line
	4450 2250 4550 2250
Wire Wire Line
	1650 2550 1650 3000
Wire Wire Line
	1650 3000 1550 3000
Connection ~ 1650 2550
Wire Wire Line
	1300 2900 1300 3000
Wire Wire Line
	1300 3000 1400 3000
Wire Wire Line
	3000 2250 3050 2250
Wire Wire Line
	3100 2250 3150 2250
$Comp
L power:VCC #PWR?
U 1 1 5ED33518
P 2150 1600
F 0 "#PWR?" H 2150 1450 50  0001 C CNN
F 1 "VCC" H 2167 1773 50  0000 C CNN
F 2 "" H 2150 1600 50  0001 C CNN
F 3 "" H 2150 1600 50  0001 C CNN
	1    2150 1600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5ED33DF9
P 3250 1600
F 0 "#PWR?" H 3250 1450 50  0001 C CNN
F 1 "VCC" H 3267 1773 50  0000 C CNN
F 2 "" H 3250 1600 50  0001 C CNN
F 3 "" H 3250 1600 50  0001 C CNN
	1    3250 1600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5ED347C9
P 4050 1600
F 0 "#PWR?" H 4050 1450 50  0001 C CNN
F 1 "VCC" H 4067 1773 50  0000 C CNN
F 2 "" H 4050 1600 50  0001 C CNN
F 3 "" H 4050 1600 50  0001 C CNN
	1    4050 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1600 4050 1700
Wire Wire Line
	2150 1600 2150 1700
Wire Wire Line
	3250 1600 3250 1700
$Comp
L Device:C C3
U 1 1 5ED3B365
P 2700 2250
F 0 "C3" V 2448 2250 50  0000 C CNN
F 1 "C" V 2539 2250 50  0001 C CNN
F 2 "" H 2738 2100 50  0001 C CNN
F 3 "~" H 2700 2250 50  0001 C CNN
	1    2700 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	2900 2250 2950 2250
Wire Wire Line
	1300 3100 1450 3100
Wire Wire Line
	1450 3100 1450 2950
Wire Wire Line
	1450 2950 1500 2950
Wire Wire Line
	1500 2950 1500 3100
Wire Wire Line
	1500 3100 1600 3100
Wire Wire Line
	1750 2250 1850 2250
$EndSCHEMATC
