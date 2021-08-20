EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Connector_Generic:Conn_01x08 J?
U 1 1 5DFDF18E
P 1100 1000
AR Path="/5DFC5AD9/5DFDF18E" Ref="J?"  Part="1" 
AR Path="/5E0E0A68/5DFDF18E" Ref="J?"  Part="1" 
F 0 "J?" H 1180 992 50  0000 L CNN
F 1 "DigitalIO" H 1180 901 50  0000 L CNN
F 2 "" H 1100 1000 50  0001 C CNN
F 3 "~" H 1100 1000 50  0001 C CNN
	1    1100 1000
	1    0    0    -1  
$EndComp
$Comp
L CC1101:CC1101 U?
U 1 1 5DFDF198
P 3050 1550
AR Path="/5DFDF198" Ref="U?"  Part="1" 
AR Path="/5DFC5AD9/5DFDF198" Ref="U?"  Part="1" 
AR Path="/5E0E0A68/5DFDF198" Ref="U?"  Part="1" 
F 0 "U?" H 3050 2520 50  0000 C CNN
F 1 "CC1101" H 3050 2429 50  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-20-1EP_4x4mm_Pitch0.5mm" H 3050 1550 50  0001 L BNN
F 3 "http://www.ti.com/lit/ds/symlink/cc1101.pdf" H 3050 1550 50  0001 L BNN
F 4 "-" H 3050 1550 50  0001 L BNN "Field4"
F 5 "55R2471" H 3050 1550 50  0001 L BNN "Field5"
F 6 "QFN-20" H 3050 1550 50  0001 L BNN "Field6"
F 7 "CC1101RGP" H 3050 1550 50  0001 L BNN "Field7"
	1    3050 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5DFDF19E
P 9500 650
AR Path="/5DFC5AD9/5DFDF19E" Ref="J?"  Part="1" 
AR Path="/5E0E0A68/5DFDF19E" Ref="J?"  Part="1" 
F 0 "J?" H 9600 625 50  0000 L CNN
F 1 "Local RF Out" H 9600 534 50  0000 L CNN
F 2 "" H 9500 650 50  0001 C CNN
F 3 " ~" H 9500 650 50  0001 C CNN
	1    9500 650 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5DFDF1A4
P 7400 1450
AR Path="/5DFC5AD9/5DFDF1A4" Ref="C?"  Part="1" 
AR Path="/5E0E0A68/5DFDF1A4" Ref="C?"  Part="1" 
F 0 "C?" V 7600 1400 50  0000 L CNN
F 1 "12pF" V 7500 1350 50  0000 L CNN
F 2 "" H 7400 1450 50  0001 C CNN
F 3 "~" H 7400 1450 50  0001 C CNN
	1    7400 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5DFDF1AA
P 5900 1600
AR Path="/5DFC5AD9/5DFDF1AA" Ref="C?"  Part="1" 
AR Path="/5E0E0A68/5DFDF1AA" Ref="C?"  Part="1" 
F 0 "C?" V 6100 1550 50  0000 L CNN
F 1 "1.5pF" V 6000 1500 50  0000 L CNN
F 2 "" H 5900 1600 50  0001 C CNN
F 3 "~" H 5900 1600 50  0001 C CNN
	1    5900 1600
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5DFDF1B0
P 5550 2200
AR Path="/5DFC5AD9/5DFDF1B0" Ref="C?"  Part="1" 
AR Path="/5E0E0A68/5DFDF1B0" Ref="C?"  Part="1" 
F 0 "C?" H 5642 2246 50  0000 L CNN
F 1 "100pF" H 5642 2155 50  0000 L CNN
F 2 "" H 5550 2200 50  0001 C CNN
F 3 "~" H 5550 2200 50  0001 C CNN
	1    5550 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5DFDF1B6
P 5450 1450
AR Path="/5DFC5AD9/5DFDF1B6" Ref="C?"  Part="1" 
AR Path="/5E0E0A68/5DFDF1B6" Ref="C?"  Part="1" 
F 0 "C?" H 5542 1496 50  0000 L CNN
F 1 "1pF" H 5542 1405 50  0000 L CNN
F 2 "" H 5450 1450 50  0001 C CNN
F 3 "~" H 5450 1450 50  0001 C CNN
	1    5450 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5DFDF1BC
P 5550 850
AR Path="/5DFC5AD9/5DFDF1BC" Ref="C?"  Part="1" 
AR Path="/5E0E0A68/5DFDF1BC" Ref="C?"  Part="1" 
F 0 "C?" H 5642 896 50  0000 L CNN
F 1 "1.5pF" H 5642 805 50  0000 L CNN
F 2 "" H 5550 850 50  0001 C CNN
F 3 "~" H 5550 850 50  0001 C CNN
	1    5550 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5DFDF1C2
P 6650 1650
AR Path="/5DFC5AD9/5DFDF1C2" Ref="C?"  Part="1" 
AR Path="/5E0E0A68/5DFDF1C2" Ref="C?"  Part="1" 
F 0 "C?" H 6742 1696 50  0000 L CNN
F 1 "3.3pF" H 6742 1605 50  0000 L CNN
F 2 "" H 6650 1650 50  0001 C CNN
F 3 "~" H 6650 1650 50  0001 C CNN
	1    6650 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 5DFDF1C8
P 5250 1600
AR Path="/5DFC5AD9/5DFDF1C8" Ref="L?"  Part="1" 
AR Path="/5E0E0A68/5DFDF1C8" Ref="L?"  Part="1" 
F 0 "L?" V 5450 1550 50  0000 L CNN
F 1 "12nH" V 5350 1500 50  0000 L CNN
F 2 "" H 5250 1600 50  0001 C CNN
F 3 "~" H 5250 1600 50  0001 C CNN
	1    5250 1600
	0    1    1    0   
$EndComp
$Comp
L Device:L_Small L?
U 1 1 5DFDF1CE
P 5250 1300
AR Path="/5DFC5AD9/5DFDF1CE" Ref="L?"  Part="1" 
AR Path="/5E0E0A68/5DFDF1CE" Ref="L?"  Part="1" 
F 0 "L?" V 5435 1300 50  0000 C CNN
F 1 "12nH" V 5344 1300 50  0000 C CNN
F 2 "" H 5250 1300 50  0001 C CNN
F 3 "~" H 5250 1300 50  0001 C CNN
	1    5250 1300
	0    -1   -1   0   
$EndComp
$Comp
L Device:L_Small L?
U 1 1 5DFDF1D4
P 5900 1300
AR Path="/5DFC5AD9/5DFDF1D4" Ref="L?"  Part="1" 
AR Path="/5E0E0A68/5DFDF1D4" Ref="L?"  Part="1" 
F 0 "L?" V 6100 1250 50  0000 L CNN
F 1 "18nH" V 6000 1200 50  0000 L CNN
F 2 "" H 5900 1300 50  0001 C CNN
F 3 "~" H 5900 1300 50  0001 C CNN
	1    5900 1300
	0    -1   -1   0   
$EndComp
$Comp
L Device:L_Small L?
U 1 1 5DFDF1DA
P 5550 2000
AR Path="/5DFC5AD9/5DFDF1DA" Ref="L?"  Part="1" 
AR Path="/5E0E0A68/5DFDF1DA" Ref="L?"  Part="1" 
F 0 "L?" H 5598 2046 50  0000 L CNN
F 1 "18nH" H 5598 1955 50  0000 L CNN
F 2 "" H 5550 2000 50  0001 C CNN
F 3 "~" H 5550 2000 50  0001 C CNN
	1    5550 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:L_Small L?
U 1 1 5DFDF1E0
P 6400 1450
AR Path="/5DFC5AD9/5DFDF1E0" Ref="L?"  Part="1" 
AR Path="/5E0E0A68/5DFDF1E0" Ref="L?"  Part="1" 
F 0 "L?" V 6550 1400 50  0000 L CNN
F 1 "12nH" V 6450 1350 50  0000 L CNN
F 2 "" H 6400 1450 50  0001 C CNN
F 3 "~" H 6400 1450 50  0001 C CNN
	1    6400 1450
	0    -1   -1   0   
$EndComp
$Comp
L Device:L_Small L?
U 1 1 5DFDF1E6
P 7600 1700
AR Path="/5DFC5AD9/5DFDF1E6" Ref="L?"  Part="1" 
AR Path="/5E0E0A68/5DFDF1E6" Ref="L?"  Part="1" 
F 0 "L?" H 7648 1746 50  0000 L CNN
F 1 "3.3nH" H 7648 1655 50  0000 L CNN
F 2 "" H 7600 1700 50  0001 C CNN
F 3 "~" H 7600 1700 50  0001 C CNN
	1    7600 1700
	0    1    1    0   
$EndComp
$Comp
L Device:L_Small L?
U 1 1 5DFDF1EC
P 6900 1450
AR Path="/5DFC5AD9/5DFDF1EC" Ref="L?"  Part="1" 
AR Path="/5E0E0A68/5DFDF1EC" Ref="L?"  Part="1" 
F 0 "L?" V 7050 1450 50  0000 C CNN
F 1 "12nH" V 7000 1450 50  0000 C BNN
F 2 "" H 6900 1450 50  0001 C CNN
F 3 "~" H 6900 1450 50  0001 C CNN
	1    6900 1450
	0    -1   -1   0   
$EndComp
Text Label 4850 1300 2    50   ~ 0
RF_N
Wire Wire Line
	4850 1300 5150 1300
Text Label 4850 1600 2    50   ~ 0
RF_P
Wire Wire Line
	4850 1600 5150 1600
Wire Wire Line
	5350 1300 5450 1300
Wire Wire Line
	5450 1300 5450 1350
Wire Wire Line
	5350 1600 5450 1600
Wire Wire Line
	5450 1600 5450 1550
$Comp
L power:GND #PWR?
U 1 1 5DFE69DD
P 5550 750
AR Path="/5DFC5AD9/5DFE69DD" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5DFE69DD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5550 500 50  0001 C CNN
F 1 "GND" H 5555 577 50  0000 C CNN
F 2 "" H 5550 750 50  0001 C CNN
F 3 "" H 5550 750 50  0001 C CNN
	1    5550 750 
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DFEC297
P 5550 2300
AR Path="/5DFC5AD9/5DFEC297" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5DFEC297" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5550 2050 50  0001 C CNN
F 1 "GND" H 5555 2127 50  0000 C CNN
F 2 "" H 5550 2300 50  0001 C CNN
F 3 "" H 5550 2300 50  0001 C CNN
	1    5550 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1300 5550 1300
Connection ~ 5450 1300
Wire Wire Line
	5550 1300 5800 1300
Connection ~ 5550 1300
Wire Wire Line
	5450 1600 5550 1600
Connection ~ 5450 1600
Connection ~ 5550 1600
Wire Wire Line
	5550 1600 5800 1600
Wire Wire Line
	6000 1300 6150 1300
Wire Wire Line
	6150 1300 6150 1450
Wire Wire Line
	6000 1600 6150 1600
Wire Wire Line
	6150 1600 6150 1450
Connection ~ 6150 1450
Wire Wire Line
	6300 1450 6150 1450
Wire Wire Line
	6800 1450 6650 1450
Wire Wire Line
	6650 1450 6650 1550
Wire Wire Line
	6650 1450 6500 1450
Connection ~ 6650 1450
$Comp
L power:GND #PWR?
U 1 1 5DFF3873
P 6650 1750
AR Path="/5DFC5AD9/5DFF3873" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5DFF3873" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6650 1500 50  0001 C CNN
F 1 "GND" H 6655 1577 50  0000 C CNN
F 2 "" H 6650 1750 50  0001 C CNN
F 3 "" H 6650 1750 50  0001 C CNN
	1    6650 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5DFF6151
P 7400 1700
AR Path="/5DFC5AD9/5DFF6151" Ref="C?"  Part="1" 
AR Path="/5E0E0A68/5DFF6151" Ref="C?"  Part="1" 
F 0 "C?" H 7492 1746 50  0000 L CNN
F 1 "47pF" H 7492 1655 50  0000 L CNN
F 2 "" H 7400 1700 50  0001 C CNN
F 3 "~" H 7400 1700 50  0001 C CNN
	1    7400 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	7000 1450 7150 1450
Wire Wire Line
	7150 1450 7150 1700
Wire Wire Line
	7150 1700 7300 1700
Connection ~ 7150 1450
Wire Wire Line
	7150 1450 7300 1450
Wire Wire Line
	7700 1700 7800 1700
Wire Wire Line
	7800 1700 7800 1450
Wire Wire Line
	7800 1450 7500 1450
Text Label 7950 650  2    50   ~ 0
RF_SE
Wire Wire Line
	8050 1450 7800 1450
Connection ~ 7800 1450
Text Label 9250 900  1    50   ~ 0
RF_SE
$Comp
L power:GND #PWR?
U 1 1 5DFFA921
P 9500 850
AR Path="/5DFC5AD9/5DFFA921" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5DFFA921" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9500 600 50  0001 C CNN
F 1 "GND" H 9505 677 50  0000 C CNN
F 2 "" H 9500 850 50  0001 C CNN
F 3 "" H 9500 850 50  0001 C CNN
	1    9500 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5DFFC4E5
P 8250 2200
AR Path="/5DFC5AD9/5DFFC4E5" Ref="C?"  Part="1" 
AR Path="/5E0E0A68/5DFFC4E5" Ref="C?"  Part="1" 
F 0 "C?" H 8342 2246 50  0000 L CNN
F 1 "27pF" H 8342 2155 50  0000 L CNN
F 2 "" H 8250 2200 50  0001 C CNN
F 3 "~" H 8250 2200 50  0001 C CNN
	1    8250 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5DFFCB69
P 8850 2200
AR Path="/5DFC5AD9/5DFFCB69" Ref="C?"  Part="1" 
AR Path="/5E0E0A68/5DFFCB69" Ref="C?"  Part="1" 
F 0 "C?" H 8942 2246 50  0000 L CNN
F 1 "27pF" H 8942 2155 50  0000 L CNN
F 2 "" H 8850 2200 50  0001 C CNN
F 3 "~" H 8850 2200 50  0001 C CNN
	1    8850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 950  5550 1300
Wire Wire Line
	5550 1600 5550 1900
Text Notes 6850 2350 0    50   ~ 0
Bottom L and C may be added \nto build an optional filter to \nreduce emission at 699MHz
Text Notes 6200 750  0    50   ~ 10
BALUN
Wire Notes Line
	8100 500  8100 2550
$Comp
L Device:R_Small R?
U 1 1 5E00AEE2
P 4900 2250
AR Path="/5DFC5AD9/5E00AEE2" Ref="R?"  Part="1" 
AR Path="/5E0E0A68/5E00AEE2" Ref="R?"  Part="1" 
F 0 "R?" H 4959 2296 50  0000 L CNN
F 1 "56K" H 4959 2205 50  0000 L CNN
F 2 "" H 4900 2250 50  0001 C CNN
F 3 "~" H 4900 2250 50  0001 C CNN
	1    4900 2250
	1    0    0    -1  
$EndComp
Text Label 4600 2500 0    50   ~ 0
RBIAS
$Comp
L power:GND #PWR?
U 1 1 5E00BC22
P 4900 2150
AR Path="/5DFC5AD9/5E00BC22" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E00BC22" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4900 1900 50  0001 C CNN
F 1 "GND" H 4905 1977 50  0000 C CNN
F 2 "" H 4900 2150 50  0001 C CNN
F 3 "" H 4900 2150 50  0001 C CNN
	1    4900 2150
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 2350 4900 2500
Wire Wire Line
	4900 2500 4600 2500
$Comp
L Device:C_Small C?
U 1 1 5E00FFC2
P 8600 900
AR Path="/5DFC5AD9/5E00FFC2" Ref="C?"  Part="1" 
AR Path="/5E0E0A68/5E00FFC2" Ref="C?"  Part="1" 
F 0 "C?" H 8692 946 50  0000 L CNN
F 1 "100nF" H 8692 855 50  0000 L CNN
F 2 "" H 8600 900 50  0001 C CNN
F 3 "~" H 8600 900 50  0001 C CNN
	1    8600 900 
	1    0    0    -1  
$EndComp
Text Label 8200 1150 0    50   ~ 0
DCOUPL
Wire Wire Line
	8850 2100 8850 1950
Wire Wire Line
	8250 2100 8250 1950
Wire Wire Line
	8250 1950 8400 1950
$Comp
L power:GND #PWR?
U 1 1 5E016586
P 8250 2300
AR Path="/5DFC5AD9/5E016586" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E016586" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8250 2050 50  0001 C CNN
F 1 "GND" H 8255 2127 50  0000 C CNN
F 2 "" H 8250 2300 50  0001 C CNN
F 3 "" H 8250 2300 50  0001 C CNN
	1    8250 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E016DAD
P 8850 2300
AR Path="/5DFC5AD9/5E016DAD" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E016DAD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8850 2050 50  0001 C CNN
F 1 "GND" H 8855 2127 50  0000 C CNN
F 2 "" H 8850 2300 50  0001 C CNN
F 3 "" H 8850 2300 50  0001 C CNN
	1    8850 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y?
U 1 1 5E019027
P 8550 1950
AR Path="/5DFC5AD9/5E019027" Ref="Y?"  Part="1" 
AR Path="/5E0E0A68/5E019027" Ref="Y?"  Part="1" 
F 0 "Y?" H 8550 2218 50  0000 C CNN
F 1 "26M" H 8550 2127 50  0000 C CNN
F 2 "" H 8550 1950 50  0001 C CNN
F 3 "~" H 8550 1950 50  0001 C CNN
	1    8550 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 1950 8850 1950
Text Label 8250 1450 3    50   ~ 0
XOSC1
Text Label 8850 1450 3    50   ~ 0
XOSC2
Wire Wire Line
	8850 1450 8850 1950
Connection ~ 8850 1950
Wire Wire Line
	8250 1450 8250 1950
Connection ~ 8250 1950
Wire Wire Line
	8200 1150 8600 1150
Wire Wire Line
	8600 1150 8600 1000
$Comp
L power:GND #PWR?
U 1 1 5E01BF17
P 8600 800
AR Path="/5DFC5AD9/5E01BF17" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E01BF17" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8600 550 50  0001 C CNN
F 1 "GND" H 8605 627 50  0000 C CNN
F 2 "" H 8600 800 50  0001 C CNN
F 3 "" H 8600 800 50  0001 C CNN
	1    8600 800 
	-1   0    0    1   
$EndComp
Wire Notes Line
	9150 1250 8100 1250
Wire Notes Line
	4550 2550 9150 2550
Wire Notes Line
	9150 500  9150 2550
Wire Notes Line
	8050 2400 8050 1600
Wire Notes Line
	8050 1600 7050 1600
Wire Notes Line
	7050 1600 7050 2000
Wire Notes Line
	7050 2000 6800 2000
Wire Notes Line
	6800 2000 6800 2400
Wire Notes Line
	6800 2400 8050 2400
Wire Wire Line
	9250 900  9250 650 
Wire Wire Line
	9250 650  9300 650 
Text Label 650  700  0    50   ~ 0
VCC
Text Label 650  800  0    50   ~ 0
GND
Text Label 650  900  0    50   ~ 0
MISO
Text Label 650  1000 0    50   ~ 0
MOSI
Text Label 650  1100 0    50   ~ 0
SCLK
Text Label 650  1200 0    50   ~ 0
CSn
Text Label 650  1300 0    50   ~ 0
GDO0
Text Label 650  1400 0    50   ~ 0
GDO2
Wire Wire Line
	650  1400 900  1400
Wire Wire Line
	650  1300 900  1300
Wire Wire Line
	650  1200 900  1200
Wire Wire Line
	650  1100 900  1100
Wire Wire Line
	900  1000 650  1000
Wire Wire Line
	650  900  900  900 
Wire Wire Line
	900  800  650  800 
Wire Wire Line
	650  700  900  700 
Text Label 4300 1550 2    50   ~ 0
RF_N
Text Label 4300 1450 2    50   ~ 0
RF_P
Wire Wire Line
	4300 1450 4050 1450
Wire Wire Line
	4300 1550 4050 1550
Text Label 4300 1650 2    50   ~ 0
RBIAS
Wire Wire Line
	4300 1650 4050 1650
Text Label 4300 1250 2    50   ~ 0
XOSC1
Text Label 4300 1350 2    50   ~ 0
XOSC2
Text Label 1700 1850 0    50   ~ 0
DCOUPL
Text Label 1700 1750 0    50   ~ 0
CSn
Wire Wire Line
	1700 1850 2050 1850
Wire Wire Line
	2050 1750 1700 1750
Text Label 1700 1650 0    50   ~ 0
SCLK
Wire Wire Line
	1700 1650 2050 1650
$Comp
L power:+3V3 #PWR?
U 1 1 5E03CF8C
P 1700 950
AR Path="/5DFC5AD9/5E03CF8C" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E03CF8C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1700 800 50  0001 C CNN
F 1 "+3V3" H 1715 1123 50  0000 C CNN
F 2 "" H 1700 950 50  0001 C CNN
F 3 "" H 1700 950 50  0001 C CNN
	1    1700 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 950  2050 950 
Wire Wire Line
	2050 1050 1700 1050
Wire Wire Line
	1700 1050 1700 950 
Connection ~ 1700 950 
Wire Wire Line
	2050 1150 1700 1150
Wire Wire Line
	1700 1150 1700 1050
Connection ~ 1700 1050
Wire Wire Line
	2050 1250 1700 1250
Wire Wire Line
	1700 1250 1700 1150
Connection ~ 1700 1150
Wire Wire Line
	2050 1350 1700 1350
Wire Wire Line
	1700 1350 1700 1250
Connection ~ 1700 1250
Wire Wire Line
	2050 1450 1700 1450
Wire Wire Line
	1700 1450 1700 1350
Connection ~ 1700 1350
$Comp
L power:GND #PWR?
U 1 1 5E0461D8
P 1750 2200
AR Path="/5DFC5AD9/5E0461D8" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E0461D8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1750 1950 50  0001 C CNN
F 1 "GND" H 1755 2027 50  0000 C CNN
F 2 "" H 1750 2200 50  0001 C CNN
F 3 "" H 1750 2200 50  0001 C CNN
	1    1750 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 2200 1900 2200
Wire Wire Line
	1900 2200 1900 2150
Wire Wire Line
	1900 2150 2050 2150
Wire Wire Line
	2050 2250 1900 2250
Wire Wire Line
	1900 2250 1900 2200
Connection ~ 1900 2200
Text Label 1700 1950 0    50   ~ 0
MOSI
Wire Wire Line
	1700 1950 2050 1950
Wire Wire Line
	4300 1350 4050 1350
Wire Wire Line
	4300 1250 4050 1250
Text Label 4300 950  2    50   ~ 0
MISO
Wire Wire Line
	4300 950  4050 950 
Text Label 4300 1150 2    50   ~ 0
GDO0
Wire Wire Line
	4300 1150 4050 1150
Text Label 4300 1050 2    50   ~ 0
GDO2
Wire Wire Line
	4300 1050 4050 1050
Wire Wire Line
	2050 2450 1750 2450
Wire Wire Line
	1750 2450 1750 2200
Connection ~ 1750 2200
Wire Notes Line
	1600 2750 4550 2750
Wire Notes Line
	4550 500  4550 2750
Wire Notes Line
	9150 1150 10150 1150
Wire Notes Line
	10150 1150 10150 500 
Wire Notes Line
	500  500  10150 500 
Text Notes 4200 650  0    50   ~ 10
Chip
Text Notes 750  600  0    50   ~ 10
Digital I/O
Text Notes 8150 600  0    50   ~ 10
Decouple
Text Notes 8150 1350 0    50   ~ 10
Oscilator
Text Notes 9700 1100 0    50   ~ 10
Output
Text Label 1250 1850 0    50   ~ 0
VCC
$Comp
L power:+3V3 #PWR?
U 1 1 5E0968F8
P 1450 1800
AR Path="/5DFC5AD9/5E0968F8" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E0968F8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1450 1650 50  0001 C CNN
F 1 "+3V3" H 1465 1973 50  0000 C CNN
F 2 "" H 1450 1800 50  0001 C CNN
F 3 "" H 1450 1800 50  0001 C CNN
	1    1450 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0970A9
P 1450 2200
AR Path="/5DFC5AD9/5E0970A9" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E0970A9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1450 1950 50  0001 C CNN
F 1 "GND" H 1455 2027 50  0000 C CNN
F 2 "" H 1450 2200 50  0001 C CNN
F 3 "" H 1450 2200 50  0001 C CNN
	1    1450 2200
	-1   0    0    1   
$EndComp
Text Label 1250 2250 0    50   ~ 0
GND
Wire Wire Line
	1450 1850 1450 1800
Wire Wire Line
	1250 1850 1450 1850
Wire Wire Line
	1250 2250 1450 2250
Wire Wire Line
	1450 2250 1450 2200
$Comp
L Device:C_Small C?
U 1 1 5E0A1A62
P 650 1900
AR Path="/5DFC5AD9/5E0A1A62" Ref="C?"  Part="1" 
AR Path="/5E0E0A68/5E0A1A62" Ref="C?"  Part="1" 
F 0 "C?" H 742 1946 50  0000 L CNN
F 1 "DC" H 742 1855 50  0000 L CNN
F 2 "" H 650 1900 50  0001 C CNN
F 3 "~" H 650 1900 50  0001 C CNN
	1    650  1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0A2161
P 650 2000
AR Path="/5DFC5AD9/5E0A2161" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E0A2161" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 650 1750 50  0001 C CNN
F 1 "GND" H 655 1827 50  0000 C CNN
F 2 "" H 650 2000 50  0001 C CNN
F 3 "" H 650 2000 50  0001 C CNN
	1    650  2000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E0A276F
P 650 1800
AR Path="/5DFC5AD9/5E0A276F" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E0A276F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 650 1650 50  0001 C CNN
F 1 "+3V3" H 665 1973 50  0000 C CNN
F 2 "" H 650 1800 50  0001 C CNN
F 3 "" H 650 1800 50  0001 C CNN
	1    650  1800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E0A5D73
P 650 2550
AR Path="/5DFC5AD9/5E0A5D73" Ref="C?"  Part="1" 
AR Path="/5E0E0A68/5E0A5D73" Ref="C?"  Part="1" 
F 0 "C?" H 742 2596 50  0000 L CNN
F 1 "DC" H 742 2505 50  0000 L CNN
F 2 "" H 650 2550 50  0001 C CNN
F 3 "~" H 650 2550 50  0001 C CNN
	1    650  2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0A5D7D
P 650 2650
AR Path="/5DFC5AD9/5E0A5D7D" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E0A5D7D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 650 2400 50  0001 C CNN
F 1 "GND" H 655 2477 50  0000 C CNN
F 2 "" H 650 2650 50  0001 C CNN
F 3 "" H 650 2650 50  0001 C CNN
	1    650  2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E0A5D87
P 650 2450
AR Path="/5DFC5AD9/5E0A5D87" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E0A5D87" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 650 2300 50  0001 C CNN
F 1 "+3V3" H 665 2623 50  0000 C CNN
F 2 "" H 650 2450 50  0001 C CNN
F 3 "" H 650 2450 50  0001 C CNN
	1    650  2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E0A969F
P 1000 2550
AR Path="/5DFC5AD9/5E0A969F" Ref="C?"  Part="1" 
AR Path="/5E0E0A68/5E0A969F" Ref="C?"  Part="1" 
F 0 "C?" H 1092 2596 50  0000 L CNN
F 1 "DC" H 1092 2505 50  0000 L CNN
F 2 "" H 1000 2550 50  0001 C CNN
F 3 "~" H 1000 2550 50  0001 C CNN
	1    1000 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0A96A9
P 1000 2650
AR Path="/5DFC5AD9/5E0A96A9" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E0A96A9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1000 2400 50  0001 C CNN
F 1 "GND" H 1005 2477 50  0000 C CNN
F 2 "" H 1000 2650 50  0001 C CNN
F 3 "" H 1000 2650 50  0001 C CNN
	1    1000 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E0A96B3
P 1000 2450
AR Path="/5DFC5AD9/5E0A96B3" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E0A96B3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1000 2300 50  0001 C CNN
F 1 "+3V3" H 1015 2623 50  0000 C CNN
F 2 "" H 1000 2450 50  0001 C CNN
F 3 "" H 1000 2450 50  0001 C CNN
	1    1000 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E0AFE89
P 1000 1900
AR Path="/5DFC5AD9/5E0AFE89" Ref="C?"  Part="1" 
AR Path="/5E0E0A68/5E0AFE89" Ref="C?"  Part="1" 
F 0 "C?" H 1092 1946 50  0000 L CNN
F 1 "DC" H 1092 1855 50  0000 L CNN
F 2 "" H 1000 1900 50  0001 C CNN
F 3 "~" H 1000 1900 50  0001 C CNN
	1    1000 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0AFE93
P 1000 2000
AR Path="/5DFC5AD9/5E0AFE93" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E0AFE93" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1000 1750 50  0001 C CNN
F 1 "GND" H 1005 1827 50  0000 C CNN
F 2 "" H 1000 2000 50  0001 C CNN
F 3 "" H 1000 2000 50  0001 C CNN
	1    1000 2000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E0AFE9D
P 1000 1800
AR Path="/5DFC5AD9/5E0AFE9D" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E0AFE9D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1000 1650 50  0001 C CNN
F 1 "+3V3" H 1015 1973 50  0000 C CNN
F 2 "" H 1000 1800 50  0001 C CNN
F 3 "" H 1000 1800 50  0001 C CNN
	1    1000 1800
	1    0    0    -1  
$EndComp
Wire Notes Line
	500  1550 1600 1550
Wire Notes Line
	1200 2400 1600 2400
Wire Notes Line
	5200 2550 5200 1900
Wire Notes Line
	5200 1900 4550 1900
Text HLabel 7550 650  0    50   Output ~ 0
RF_SE
Wire Wire Line
	7950 650  7550 650 
Text Label 7950 750  2    50   ~ 0
RF_N
Text Label 7950 850  2    50   ~ 0
RF_P
Text HLabel 7550 750  0    50   Output ~ 0
RF_N
Text HLabel 7550 850  0    50   Output ~ 0
RF_P
Wire Wire Line
	7550 750  7950 750 
Wire Wire Line
	7950 850  7550 850 
Text HLabel 1300 2700 3    50   Input ~ 0
SCLK
Text HLabel 1400 2700 3    50   Output ~ 0
MISO
Text HLabel 1500 2700 3    50   Input ~ 0
MOSI
Text Label 1400 2450 3    50   ~ 0
MISO
Text Label 1500 2450 3    50   ~ 0
MISO
Text Label 1300 2450 3    50   ~ 0
SCLK
Wire Wire Line
	1300 2450 1300 2700
Wire Wire Line
	1400 2450 1400 2700
Wire Wire Line
	1500 2450 1500 2700
Text HLabel 1500 1950 0    50   BiDi ~ 0
VCC
Wire Wire Line
	1500 1950 1550 1950
Wire Wire Line
	1550 1950 1550 1850
Wire Wire Line
	1550 1850 1450 1850
Connection ~ 1450 1850
Wire Notes Line
	500  3600 1600 3600
Text HLabel 1500 2350 0    50   BiDi ~ 0
GND
Wire Wire Line
	1500 2350 1550 2350
Wire Wire Line
	1550 2350 1550 2250
Wire Wire Line
	1550 2250 1450 2250
Connection ~ 1450 2250
$Comp
L Device:C_Small C?
U 1 1 5E0F5BFA
P 650 3200
AR Path="/5DFC5AD9/5E0F5BFA" Ref="C?"  Part="1" 
AR Path="/5E0E0A68/5E0F5BFA" Ref="C?"  Part="1" 
F 0 "C?" H 742 3246 50  0000 L CNN
F 1 "DC" H 742 3155 50  0000 L CNN
F 2 "" H 650 3200 50  0001 C CNN
F 3 "~" H 650 3200 50  0001 C CNN
	1    650  3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0F5C04
P 650 3300
AR Path="/5DFC5AD9/5E0F5C04" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E0F5C04" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 650 3050 50  0001 C CNN
F 1 "GND" H 655 3127 50  0000 C CNN
F 2 "" H 650 3300 50  0001 C CNN
F 3 "" H 650 3300 50  0001 C CNN
	1    650  3300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E0F5C0E
P 650 3100
AR Path="/5DFC5AD9/5E0F5C0E" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E0F5C0E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 650 2950 50  0001 C CNN
F 1 "+3V3" H 665 3273 50  0000 C CNN
F 2 "" H 650 3100 50  0001 C CNN
F 3 "" H 650 3100 50  0001 C CNN
	1    650  3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E0F5C18
P 1000 3200
AR Path="/5DFC5AD9/5E0F5C18" Ref="C?"  Part="1" 
AR Path="/5E0E0A68/5E0F5C18" Ref="C?"  Part="1" 
F 0 "C?" H 1092 3246 50  0000 L CNN
F 1 "DC" H 1092 3155 50  0000 L CNN
F 2 "" H 1000 3200 50  0001 C CNN
F 3 "~" H 1000 3200 50  0001 C CNN
	1    1000 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0F5C22
P 1000 3300
AR Path="/5DFC5AD9/5E0F5C22" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E0F5C22" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1000 3050 50  0001 C CNN
F 1 "GND" H 1005 3127 50  0000 C CNN
F 2 "" H 1000 3300 50  0001 C CNN
F 3 "" H 1000 3300 50  0001 C CNN
	1    1000 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E0F5C2C
P 1000 3100
AR Path="/5DFC5AD9/5E0F5C2C" Ref="#PWR?"  Part="1" 
AR Path="/5E0E0A68/5E0F5C2C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1000 2950 50  0001 C CNN
F 1 "+3V3" H 1015 3273 50  0000 C CNN
F 2 "" H 1000 3100 50  0001 C CNN
F 3 "" H 1000 3100 50  0001 C CNN
	1    1000 3100
	1    0    0    -1  
$EndComp
Wire Notes Line
	1200 1550 1200 3600
Wire Notes Line
	500  500  500  3600
Wire Notes Line
	1600 500  1600 3600
Wire Notes Line
	1200 3000 1600 3000
$EndSCHEMATC
