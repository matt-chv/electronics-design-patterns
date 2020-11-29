EESchema Schematic File Version 4
<<<<<<< HEAD
LIBS:capacitance multiplier-cache
=======
LIBS:gyrator-cache
>>>>>>> 62b9d21... adding capacitance multiplier
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
<<<<<<< HEAD
L power:GNDREF #PWR03
U 1 1 5E95F7F2
P 4300 2400
F 0 "#PWR03" H 4300 2150 50  0001 C CNN
=======
L power:GNDREF #PWR?
U 1 1 5E95F7F2
P 4300 2400
F 0 "#PWR?" H 4300 2150 50  0001 C CNN
>>>>>>> 62b9d21... adding capacitance multiplier
F 1 "GNDREF" H 4305 2227 50  0001 C CNN
F 2 "" H 4300 2400 50  0001 C CNN
F 3 "" H 4300 2400 50  0001 C CNN
	1    4300 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2100 4850 2100
$Comp
<<<<<<< HEAD
L Amplifier_Current:BQ500100DCK U1
U 1 1 5E95E29C
P 4400 2100
F 0 "U1" H 4744 2100 50  0001 L CNN
=======
L Amplifier_Current:BQ500100DCK U?
U 1 1 5E95E29C
P 4400 2100
F 0 "U?" H 4744 2100 50  0001 L CNN
>>>>>>> 62b9d21... adding capacitance multiplier
F 1 "Amplifier" H 4400 1950 50  0001 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4400 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/bq500100.pdf" H 4400 2100 50  0001 C CNN
	1    4400 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2600 4850 2600
Wire Wire Line
	4850 2600 4850 2100
$Comp
<<<<<<< HEAD
L power:VCC #PWR02
U 1 1 5EC9607A
P 4300 1800
F 0 "#PWR02" H 4300 1650 50  0001 C CNN
=======
L power:VCC #PWR?
U 1 1 5EC9607A
P 4300 1800
F 0 "#PWR?" H 4300 1650 50  0001 C CNN
>>>>>>> 62b9d21... adding capacitance multiplier
F 1 "VCC" H 4317 1973 50  0000 C CNN
F 2 "" H 4300 1800 50  0001 C CNN
F 3 "" H 4300 1800 50  0001 C CNN
	1    4300 1800
	1    0    0    -1  
$EndComp
$Comp
<<<<<<< HEAD
L Device:R R1
U 1 1 5ECAD778
P 4000 1800
F 0 "R1" V 4100 1700 50  0000 C CNN
=======
L Device:R R?
U 1 1 5ECAD778
P 4000 1800
F 0 "R?" V 4100 1800 50  0000 C CNN
>>>>>>> 62b9d21... adding capacitance multiplier
F 1 "R" V 4100 1800 50  0001 C CNN
F 2 "" V 3930 1800 50  0001 C CNN
F 3 "~" H 4000 1800 50  0001 C CNN
	1    4000 1800
	-1   0    0    1   
$EndComp
$Comp
<<<<<<< HEAD
L Device:C C1
U 1 1 5ECADA2A
P 3850 2000
F 0 "C1" V 3690 2000 50  0000 C CNN
=======
L Device:C C?
U 1 1 5ECADA2A
P 3850 2000
F 0 "C?" V 3690 2000 50  0000 C CNN
>>>>>>> 62b9d21... adding capacitance multiplier
F 1 "C" V 3689 2000 50  0001 C CNN
F 2 "" H 3888 1850 50  0001 C CNN
F 3 "~" H 3850 2000 50  0001 C CNN
	1    3850 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	3500 2000 3700 2000
Wire Wire Line
	4000 2600 4000 2200
Wire Wire Line
	4000 2200 4100 2200
$Comp
<<<<<<< HEAD
L power:GNDREF #PWR01
U 1 1 5ECB077B
P 3500 2200
F 0 "#PWR01" H 3500 1950 50  0001 C CNN
=======
L power:GNDREF #PWR?
U 1 1 5ECB077B
P 3500 2200
F 0 "#PWR?" H 3500 1950 50  0001 C CNN
>>>>>>> 62b9d21... adding capacitance multiplier
F 1 "GNDREF" H 3505 2027 50  0001 C CNN
F 2 "" H 3500 2200 50  0001 C CNN
F 3 "" H 3500 2200 50  0001 C CNN
	1    3500 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2200 3500 2000
Wire Wire Line
	4000 2000 4100 2000
$Comp
<<<<<<< HEAD
L Device:R R2
U 1 1 5ECB46D4
P 4300 1500
F 0 "R2" V 4400 1500 50  0000 C CNN
=======
L Device:R R?
U 1 1 5ECB46D4
P 4300 1500
F 0 "R?" V 4400 1500 50  0000 C CNN
>>>>>>> 62b9d21... adding capacitance multiplier
F 1 "R" V 4400 1500 50  0001 C CNN
F 2 "" V 4230 1500 50  0001 C CNN
F 3 "~" H 4300 1500 50  0001 C CNN
	1    4300 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
<<<<<<< HEAD
=======
	4450 1500 4850 1500
Wire Wire Line
>>>>>>> 62b9d21... adding capacitance multiplier
	4850 1500 4850 2100
Connection ~ 4850 2100
Wire Wire Line
	4000 1500 4000 1650
Wire Wire Line
	4000 1950 4000 2000
Connection ~ 4000 2000
Wire Wire Line
	4150 1500 4000 1500
Wire Wire Line
	4000 1500 3500 1500
Connection ~ 4000 1500
Text Label 3500 1500 0    50   ~ 0
VIN
<<<<<<< HEAD
Wire Wire Line
	4450 1500 4850 1500
Connection ~ 4850 1500
Wire Wire Line
	4850 1500 5200 1500
Text Label 5000 1500 0    50   ~ 0
VOUT
=======
>>>>>>> 62b9d21... adding capacitance multiplier
$EndSCHEMATC
