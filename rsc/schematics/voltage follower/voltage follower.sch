EESchema Schematic File Version 4
LIBS:Log amplifier-cache
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
U 1 1 5E95F7F2
P 4300 2400
F 0 "#PWR?" H 4300 2150 50  0001 C CNN
F 1 "GNDREF" H 4305 2227 50  0001 C CNN
F 2 "" H 4300 2400 50  0001 C CNN
F 3 "" H 4300 2400 50  0001 C CNN
	1    4300 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2600 4000 2200
Wire Wire Line
	4000 2200 4100 2200
Wire Wire Line
	4700 2100 4850 2100
$Comp
L Amplifier_Current:BQ500100DCK U?
U 1 1 5E95E29C
P 4400 2100
F 0 "U?" H 4744 2100 50  0001 L CNN
F 1 "Amplifier" H 4400 1950 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-363_SC-70-6" H 4400 2100 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/bq500100.pdf" H 4400 2100 50  0001 C CNN
	1    4400 2100
	1    0    0    -1  
$EndComp
Text Label 3400 2000 0    50   ~ 0
VIN
Text Label 4950 2100 0    50   ~ 0
VOUT
Wire Wire Line
	4000 2600 4850 2600
Wire Wire Line
	4850 2600 4850 2100
Connection ~ 4850 2100
Wire Wire Line
	4850 2100 5100 2100
Wire Wire Line
	3400 2000 4100 2000
$Comp
L power:VCC #PWR?
U 1 1 5EC9607A
P 4300 1800
F 0 "#PWR?" H 4300 1650 50  0001 C CNN
F 1 "VCC" H 4317 1973 50  0000 C CNN
F 2 "" H 4300 1800 50  0001 C CNN
F 3 "" H 4300 1800 50  0001 C CNN
	1    4300 1800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
