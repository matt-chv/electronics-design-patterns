EESchema Schematic File Version 4
LIBS:sample_and_hold-cache
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
U 1 1 5FC13643
P 4900 4100
F 0 "U1" H 4900 3825 50  0000 C CNN
F 1 "LM324" H 4900 3824 50  0001 C CNN
F 2 "" H 4850 4200 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 4950 4300 50  0001 C CNN
	1    4900 4100
	1    0    0    1   
$EndComp
$Comp
L Device:Q_NMOS_DGS Q1
U 1 1 5FC14A03
P 5600 4200
F 0 "Q1" V 5851 4200 50  0000 C CNN
F 1 "Q_NMOS_DGS" V 5852 4200 50  0001 C CNN
F 2 "" H 5800 4300 50  0001 C CNN
F 3 "~" H 5600 4200 50  0001 C CNN
	1    5600 4200
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5FC156BD
P 6050 4250
F 0 "C1" H 6165 4250 50  0000 L CNN
F 1 "C" H 6165 4205 50  0001 L CNN
F 2 "" H 6088 4100 50  0001 C CNN
F 3 "~" H 6050 4250 50  0001 C CNN
	1    6050 4250
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM324 U2
U 1 1 5FC15C78
P 6750 4000
F 0 "U2" H 6750 3725 50  0000 C CNN
F 1 "LM324" H 6750 3724 50  0001 C CNN
F 2 "" H 6700 4100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm2902-n.pdf" H 6800 4200 50  0001 C CNN
	1    6750 4000
	1    0    0    1   
$EndComp
Wire Wire Line
	4600 4200 4200 4200
Text Label 4200 4200 0    50   ~ 0
VIN
Wire Wire Line
	4600 4000 4500 4000
Wire Wire Line
	4500 4000 4500 3750
Wire Wire Line
	4500 3750 5250 3750
Wire Wire Line
	5250 3750 5250 4100
Wire Wire Line
	5250 4100 5200 4100
Wire Wire Line
	5400 4100 5250 4100
Connection ~ 5250 4100
Wire Wire Line
	5800 4100 6050 4100
Wire Wire Line
	6050 4100 6450 4100
Connection ~ 6050 4100
Wire Wire Line
	6450 3900 6450 3650
Wire Wire Line
	6450 3650 7050 3650
Wire Wire Line
	7050 3650 7050 4000
Wire Wire Line
	7050 4000 7350 4000
Connection ~ 7050 4000
Text Label 7200 4000 0    50   ~ 0
VOUT
$Comp
L power:GND #PWR01
U 1 1 5FC1B041
P 6050 4500
F 0 "#PWR01" H 6050 4250 50  0001 C CNN
F 1 "GND" H 6055 4327 50  0000 C CNN
F 2 "" H 6050 4500 50  0001 C CNN
F 3 "" H 6050 4500 50  0001 C CNN
	1    6050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4500 6050 4400
Wire Wire Line
	5600 4400 5600 4650
Wire Wire Line
	5600 4650 4950 4650
Text Label 5000 4650 0    50   ~ 0
CTRL
Wire Notes Line
	4550 4550 4700 4550
Wire Notes Line
	4750 4550 5300 4550
Wire Notes Line
	5300 4550 5300 4350
Wire Notes Line
	5300 4350 5350 4350
Wire Notes Line
	5350 4350 5350 4550
Wire Notes Line
	5350 4550 5400 4550
Wire Notes Line
	4750 4350 4750 4550
Wire Notes Line
	4700 4350 4750 4350
Wire Notes Line
	4700 4550 4700 4350
$EndSCHEMATC
