EESchema Schematic File Version 4
LIBS:differentiator-cache
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
U 1 1 5FC0CF5B
P 7550 4150
F 0 "U1" H 7550 4425 50  0000 C CNN
F 1 "LM324" H 7550 4426 50  0001 C CNN
F 2 "" H 7500 4250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 7600 4350 50  0001 C CNN
	1    7550 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5FC0F29D
P 6950 4050
F 0 "C1" V 6790 4050 50  0000 C CNN
F 1 "C" V 6789 4050 50  0001 C CNN
F 2 "" H 6988 3900 50  0001 C CNN
F 3 "~" H 6950 4050 50  0001 C CNN
	1    6950 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5FC0F934
P 7500 3600
F 0 "R1" V 7385 3600 50  0000 C CNN
F 1 "R" V 7384 3600 50  0001 C CNN
F 2 "" V 7430 3600 50  0001 C CNN
F 3 "~" H 7500 3600 50  0001 C CNN
	1    7500 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 4050 7250 4050
Wire Wire Line
	7250 3600 7350 3600
Wire Wire Line
	7250 3600 7250 4050
Connection ~ 7250 4050
Wire Wire Line
	7850 4150 7850 3600
Wire Wire Line
	7850 3600 7650 3600
Wire Wire Line
	7850 4150 8100 4150
Connection ~ 7850 4150
Wire Wire Line
	6800 4050 6600 4050
Text Label 6650 4050 0    50   ~ 0
VIN
Text Label 8000 4150 0    50   ~ 0
VOUT
$Comp
L power:GND #PWR?
U 1 1 5FC0C00F
P 7250 4550
F 0 "#PWR?" H 7250 4300 50  0001 C CNN
F 1 "GND" H 7255 4377 50  0000 C CNN
F 2 "" H 7250 4550 50  0001 C CNN
F 3 "" H 7250 4550 50  0001 C CNN
	1    7250 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 4250 7250 4550
$EndSCHEMATC
