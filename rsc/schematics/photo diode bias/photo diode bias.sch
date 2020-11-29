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
L power:GNDREF #PWR?
U 1 1 5E95EFC5
P 3300 2600
F 0 "#PWR?" H 3300 2350 50  0001 C CNN
F 1 "GNDREF" H 3305 2427 50  0001 C CNN
F 2 "" H 3300 2600 50  0001 C CNN
F 3 "" H 3300 2600 50  0001 C CNN
	1    3300 2600
	1    0    0    -1  
$EndComp
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
	3300 2600 3300 2450
Wire Wire Line
	3300 2150 3300 2000
Wire Wire Line
	3300 2000 3950 2000
$Comp
L Device:R R?
U 1 1 5E960590
P 4300 1650
F 0 "R?" V 4093 1650 50  0001 C CNN
F 1 "RF" V 4185 1650 50  0000 C CNN
F 2 "" V 4230 1650 50  0001 C CNN
F 3 "~" H 4300 1650 50  0001 C CNN
	1    4300 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 1650 3950 1650
Wire Wire Line
	3950 1650 3950 2000
Connection ~ 3950 2000
Wire Wire Line
	3950 2000 4100 2000
Wire Wire Line
	4450 1650 4700 1650
Wire Wire Line
	4700 1650 4700 2100
Wire Wire Line
	4700 2100 5100 2100
$Comp
L Amplifier_Current:BQ500100DCK U1
U 1 1 5E95E29C
P 4400 2100
F 0 "U1" H 4744 2100 50  0001 L CNN
F 1 "Amplifier" H 4400 1950 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4400 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/bq500100.pdf" H 4400 2100 50  0001 C CNN
	1    4400 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Photo D1
U 1 1 5E95C5A6
P 3300 2350
F 0 "D1" V 3204 2508 50  0000 L CNN
F 1 "Photodiode" V 3295 2508 50  0000 L CNN
F 2 "" H 3250 2350 50  0001 C CNN
F 3 "~" H 3250 2350 50  0001 C CNN
	1    3300 2350
	0    1    1    0   
$EndComp
Text Notes 3800 2850 0    50   ~ 0
Photovoltaic:\nVout is ipd * RF\nBenefit: reduces dark current
Text Notes 4800 2100 0    50   ~ 0
Vout
$Comp
L power:GNDREF #PWR?
U 1 1 5E9642CF
P 6150 2450
F 0 "#PWR?" H 6150 2200 50  0001 C CNN
F 1 "GNDREF" H 6155 2277 50  0001 C CNN
F 2 "" H 6150 2450 50  0001 C CNN
F 3 "" H 6150 2450 50  0001 C CNN
	1    6150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2450 6150 2200
Wire Wire Line
	6150 2200 6250 2200
Wire Wire Line
	5450 2000 6100 2000
$Comp
L Device:R R?
U 1 1 5E9642DA
P 6450 1650
F 0 "R?" V 6243 1650 50  0001 C CNN
F 1 "RF" V 6335 1650 50  0000 C CNN
F 2 "" V 6380 1650 50  0001 C CNN
F 3 "~" H 6450 1650 50  0001 C CNN
	1    6450 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 1650 6100 1650
Wire Wire Line
	6100 1650 6100 2000
Connection ~ 6100 2000
Wire Wire Line
	6100 2000 6250 2000
Wire Wire Line
	6600 1650 6850 1650
Wire Wire Line
	6850 1650 6850 2100
Wire Wire Line
	6850 2100 7250 2100
$Comp
L Amplifier_Current:BQ500100DCK U?
U 1 1 5E9642E7
P 6550 2100
F 0 "U?" H 6894 2100 50  0001 L CNN
F 1 "Amplifier" H 6550 1950 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 6550 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/bq500100.pdf" H 6550 2100 50  0001 C CNN
	1    6550 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Photo D?
U 1 1 5E9642ED
P 5450 1800
F 0 "D?" V 5354 1958 50  0000 L CNN
F 1 "Photodiode" V 5445 1958 50  0000 L CNN
F 2 "" H 5400 1800 50  0001 C CNN
F 3 "~" H 5400 1800 50  0001 C CNN
	1    5450 1800
	0    1    1    0   
$EndComp
Connection ~ 6850 2100
Text Notes 6950 2100 0    50   ~ 0
Vout
Wire Wire Line
	5450 1900 5450 2000
$Comp
L power:+5V #PWR?
U 1 1 5E9669A4
P 5450 1500
F 0 "#PWR?" H 5450 1350 50  0001 C CNN
F 1 "+5V" H 5465 1673 50  0000 C CNN
F 2 "" H 5450 1500 50  0001 C CNN
F 3 "" H 5450 1500 50  0001 C CNN
	1    5450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1500 5450 1600
Text Notes 5650 3150 0    50   ~ 0
photoconductive (Reverse bias):\nVout is ipd * RF\nBenefit: everse bias increases the width of \nthe depletion junction producing an increased \nresponsivity with a decrease in junction \ncapacitance and produces a very linear response
Connection ~ 4700 2100
$EndSCHEMATC
