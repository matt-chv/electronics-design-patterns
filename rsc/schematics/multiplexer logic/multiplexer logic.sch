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
L Analog_Switch:CD4051B U1
U 1 1 5EC30B90
P 6100 3600
F 0 "U1" H 6050 4300 50  0000 C CNN
F 1 "CD4051B" H 5700 4400 50  0001 C CNN
F 2 "" H 6250 2850 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/cd4052b.pdf" H 6080 3700 50  0001 C CNN
	1    6100 3600
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5EC3283D
P 6000 2750
F 0 "#PWR?" H 6000 2600 50  0001 C CNN
F 1 "VCC" H 6017 2923 50  0000 C CNN
F 2 "" H 6000 2750 50  0001 C CNN
F 3 "" H 6000 2750 50  0001 C CNN
	1    6000 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5EC32F86
P 6200 4450
F 0 "#PWR?" H 6200 4200 50  0001 C CNN
F 1 "GND" H 6205 4277 50  0000 C CNN
F 2 "" H 6200 4450 50  0001 C CNN
F 3 "" H 6200 4450 50  0001 C CNN
	1    6200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 4450 6200 4400
Wire Wire Line
	6100 4300 6200 4300
Connection ~ 6200 4300
Wire Wire Line
	6000 2900 6000 2850
Wire Wire Line
	5600 3400 5450 3400
Wire Wire Line
	5450 3400 5450 3500
Wire Wire Line
	5450 3500 5600 3500
Wire Wire Line
	5450 3500 5450 3800
Wire Wire Line
	5450 3800 5600 3800
Connection ~ 5450 3500
Wire Wire Line
	5450 3800 5450 4000
Wire Wire Line
	5450 4000 5600 4000
Connection ~ 5450 3800
Wire Wire Line
	5600 3600 5500 3600
Wire Wire Line
	5500 3600 5500 3700
Wire Wire Line
	5500 3700 5600 3700
Wire Wire Line
	5500 3700 5500 3900
Wire Wire Line
	5500 3900 5600 3900
Connection ~ 5500 3700
Wire Wire Line
	5500 3900 5500 4100
Connection ~ 5500 3900
Wire Wire Line
	5500 4100 5600 4100
Wire Wire Line
	5450 4000 5450 4400
Wire Wire Line
	5450 4400 6200 4400
Connection ~ 5450 4000
Connection ~ 6200 4400
Wire Wire Line
	6200 4400 6200 4300
Wire Wire Line
	5500 3600 5500 2850
Wire Wire Line
	5500 2850 6000 2850
Connection ~ 5500 3600
Connection ~ 6000 2850
Wire Wire Line
	6000 2850 6000 2750
$EndSCHEMATC
