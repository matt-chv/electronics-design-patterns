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
L Amplifier_Operational:LM324 U1
U 1 1 5FC2ABB1
P 5550 3350
F 0 "U1" H 5550 3625 50  0000 C CNN
F 1 "LM324" H 5550 3626 50  0001 C CNN
F 2 "" H 5500 3450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 5600 3550 50  0001 C CNN
	1    5550 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FC2B5AC
P 5250 3900
F 0 "R1" H 5320 3900 50  0000 L CNN
F 1 "R" H 5320 3855 50  0001 L CNN
F 2 "" V 5180 3900 50  0001 C CNN
F 3 "~" H 5250 3900 50  0001 C CNN
	1    5250 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FC2BBDD
P 5550 3750
F 0 "R2" V 5435 3750 50  0000 C CNN
F 1 "R" V 5434 3750 50  0001 C CNN
F 2 "" V 5480 3750 50  0001 C CNN
F 3 "~" H 5550 3750 50  0001 C CNN
	1    5550 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3250 4850 3250
Text Label 4900 3250 0    50   ~ 0
VIN
Wire Wire Line
	5250 3450 5250 3750
Wire Wire Line
	5400 3750 5250 3750
Connection ~ 5250 3750
Wire Wire Line
	5700 3750 5900 3750
Wire Wire Line
	5900 3750 5900 3350
Wire Wire Line
	5900 3350 5850 3350
Wire Wire Line
	5900 3350 6200 3350
Connection ~ 5900 3350
Text Label 6050 3350 0    50   ~ 0
VOUT
$Comp
L power:GND #PWR01
U 1 1 5FC2CF7A
P 5250 4150
F 0 "#PWR01" H 5250 3900 50  0001 C CNN
F 1 "GND" H 5255 3977 50  0000 C CNN
F 2 "" H 5250 4150 50  0001 C CNN
F 3 "" H 5250 4150 50  0001 C CNN
	1    5250 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 4150 5250 4050
$EndSCHEMATC
