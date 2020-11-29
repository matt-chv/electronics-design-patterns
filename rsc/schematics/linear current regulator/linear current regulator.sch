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
Wire Wire Line
	6500 3900 6600 3900
Wire Wire Line
	6600 3900 6900 3900
Wire Wire Line
	6600 3900 6600 4600
Wire Wire Line
	6600 4600 5500 4600
Connection ~ 6600 3900
Text Label 6700 3900 0    70   ~ 0
OUT
Wire Wire Line
	4800 3900 4800 3800
Wire Wire Line
	4800 3900 4800 4000
Connection ~ 4800 3900
Wire Wire Line
	4800 4500 4800 4300
$Comp
L linear_current_regulator-eagle-import:+9V #SUPPLY1
U 1 1 F54A36B8
P 4800 3700
F 0 "#SUPPLY1" H 4800 3700 50  0001 C CNN
F 1 "+9V" H 4725 3825 59  0000 L BNN
F 2 "" H 4800 3700 50  0001 C CNN
F 3 "" H 4800 3700 50  0001 C CNN
	1    4800 3700
	1    0    0    -1  
$EndComp
$Comp
L linear_current_regulator-eagle-import:CAP0402-CAP C1
U 1 1 AC59532D
P 4800 4200
F 0 "C1" H 4860 4315 59  0001 L BNN
F 1 "0.1uF" H 4860 4115 59  0001 L BNN
F 2 "linear_current_regulator:0402-CAP" H 4800 4200 50  0001 C CNN
F 3 "" H 4800 4200 50  0001 C CNN
	1    4800 4200
	1    0    0    -1  
$EndComp
$Comp
L linear_current_regulator-eagle-import:RESISTOR0402-RES R1
U 1 1 FDD0996C
P 6300 3900
F 0 "R1" H 6150 3959 59  0000 L BNN
F 1 "1.2" H 6150 3770 59  0000 L BNN
F 2 "linear_current_regulator:0402-RES" H 6300 3900 50  0001 C CNN
F 3 "" H 6300 3900 50  0001 C CNN
	1    6300 3900
	1    0    0    -1  
$EndComp
$Comp
L linear_current_regulator-eagle-import:GND #GND1
U 1 1 8DA2BB24
P 4800 4600
F 0 "#GND1" H 4800 4600 50  0001 C CNN
F 1 "GND" H 4700 4500 59  0000 L BNN
F 2 "" H 4800 4600 50  0001 C CNN
F 3 "" H 4800 4600 50  0001 C CNN
	1    4800 4600
	1    0    0    -1  
$EndComp
$Comp
L linear_current_regulator-eagle-import:V_REG_317DPACK U1
U 1 1 94FABF20
P 5500 3900
F 0 "U1" H 5600 3600 59  0000 L BNN
F 1 "V_REG_317DPACK" H 5600 3500 59  0000 L BNN
F 2 "linear_current_regulator:V-REG_DPACK" H 5500 3900 50  0001 C CNN
F 3 "" H 5500 3900 50  0001 C CNN
	1    5500 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3900 6100 3900
Wire Wire Line
	5500 4200 5500 4600
Wire Wire Line
	4800 3900 5200 3900
$EndSCHEMATC
