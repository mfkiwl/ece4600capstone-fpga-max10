EESchema Schematic File Version 4
LIBS:Capstone-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
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
L Parts:MAX11116 U?
U 1 1 5DCE353E
P 9250 3750
F 0 "U?" H 9250 4137 60  0000 C CNN
F 1 "MAX11116" H 9250 4031 60  0000 C CNN
F 2 "Parts:SOT23" H 9250 3500 60  0001 C CNN
F 3 "https://www.maximintegrated.com/en/products/analog/data-converters/analog-to-digital-converters/MAX11116.html" H 8750 3750 60  0001 C CNN
	1    9250 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE6B0BA
P 8650 3850
F 0 "#PWR?" H 8650 3600 50  0001 C CNN
F 1 "GND" H 8655 3677 50  0000 C CNN
F 2 "" H 8650 3850 50  0001 C CNN
F 3 "" H 8650 3850 50  0001 C CNN
	1    8650 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 3850 8750 3850
Wire Wire Line
	8650 3650 8750 3650
Text GLabel 9800 3650 2    50   Input ~ 0
ADC-~CS
Text GLabel 9800 3850 2    50   Input ~ 0
ADC-SCK
Text GLabel 9800 3750 2    50   Input ~ 0
ADC-SDO
Wire Wire Line
	9750 3650 9800 3650
Wire Wire Line
	9800 3750 9750 3750
Wire Wire Line
	9750 3850 9800 3850
$Comp
L power:GND #PWR?
U 1 1 5DE74334
P 2150 4450
F 0 "#PWR?" H 2150 4200 50  0001 C CNN
F 1 "GND" H 2155 4277 50  0000 C CNN
F 2 "" H 2150 4450 50  0001 C CNN
F 3 "" H 2150 4450 50  0001 C CNN
	1    2150 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5DE7BD62
P 1800 3750
F 0 "C?" V 1571 3750 50  0000 C CNN
F 1 "100nF" V 1662 3750 50  0000 C CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 1800 3750 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/murata-electronics/GRM31C5C2A104JA01L/490-16315-1-ND/7363297" H 1800 3750 50  0001 C CNN
	1    1800 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 3750 2150 3750
Text GLabel 1600 3750 0    50   Input ~ 0
TRANSDUCER
Wire Wire Line
	1600 3750 1700 3750
$Comp
L Device:D_Schottky_Small_ALT D?
U 1 1 5DF00EE8
P 2300 4250
F 0 "D?" V 2254 4318 50  0000 L CNN
F 1 "600mV 200mA" V 2345 4318 50  0000 L CNN
F 2 "Diodes_SMD:D_SOD-523" V 2300 4250 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/on-semiconductor/RB520S30T5G/RB520S30T5GOSCT-ND/5213385" V 2300 4250 50  0001 C CNN
	1    2300 4250
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky_Small_ALT D?
U 1 1 5DF02261
P 2000 4050
F 0 "D?" V 2046 3982 50  0000 R CNN
F 1 "600mV 200mA" V 1955 3982 50  0000 R CNN
F 2 "Diodes_SMD:D_SOD-523" V 2000 4050 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/on-semiconductor/RB520S30T5G/RB520S30T5GOSCT-ND/5213385" V 2000 4050 50  0001 C CNN
	1    2000 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 3950 2000 3900
Wire Wire Line
	2000 3900 2150 3900
Wire Wire Line
	2300 3900 2300 4150
Wire Wire Line
	2150 3750 2150 3900
Connection ~ 2150 3900
Wire Wire Line
	2150 3900 2300 3900
Wire Wire Line
	2000 4150 2000 4400
Wire Wire Line
	2000 4400 2150 4400
Wire Wire Line
	2300 4400 2300 4350
Wire Wire Line
	2150 4400 2150 4450
Connection ~ 2150 4400
Wire Wire Line
	2150 4400 2300 4400
$Comp
L Device:C_Small C?
U 1 1 5E3D409D
P 10400 2900
F 0 "C?" H 10492 2946 50  0000 L CNN
F 1 "10uF" H 10492 2855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10400 2900 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 10400 2900 50  0001 C CNN
	1    10400 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3D4BAC
P 9850 3100
F 0 "#PWR?" H 9850 2850 50  0001 C CNN
F 1 "GND" H 9855 2927 50  0000 C CNN
F 2 "" H 9850 3100 50  0001 C CNN
F 3 "" H 9850 3100 50  0001 C CNN
	1    9850 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E3D52F8
P 9850 2900
F 0 "C?" H 9942 2946 50  0000 L CNN
F 1 "100nF" H 9942 2855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9850 2900 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 9850 2900 50  0001 C CNN
	1    9850 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2700 9850 2750
Wire Wire Line
	9850 2750 10400 2750
Wire Wire Line
	10400 2750 10400 2800
Connection ~ 9850 2750
Wire Wire Line
	9850 2750 9850 2800
Wire Wire Line
	10400 3000 10400 3050
Wire Wire Line
	10400 3050 9850 3050
Wire Wire Line
	9850 3050 9850 3000
Wire Wire Line
	9850 3050 9850 3100
Connection ~ 9850 3050
$Comp
L Device:C_Small C?
U 1 1 5E132FDE
P 4450 5300
F 0 "C?" H 4542 5346 50  0000 L CNN
F 1 "100nF" H 4542 5255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4450 5300 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 4450 5300 50  0001 C CNN
	1    4450 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E133797
P 6050 5400
F 0 "C?" H 6142 5446 50  0000 L CNN
F 1 "100nF" H 6142 5355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6050 5400 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 6050 5400 50  0001 C CNN
	1    6050 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E133C95
P 4950 5300
F 0 "C?" H 5042 5346 50  0000 L CNN
F 1 "10uF" H 5042 5255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4950 5300 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 4950 5300 50  0001 C CNN
	1    4950 5300
	1    0    0    -1  
$EndComp
$Comp
L Parts:MCP6L1 U?
U 1 1 5DF2C139
P 7450 5350
F 0 "U?" H 7794 5396 50  0000 L CNN
F 1 "MCP6L1" H 7794 5305 50  0000 L CNN
F 2 "Parts:SOT23-5" H 7350 5150 50  0001 L CNN
F 3 "https://www.microchip.com/wwwproducts/en/MCP6L1" H 7600 5500 50  0001 C CNN
	1    7450 5350
	1    0    0    -1  
$EndComp
$Comp
L Parts:TLV3544 U?
U 1 1 5DF3CF89
P 3800 3850
F 0 "U?" H 3800 4217 50  0000 C CNN
F 1 "TLV3544" H 3800 4126 50  0000 C CNN
F 2 "Parts:SSOP14" H 3800 3600 50  0001 C CNN
F 3 "https://www.ti.com/product/TLV3544" H 3800 3850 60  0001 C CNN
	1    3800 3850
	1    0    0    -1  
$EndComp
$Comp
L Parts:TLV3544 U?
U 2 1 5DF3E279
P 5200 3850
F 0 "U?" H 5200 4217 50  0000 C CNN
F 1 "TLV3544" H 5200 4126 50  0000 C CNN
F 2 "Parts:SSOP14" H 5200 3600 50  0001 C CNN
F 3 "https://www.ti.com/product/TLV3544" H 5200 3850 60  0001 C CNN
	2    5200 3850
	1    0    0    -1  
$EndComp
$Comp
L Parts:TLV3544 U?
U 3 1 5DF3F202
P 6650 3850
F 0 "U?" H 6650 4217 50  0000 C CNN
F 1 "TLV3544" H 6650 4126 50  0000 C CNN
F 2 "Parts:SSOP14" H 6650 3600 50  0001 C CNN
F 3 "https://www.ti.com/product/TLV3544" H 6650 3850 60  0001 C CNN
	3    6650 3850
	1    0    0    -1  
$EndComp
$Comp
L Parts:TLV3544 U?
U 4 1 5DF4019C
P 8100 3850
F 0 "U?" H 8100 4217 50  0000 C CNN
F 1 "TLV3544" H 8100 4126 50  0000 C CNN
F 2 "Parts:SSOP14" H 8100 3600 50  0001 C CNN
F 3 "https://www.ti.com/product/TLV3544" H 8100 3850 60  0001 C CNN
	4    8100 3850
	1    0    0    -1  
$EndComp
$Comp
L Parts:TLV3544 U?
U 5 1 5DF41081
P 3800 5350
F 0 "U?" H 4030 5396 50  0000 L CNN
F 1 "TLV3544" H 4030 5305 50  0000 L CNN
F 2 "Parts:SSOP14" H 3800 5100 50  0001 C CNN
F 3 "https://www.ti.com/product/TLV3544" H 3800 5350 60  0001 C CNN
	5    3800 5350
	1    0    0    -1  
$EndComp
Connection ~ 2150 3750
Wire Wire Line
	2150 3750 2800 3750
$Comp
L power:GND #PWR?
U 1 1 5DF502DD
P 6050 5550
F 0 "#PWR?" H 6050 5300 50  0001 C CNN
F 1 "GND" H 6055 5377 50  0000 C CNN
F 2 "" H 6050 5550 50  0001 C CNN
F 3 "" H 6050 5550 50  0001 C CNN
	1    6050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5250 6050 5300
Wire Wire Line
	6050 5500 6050 5550
$Comp
L power:GND #PWR?
U 1 1 5DF53278
P 4450 5500
F 0 "#PWR?" H 4450 5250 50  0001 C CNN
F 1 "GND" H 4455 5327 50  0000 C CNN
F 2 "" H 4450 5500 50  0001 C CNN
F 3 "" H 4450 5500 50  0001 C CNN
	1    4450 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5100 4450 5150
Wire Wire Line
	4450 5150 4950 5150
Wire Wire Line
	4950 5150 4950 5200
Connection ~ 4450 5150
Wire Wire Line
	4450 5150 4450 5200
Wire Wire Line
	4450 5400 4450 5450
Wire Wire Line
	4450 5450 4950 5450
Wire Wire Line
	4950 5450 4950 5400
Connection ~ 4450 5450
Wire Wire Line
	4450 5450 4450 5500
$Comp
L power:GND #PWR?
U 1 1 5DF58B7E
P 3700 5650
F 0 "#PWR?" H 3700 5400 50  0001 C CNN
F 1 "GND" H 3705 5477 50  0000 C CNN
F 2 "" H 3700 5650 50  0001 C CNN
F 3 "" H 3700 5650 50  0001 C CNN
	1    3700 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 5650 3700 5600
Wire Wire Line
	3700 5050 3700 5100
$Comp
L Device:C_Small C?
U 1 1 5DF5C548
P 2900 3750
F 0 "C?" V 3125 3700 50  0000 L CNN
F 1 "150nF" V 3025 3625 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2900 3750 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B154KO8NNNC/1276-1972-1-ND/3890058" H 2900 3750 50  0001 C CNN
	1    2900 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF6543D
P 3250 3750
F 0 "R?" V 3043 3750 50  0000 C CNN
F 1 "2.7k" V 3134 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3180 3750 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT2K70/RMCF0603FT2K70CT-ND/1943018" H 3250 3750 50  0001 C CNN
	1    3250 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF69414
P 3800 3350
F 0 "R?" V 3593 3350 50  0000 C CNN
F 1 "47k" V 3684 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3730 3350 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT47K0/RMCF0603FT47K0CT-ND/1943099" H 3800 3350 50  0001 C CNN
	1    3800 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	3400 3750 3450 3750
Wire Wire Line
	3450 3750 3450 3350
Wire Wire Line
	3450 3350 3650 3350
Connection ~ 3450 3750
Wire Wire Line
	3450 3750 3500 3750
Wire Wire Line
	3950 3350 4150 3350
Wire Wire Line
	4150 3850 4100 3850
Text Label 3500 4250 1    50   ~ 0
MIDRAIL
$Comp
L Device:R R?
U 1 1 5DF705AE
P 4650 3750
F 0 "R?" V 4443 3750 50  0000 C CNN
F 1 "2.7k" V 4534 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4580 3750 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT2K70/RMCF0603FT2K70CT-ND/1943018" H 4650 3750 50  0001 C CNN
	1    4650 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF70B06
P 5200 3350
F 0 "R?" V 4993 3350 50  0000 C CNN
F 1 "47k" V 5084 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5130 3350 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT47K0/RMCF0603FT47K0CT-ND/1943099" H 5200 3350 50  0001 C CNN
	1    5200 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 3750 4850 3750
Wire Wire Line
	4850 3750 4850 3350
Wire Wire Line
	4850 3350 5050 3350
Connection ~ 4850 3750
Wire Wire Line
	4850 3750 4900 3750
Wire Wire Line
	5350 3350 5550 3350
Wire Wire Line
	4150 3350 4150 3750
$Comp
L Device:C_Small C?
U 1 1 5DF78526
P 4300 3750
F 0 "C?" V 4525 3700 50  0000 L CNN
F 1 "150nF" V 4425 3625 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4300 3750 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B154KO8NNNC/1276-1972-1-ND/3890058" H 4300 3750 50  0001 C CNN
	1    4300 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 3750 4150 3750
Connection ~ 4150 3750
Wire Wire Line
	4150 3750 4150 3850
Wire Wire Line
	4400 3750 4450 3750
Wire Wire Line
	4450 3750 4450 3850
Connection ~ 4450 3750
Wire Wire Line
	4450 3750 4500 3750
Text Label 4900 4250 1    50   ~ 0
MIDRAIL
Wire Wire Line
	4900 4250 4900 3950
Wire Wire Line
	3500 4250 3500 3950
Wire Wire Line
	5550 3850 5500 3850
Wire Wire Line
	5550 3350 5550 3750
Wire Wire Line
	5550 3750 5600 3750
Connection ~ 5550 3750
Wire Wire Line
	5550 3750 5550 3850
$Comp
L Device:C_Small C?
U 1 1 5DF8BDC4
P 5700 3750
F 0 "C?" V 5925 3700 50  0000 L CNN
F 1 "150nF" V 5825 3625 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5700 3750 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B154KO8NNNC/1276-1972-1-ND/3890058" H 5700 3750 50  0001 C CNN
	1    5700 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF9115A
P 6050 3750
F 0 "R?" V 5843 3750 50  0000 C CNN
F 1 "330" V 5934 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5980 3750 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT330R/RMCF0603FT330RCT-ND/1942981" H 6050 3750 50  0001 C CNN
	1    6050 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 3750 5850 3750
Wire Wire Line
	5850 3750 5850 3850
Connection ~ 5850 3750
Wire Wire Line
	5850 3750 5900 3750
$Comp
L Device:R R?
U 1 1 5DF97DB7
P 6650 3350
F 0 "R?" V 6443 3350 50  0000 C CNN
F 1 "7.5k" V 6534 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6580 3350 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT7K50/RMCF0603FT7K50CT-ND/1943049" H 6650 3350 50  0001 C CNN
	1    6650 3350
	0    1    1    0   
$EndComp
$Comp
L Parts:MAX5394L U?
U 1 1 5DFA2624
P 5700 2700
F 0 "U?" H 5700 3189 60  0000 C CNN
F 1 "MAX5394L" H 5700 3083 60  0000 C CNN
F 2 "Parts:TDFN8-PAD" H 5700 2350 60  0001 C CNN
F 3 "https://www.maximintegrated.com/en/products/analog/data-converters/digital-potentiometers/MAX5394.html" H 5300 2700 60  0001 C CNN
	1    5700 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3850 7000 3850
Wire Wire Line
	7000 3850 7000 3750
Wire Wire Line
	7000 3350 6800 3350
Wire Wire Line
	6100 2500 6350 2500
Wire Wire Line
	6100 2600 6300 2600
Wire Wire Line
	6300 3750 6350 3750
Wire Wire Line
	6250 2700 6100 2700
Wire Wire Line
	6350 3350 6500 3350
$Comp
L power:GND #PWR?
U 1 1 5DFD250D
P 6150 2900
F 0 "#PWR?" H 6150 2650 50  0001 C CNN
F 1 "GND" H 6155 2727 50  0000 C CNN
F 2 "" H 6150 2900 50  0001 C CNN
F 3 "" H 6150 2900 50  0001 C CNN
	1    6150 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2900 6150 2900
Wire Wire Line
	5250 2500 5300 2500
Text Label 6350 4250 1    50   ~ 0
MIDRAIL
Wire Wire Line
	6350 4250 6350 3950
Text Label 7800 4250 1    50   ~ 0
MIDRAIL
Wire Wire Line
	7800 3950 7800 4250
Wire Wire Line
	6250 3750 6200 3750
$Comp
L Device:C_Small C?
U 1 1 5DFF8C03
P 7150 3750
F 0 "C?" V 7375 3700 50  0000 L CNN
F 1 "150nF" V 7275 3625 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7150 3750 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10B154KO8NNNC/1276-1972-1-ND/3890058" H 7150 3750 50  0001 C CNN
	1    7150 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 3750 7000 3750
Connection ~ 7000 3750
Wire Wire Line
	7000 3750 7000 3350
Wire Wire Line
	7250 3750 7300 3750
Wire Wire Line
	7300 3750 7300 3850
Wire Wire Line
	7300 3750 7350 3750
Connection ~ 7300 3750
$Comp
L Device:R R?
U 1 1 5E00032B
P 7500 3750
F 0 "R?" V 7293 3750 50  0000 C CNN
F 1 "330" V 7384 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7430 3750 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT330R/RMCF0603FT330RCT-ND/1942981" H 7500 3750 50  0001 C CNN
	1    7500 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	7650 3750 7700 3750
Wire Wire Line
	7800 3750 7750 3750
$Comp
L Device:R R?
U 1 1 5E008695
P 8100 3350
F 0 "R?" V 7893 3350 50  0000 C CNN
F 1 "7.5k" V 7984 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8030 3350 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT7K50/RMCF0603FT7K50CT-ND/1943049" H 8100 3350 50  0001 C CNN
	1    8100 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 3350 7950 3350
Wire Wire Line
	8250 3350 8450 3350
Wire Wire Line
	8450 3350 8450 3750
Wire Wire Line
	8450 3850 8400 3850
Wire Wire Line
	8450 3750 8750 3750
Connection ~ 8450 3750
Wire Wire Line
	8450 3750 8450 3850
$Comp
L Parts:MAX5394L U?
U 1 1 5E024FA6
P 7150 2100
F 0 "U?" H 7150 2589 60  0000 C CNN
F 1 "MAX5394L" H 7150 2483 60  0000 C CNN
F 2 "Parts:TDFN8-PAD" H 7150 1750 60  0001 C CNN
F 3 "https://www.maximintegrated.com/en/products/analog/data-converters/digital-potentiometers/MAX5394.html" H 6750 2100 60  0001 C CNN
	1    7150 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1900 7800 1900
Wire Wire Line
	7800 1900 7800 3350
Wire Wire Line
	7750 2000 7550 2000
Wire Wire Line
	7750 2000 7750 3750
Wire Wire Line
	7550 2100 7700 2100
Wire Wire Line
	7700 2100 7700 3750
$Comp
L power:GND #PWR?
U 1 1 5E02E9B9
P 7600 2300
F 0 "#PWR?" H 7600 2050 50  0001 C CNN
F 1 "GND" H 7605 2127 50  0000 C CNN
F 2 "" H 7600 2300 50  0001 C CNN
F 3 "" H 7600 2300 50  0001 C CNN
	1    7600 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2300 7600 2300
Wire Wire Line
	6700 1900 6750 1900
Wire Wire Line
	7350 4950 7350 5050
$Comp
L power:GND #PWR?
U 1 1 5E055C0B
P 7350 5700
F 0 "#PWR?" H 7350 5450 50  0001 C CNN
F 1 "GND" H 7355 5527 50  0000 C CNN
F 2 "" H 7350 5700 50  0001 C CNN
F 3 "" H 7350 5700 50  0001 C CNN
	1    7350 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 5700 7350 5650
Wire Wire Line
	7150 5250 7100 5250
Wire Wire Line
	7100 5250 7100 5000
Wire Wire Line
	7100 5000 7800 5000
Wire Wire Line
	7800 5000 7800 5350
Wire Wire Line
	7800 5350 7750 5350
Wire Wire Line
	3000 3750 3050 3750
Wire Wire Line
	3050 3750 3050 3800
Connection ~ 3050 3750
Wire Wire Line
	3050 3750 3100 3750
$Comp
L Device:R R?
U 1 1 5E076197
P 3050 3950
F 0 "R?" H 3120 3996 50  0000 L CNN
F 1 "1k" H 3120 3905 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2980 3950 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT1K00/RMCF0603FT1K00CT-ND/1942996" H 3050 3950 50  0001 C CNN
	1    3050 3950
	1    0    0    -1  
$EndComp
Text Label 3050 4400 1    50   ~ 0
MIDRAIL
Wire Wire Line
	3050 4400 3050 4100
$Comp
L Device:R R?
U 1 1 5E07FCBB
P 4450 4000
F 0 "R?" H 4520 4046 50  0000 L CNN
F 1 "1k" H 4520 3955 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4380 4000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT1K00/RMCF0603FT1K00CT-ND/1942996" H 4450 4000 50  0001 C CNN
	1    4450 4000
	1    0    0    -1  
$EndComp
Text Label 4450 4450 1    50   ~ 0
MIDRAIL
Wire Wire Line
	4450 4450 4450 4150
Text Label 5850 4450 1    50   ~ 0
MIDRAIL
Wire Wire Line
	5850 4450 5850 4150
$Comp
L Device:R R?
U 1 1 5E08830E
P 7300 4000
F 0 "R?" H 7370 4046 50  0000 L CNN
F 1 "1k" H 7370 3955 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7230 4000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT1K00/RMCF0603FT1K00CT-ND/1942996" H 7300 4000 50  0001 C CNN
	1    7300 4000
	1    0    0    -1  
$EndComp
Text Label 7300 4450 1    50   ~ 0
MIDRAIL
Wire Wire Line
	7300 4450 7300 4150
$Comp
L Device:R R?
U 1 1 5E0841CC
P 5850 4000
F 0 "R?" H 5920 4046 50  0000 L CNN
F 1 "1k" H 5920 3955 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5780 4000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT1K00/RMCF0603FT1K00CT-ND/1942996" H 5850 4000 50  0001 C CNN
	1    5850 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E0A65F5
P 6550 5250
F 0 "R?" H 6620 5296 50  0000 L CNN
F 1 "30k" H 6620 5205 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6480 5250 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT30K0/RMCF0603FT30K0CT-ND/1943086" H 6550 5250 50  0001 C CNN
	1    6550 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5050 6550 5100
$Comp
L power:GND #PWR?
U 1 1 5E0AC1BB
P 6550 5900
F 0 "#PWR?" H 6550 5650 50  0001 C CNN
F 1 "GND" H 6555 5727 50  0000 C CNN
F 2 "" H 6550 5900 50  0001 C CNN
F 3 "" H 6550 5900 50  0001 C CNN
	1    6550 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5800 6550 5850
Wire Wire Line
	6550 5400 6550 5450
Wire Wire Line
	6550 5450 6900 5450
Connection ~ 6550 5450
Wire Wire Line
	6550 5450 6550 5500
$Comp
L Device:R R?
U 1 1 5E0D80B7
P 6550 5650
F 0 "R?" H 6620 5696 50  0000 L CNN
F 1 "30k" H 6620 5605 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6480 5650 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT30K0/RMCF0603FT30K0CT-ND/1943086" H 6550 5650 50  0001 C CNN
	1    6550 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E0D9D1C
P 6900 5650
F 0 "C?" H 6992 5696 50  0000 L CNN
F 1 "2.2nF" H 6992 5605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6900 5650 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206085/732-8003-1-ND/5454630" H 6900 5650 50  0001 C CNN
	1    6900 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5450 6900 5550
Connection ~ 6900 5450
Wire Wire Line
	6900 5450 7150 5450
Wire Wire Line
	6550 5850 6900 5850
Wire Wire Line
	6900 5850 6900 5750
Connection ~ 6550 5850
Wire Wire Line
	6550 5850 6550 5900
$Comp
L Device:C_Small C?
U 1 1 5E0E564B
P 8500 5500
F 0 "C?" H 8592 5546 50  0000 L CNN
F 1 "4.7uF" H 8592 5455 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8500 5500 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/samsung-electro-mechanics/CL10A475KQ8NNNC/1276-1045-1-ND/3889131" H 8500 5500 50  0001 C CNN
	1    8500 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E0F1B62
P 8500 5650
F 0 "#PWR?" H 8500 5400 50  0001 C CNN
F 1 "GND" H 8505 5477 50  0000 C CNN
F 2 "" H 8500 5650 50  0001 C CNN
F 3 "" H 8500 5650 50  0001 C CNN
	1    8500 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5600 8500 5650
$Comp
L Device:R R?
U 1 1 5E0F85B0
P 8250 5350
F 0 "R?" V 8043 5350 50  0000 C CNN
F 1 "10" V 8134 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8180 5350 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10R0/RMCF0603FT10R0CT-ND/1942943" H 8250 5350 50  0001 C CNN
	1    8250 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	7800 5350 8100 5350
Connection ~ 7800 5350
Wire Wire Line
	8400 5350 8500 5350
Wire Wire Line
	8500 5350 8500 5400
Text Label 8500 5350 0    50   ~ 0
MIDRAIL
Wire Wire Line
	6250 2700 6250 3750
Wire Wire Line
	6300 3750 6300 2600
Wire Wire Line
	6350 2500 6350 3350
$Comp
L power:GND #PWR?
U 1 1 5E15077B
P 4900 2250
F 0 "#PWR?" H 4900 2000 50  0001 C CNN
F 1 "GND" H 4905 2077 50  0000 C CNN
F 2 "" H 4900 2250 50  0001 C CNN
F 3 "" H 4900 2250 50  0001 C CNN
	1    4900 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E150785
P 4900 2100
F 0 "C?" H 4992 2146 50  0000 L CNN
F 1 "100nF" H 4992 2055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4900 2100 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 4900 2100 50  0001 C CNN
	1    4900 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2200 4900 2250
Wire Wire Line
	4900 1950 4900 2000
$Comp
L power:GND #PWR?
U 1 1 5E168AE1
P 6350 1650
F 0 "#PWR?" H 6350 1400 50  0001 C CNN
F 1 "GND" H 6355 1477 50  0000 C CNN
F 2 "" H 6350 1650 50  0001 C CNN
F 3 "" H 6350 1650 50  0001 C CNN
	1    6350 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E168AEB
P 6350 1500
F 0 "C?" H 6442 1546 50  0000 L CNN
F 1 "100nF" H 6442 1455 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6350 1500 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 6350 1500 50  0001 C CNN
	1    6350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1600 6350 1650
Wire Wire Line
	6350 1350 6350 1400
Text GLabel 5250 2900 0    50   Input ~ 0
VGA-SCK
Text GLabel 6700 2300 0    50   Input ~ 0
VGA-SCK
Text GLabel 5250 2800 0    50   Input ~ 0
VGA-D0
Text GLabel 6700 2200 0    50   Input ~ 0
VGA-D1
Text GLabel 5250 2700 0    50   Input ~ 0
VGA-~CS0
Text GLabel 6700 2100 0    50   Input ~ 0
VGA-~CS1
Wire Wire Line
	6700 2100 6750 2100
Wire Wire Line
	6750 2200 6700 2200
Wire Wire Line
	6700 2300 6750 2300
Wire Wire Line
	5250 2700 5300 2700
Wire Wire Line
	5300 2800 5250 2800
Wire Wire Line
	5250 2900 5300 2900
$Comp
L power:+3V3 #PWR?
U 1 1 5E033FD3
P 6700 1900
F 0 "#PWR?" H 6700 1750 50  0001 C CNN
F 1 "+3V3" H 6715 2073 50  0000 C CNN
F 2 "" H 6700 1900 50  0001 C CNN
F 3 "" H 6700 1900 50  0001 C CNN
	1    6700 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E168AD7
P 6350 1350
F 0 "#PWR?" H 6350 1200 50  0001 C CNN
F 1 "+3V3" H 6365 1523 50  0000 C CNN
F 2 "" H 6350 1350 50  0001 C CNN
F 3 "" H 6350 1350 50  0001 C CNN
	1    6350 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DFD98EC
P 5250 2500
F 0 "#PWR?" H 5250 2350 50  0001 C CNN
F 1 "+3V3" H 5265 2673 50  0000 C CNN
F 2 "" H 5250 2500 50  0001 C CNN
F 3 "" H 5250 2500 50  0001 C CNN
	1    5250 2500
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E150771
P 4900 1950
F 0 "#PWR?" H 4900 1800 50  0001 C CNN
F 1 "+3V3" H 4915 2123 50  0000 C CNN
F 2 "" H 4900 1950 50  0001 C CNN
F 3 "" H 4900 1950 50  0001 C CNN
	1    4900 1950
	1    0    0    -1  
$EndComp
$Comp
L Parts:+3V3-LN #PWR?
U 1 1 5E2A82B0
P 8650 3650
F 0 "#PWR?" H 8650 3500 50  0001 C CNN
F 1 "+3V3-LN" H 8665 3823 50  0000 C CNN
F 2 "" H 8650 3650 50  0001 C CNN
F 3 "" H 8650 3650 50  0001 C CNN
	1    8650 3650
	1    0    0    -1  
$EndComp
$Comp
L Parts:+3V3-LN #PWR?
U 1 1 5E2AAEEA
P 6550 5050
F 0 "#PWR?" H 6550 4900 50  0001 C CNN
F 1 "+3V3-LN" H 6565 5223 50  0000 C CNN
F 2 "" H 6550 5050 50  0001 C CNN
F 3 "" H 6550 5050 50  0001 C CNN
	1    6550 5050
	1    0    0    -1  
$EndComp
$Comp
L Parts:+3V3-LN #PWR?
U 1 1 5E2AD2A7
P 9850 2700
F 0 "#PWR?" H 9850 2550 50  0001 C CNN
F 1 "+3V3-LN" H 9865 2873 50  0000 C CNN
F 2 "" H 9850 2700 50  0001 C CNN
F 3 "" H 9850 2700 50  0001 C CNN
	1    9850 2700
	1    0    0    -1  
$EndComp
$Comp
L Parts:+3V3-LN #PWR?
U 1 1 5E2AFA32
P 7350 4950
F 0 "#PWR?" H 7350 4800 50  0001 C CNN
F 1 "+3V3-LN" H 7365 5123 50  0000 C CNN
F 2 "" H 7350 4950 50  0001 C CNN
F 3 "" H 7350 4950 50  0001 C CNN
	1    7350 4950
	1    0    0    -1  
$EndComp
$Comp
L Parts:+3V3-LN #PWR?
U 1 1 5E2AFFB8
P 6050 5250
F 0 "#PWR?" H 6050 5100 50  0001 C CNN
F 1 "+3V3-LN" H 6065 5423 50  0000 C CNN
F 2 "" H 6050 5250 50  0001 C CNN
F 3 "" H 6050 5250 50  0001 C CNN
	1    6050 5250
	1    0    0    -1  
$EndComp
$Comp
L Parts:+3V3-LN #PWR?
U 1 1 5E2B0647
P 4450 5100
F 0 "#PWR?" H 4450 4950 50  0001 C CNN
F 1 "+3V3-LN" H 4465 5273 50  0000 C CNN
F 2 "" H 4450 5100 50  0001 C CNN
F 3 "" H 4450 5100 50  0001 C CNN
	1    4450 5100
	1    0    0    -1  
$EndComp
$Comp
L Parts:+3V3-LN #PWR?
U 1 1 5E2B0FA3
P 3700 5050
F 0 "#PWR?" H 3700 4900 50  0001 C CNN
F 1 "+3V3-LN" H 3715 5223 50  0000 C CNN
F 2 "" H 3700 5050 50  0001 C CNN
F 3 "" H 3700 5050 50  0001 C CNN
	1    3700 5050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
