EESchema Schematic File Version 4
LIBS:Capstone-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 8
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
L Parts:BMD-360 U?
U 1 1 5DCF155F
P 3250 2600
F 0 "U?" H 3250 3765 50  0000 C CNN
F 1 "BMD-360" H 3250 3674 50  0000 C CNN
F 2 "Parts:BMD-360" H 3250 1400 50  0001 C BNN
F 3 "https://www.u-blox.com/en/product/bmd-360-open-cpu" H 3350 1300 50  0001 L BNN
	1    3250 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DCF44EC
P 4050 1700
F 0 "#PWR?" H 4050 1550 50  0001 C CNN
F 1 "+3V3" H 4065 1873 50  0000 C CNN
F 2 "" H 4050 1700 50  0001 C CNN
F 3 "" H 4050 1700 50  0001 C CNN
	1    4050 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1700 4050 1700
$Comp
L power:GND #PWR?
U 1 1 5DCF5A78
P 4050 3600
F 0 "#PWR?" H 4050 3350 50  0001 C CNN
F 1 "GND" H 4055 3427 50  0000 C CNN
F 2 "" H 4050 3600 50  0001 C CNN
F 3 "" H 4050 3600 50  0001 C CNN
	1    4050 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 3600 4050 3600
Text GLabel 4000 3300 2    50   Input ~ 0
MICRO-SWCLK
Text GLabel 4000 3400 2    50   Input ~ 0
MICRO-SWDIO
Wire Wire Line
	3950 3300 4000 3300
Wire Wire Line
	4000 3400 3950 3400
$Comp
L power:+3V3 #PWR?
U 1 1 5DCF6F82
P 10100 2150
F 0 "#PWR?" H 10100 2000 50  0001 C CNN
F 1 "+3V3" H 10115 2323 50  0000 C CNN
F 2 "" H 10100 2150 50  0001 C CNN
F 3 "" H 10100 2150 50  0001 C CNN
	1    10100 2150
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5DCE5B76
P 9850 3300
F 0 "SW?" H 9850 3585 50  0000 C CNN
F 1 "SW_Push" H 9850 3494 50  0000 C CNN
F 2 "Parts:PTS645SK43SM" H 9850 3500 50  0001 C CNN
F 3 "https://www.ckswitches.com/products/tactile/PTS645/" H 9850 3500 50  0001 C CNN
	1    9850 3300
	1    0    0    -1  
$EndComp
Text GLabel 2500 2100 0    50   Input ~ 0
MICRO-TX
Text GLabel 2500 2200 0    50   Input ~ 0
MICRO-RX
Text GLabel 8950 3300 0    50   Input ~ 0
MICRO-nRESET
Text GLabel 4000 2700 2    50   Input ~ 0
FPGA-nSTATUS
Text GLabel 2500 3000 0    50   Input ~ 0
FPGA-DCLK
Text GLabel 2500 3100 0    50   Input ~ 0
FPGA-DIN
Text GLabel 4000 2600 2    50   Input ~ 0
FPGA-nCONFIG
Text GLabel 4000 2400 2    50   Input ~ 0
FPGA-CONF_DONE
Text GLabel 4000 2500 2    50   Input ~ 0
FPGA-INIT_DONE
Text GLabel 4000 2800 2    50   Input ~ 0
FPGA-CRC_ERROR
Text Label 4000 1900 0    50   ~ 0
SCL
Text Label 4000 2000 0    50   ~ 0
SDA
Wire Wire Line
	2550 3100 2500 3100
Wire Wire Line
	2500 3000 2550 3000
Text GLabel 2500 2900 0    50   Input ~ 0
FPGA-DOUT
Wire Wire Line
	2500 2900 2550 2900
Text Notes 2250 1350 0    50   ~ 0
Note: Low-speed is defined by Nordic Semi as < 10kHz
$Comp
L Device:R R?
U 1 1 5DF9D7B6
P 9200 2150
F 0 "R?" V 8993 2150 50  0000 C CNN
F 1 "47" V 9084 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9130 2150 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT47R0/RMCF0603FT47R0CT-ND/1942954" H 9200 2150 50  0001 C CNN
	1    9200 2150
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DF9DA34
P 9450 1950
F 0 "R?" V 9243 1950 50  0000 C CNN
F 1 "30" V 9334 1950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9380 1950 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT30R0/RMCF0603FT30R0CT-ND/4425092" H 9450 1950 50  0001 C CNN
	1    9450 1950
	0    1    1    0   
$EndComp
$Comp
L Parts:LED_ABGR D?
U 1 1 5DCF3816
P 9850 2150
F 0 "D?" H 9850 2647 50  0000 C CNN
F 1 "LED_ABGR" H 9850 2556 50  0000 C CNN
F 2 "Parts:CLMVC-FKA" H 9850 1725 50  0001 C CNN
F 3 "https://www.cree.com/led-components/media/documents/1273-CLMVC-FKA.pdf" H 9850 2100 50  0001 C CNN
	1    9850 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DFB4959
P 9450 2350
F 0 "R?" V 9243 2350 50  0000 C CNN
F 1 "30" V 9334 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9380 2350 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT30R0/RMCF0603FT30R0CT-ND/4425092" H 9450 2350 50  0001 C CNN
	1    9450 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5DFB4DBC
P 8950 2350
F 0 "R?" V 8743 2350 50  0000 C CNN
F 1 "47" V 8834 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8880 2350 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT47R0/RMCF0603FT47R0CT-ND/1942954" H 8950 2350 50  0001 C CNN
	1    8950 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	10050 2150 10100 2150
Wire Wire Line
	9600 1950 9650 1950
Wire Wire Line
	9650 2350 9600 2350
Wire Wire Line
	9650 2150 9350 2150
Wire Wire Line
	9300 2350 9100 2350
Wire Wire Line
	3950 2400 4000 2400
Wire Wire Line
	3950 2200 4000 2200
Wire Wire Line
	3950 2300 4000 2300
Text Label 2250 3400 0    50   ~ 0
LED-R
Text Label 2250 3500 0    50   ~ 0
LED-G
Text Label 2250 3600 0    50   ~ 0
LED-B
Text Label 8550 2350 0    50   ~ 0
LED-R
Wire Wire Line
	8550 1950 9300 1950
Wire Wire Line
	8800 2350 8550 2350
Wire Wire Line
	8550 2150 9050 2150
Text Label 8550 2150 0    50   ~ 0
LED-G
Text Label 8550 1950 0    50   ~ 0
LED-B
Text Label 4000 2100 0    50   ~ 0
nRESET
Wire Wire Line
	3950 2100 4250 2100
$Comp
L Device:R R?
U 1 1 5DFF7E66
P 4400 2100
F 0 "R?" V 4193 2100 50  0000 C CNN
F 1 "10k" V 4284 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4330 2100 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 4400 2100 50  0001 C CNN
	1    4400 2100
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DFFAB56
P 4600 2100
F 0 "#PWR?" H 4600 1950 50  0001 C CNN
F 1 "+3V3" V 4600 2300 50  0000 C CNN
F 2 "" H 4600 2100 50  0001 C CNN
F 3 "" H 4600 2100 50  0001 C CNN
	1    4600 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	4550 2100 4600 2100
Text Label 9000 3300 0    50   ~ 0
nRESET
$Comp
L power:GND #PWR?
U 1 1 5DFFDC40
P 10100 3300
F 0 "#PWR?" H 10100 3050 50  0001 C CNN
F 1 "GND" V 10100 3125 50  0000 C CNN
F 2 "" H 10100 3300 50  0001 C CNN
F 3 "" H 10100 3300 50  0001 C CNN
	1    10100 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 3300 10100 3300
$Comp
L Device:R R?
U 1 1 5E0004EB
P 9450 3300
F 0 "R?" V 9243 3300 50  0000 C CNN
F 1 "1k" V 9334 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9380 3300 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT1K00/RMCF0603FT1K00CT-ND/1942996" H 9450 3300 50  0001 C CNN
	1    9450 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 3300 9650 3300
Wire Wire Line
	8950 3300 9300 3300
$Comp
L Switch:SW_Push SW?
U 1 1 5E0092F1
P 9850 3800
F 0 "SW?" H 9850 4085 50  0000 C CNN
F 1 "SW_Push" H 9850 3994 50  0000 C CNN
F 2 "Parts:PTS645SK43SM" H 9850 4000 50  0001 C CNN
F 3 "https://www.ckswitches.com/products/tactile/PTS645/" H 9850 4000 50  0001 C CNN
	1    9850 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E009307
P 9450 3800
F 0 "R?" V 9243 3800 50  0000 C CNN
F 1 "1k" V 9334 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9380 3800 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT1K00/RMCF0603FT1K00CT-ND/1942996" H 9450 3800 50  0001 C CNN
	1    9450 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 3800 9650 3800
$Comp
L power:GND #PWR?
U 1 1 5E010FCC
P 10100 3800
F 0 "#PWR?" H 10100 3550 50  0001 C CNN
F 1 "GND" V 10100 3625 50  0000 C CNN
F 2 "" H 10100 3800 50  0001 C CNN
F 3 "" H 10100 3800 50  0001 C CNN
	1    10100 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 3800 10100 3800
$Comp
L Switch:SW_Push SW?
U 1 1 5E014F90
P 9850 4300
F 0 "SW?" H 9850 4585 50  0000 C CNN
F 1 "SW_Push" H 9850 4494 50  0000 C CNN
F 2 "Parts:PTS645SK43SM" H 9850 4500 50  0001 C CNN
F 3 "https://www.ckswitches.com/products/tactile/PTS645/" H 9850 4500 50  0001 C CNN
	1    9850 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E014F9A
P 9450 4300
F 0 "R?" V 9243 4300 50  0000 C CNN
F 1 "1k" V 9334 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9380 4300 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT1K00/RMCF0603FT1K00CT-ND/1942996" H 9450 4300 50  0001 C CNN
	1    9450 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 4300 9650 4300
$Comp
L power:GND #PWR?
U 1 1 5E014FA5
P 10100 4300
F 0 "#PWR?" H 10100 4050 50  0001 C CNN
F 1 "GND" V 10100 4125 50  0000 C CNN
F 2 "" H 10100 4300 50  0001 C CNN
F 3 "" H 10100 4300 50  0001 C CNN
	1    10100 4300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10050 4300 10100 4300
Text Label 4000 2200 0    50   ~ 0
SW1
Text Label 4000 2300 0    50   ~ 0
SW2
Wire Wire Line
	3950 2500 4000 2500
Wire Wire Line
	4000 2600 3950 2600
$Comp
L Device:R R?
U 1 1 5E02C855
P 4650 2000
F 0 "R?" V 4443 2000 50  0000 C CNN
F 1 "3.3k" V 4534 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4580 2000 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT3K30/RMCF0603FT3K30CT-ND/1943024" H 4650 2000 50  0001 C CNN
	1    4650 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E033214
P 4900 1900
F 0 "R?" V 4693 1900 50  0000 C CNN
F 1 "3.3k" V 4784 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4830 1900 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT3K30/RMCF0603FT3K30CT-ND/1943024" H 4900 1900 50  0001 C CNN
	1    4900 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	3950 2000 4500 2000
Wire Wire Line
	3950 1900 4750 1900
$Comp
L power:+3V3 #PWR?
U 1 1 5E03E227
P 4850 2000
F 0 "#PWR?" H 4850 1850 50  0001 C CNN
F 1 "+3V3" V 4850 2200 50  0000 C CNN
F 2 "" H 4850 2000 50  0001 C CNN
F 3 "" H 4850 2000 50  0001 C CNN
	1    4850 2000
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E03E918
P 5100 1900
F 0 "#PWR?" H 5100 1750 50  0001 C CNN
F 1 "+3V3" V 5100 2100 50  0000 C CNN
F 2 "" H 5100 1900 50  0001 C CNN
F 3 "" H 5100 1900 50  0001 C CNN
	1    5100 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 1900 5100 1900
Wire Wire Line
	4800 2000 4850 2000
Text Label 9100 3800 0    50   ~ 0
SW1
Wire Wire Line
	9100 3800 9300 3800
Text Label 9100 4300 0    50   ~ 0
SW2
Wire Wire Line
	9100 4300 9300 4300
Text Label 2150 1700 0    50   ~ 0
ACC-INT1
Text Label 2150 1800 0    50   ~ 0
ACC-INT2
Wire Wire Line
	2150 1700 2550 1700
Wire Wire Line
	2550 1800 2150 1800
Text GLabel 2500 2300 0    50   Input ~ 0
FPGA-LINK0
Text GLabel 2500 2400 0    50   Input ~ 0
FPGA-LINK1
Text GLabel 2500 2500 0    50   Input ~ 0
FPGA-LINK2
Text GLabel 2500 2600 0    50   Input ~ 0
FPGA-LINK3
Text GLabel 2500 2700 0    50   Input ~ 0
FPGA-LINK4
Wire Wire Line
	2500 2800 2550 2800
Wire Wire Line
	2550 2700 2500 2700
Wire Wire Line
	2500 2600 2550 2600
Wire Wire Line
	2550 2500 2500 2500
Wire Wire Line
	2500 2400 2550 2400
$Comp
L Device:C_Small C?
U 1 1 5DDAE8B9
P 5100 1100
F 0 "C?" H 5192 1146 50  0000 L CNN
F 1 "100nF" H 5192 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5100 1100 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 5100 1100 50  0001 C CNN
	1    5100 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DDAE8C3
P 5100 900
F 0 "#PWR?" H 5100 750 50  0001 C CNN
F 1 "+3V3" H 5115 1073 50  0000 C CNN
F 2 "" H 5100 900 50  0001 C CNN
F 3 "" H 5100 900 50  0001 C CNN
	1    5100 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DDAE8CD
P 5100 1300
F 0 "#PWR?" H 5100 1050 50  0001 C CNN
F 1 "GND" H 5105 1127 50  0000 C CNN
F 2 "" H 5100 1300 50  0001 C CNN
F 3 "" H 5100 1300 50  0001 C CNN
	1    5100 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1200 5100 1250
Wire Wire Line
	5100 900  5100 950 
$Comp
L Device:C_Small C?
U 1 1 5DDB4BBF
P 5500 1100
F 0 "C?" H 5592 1146 50  0000 L CNN
F 1 "10uF" H 5592 1055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5500 1100 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 5500 1100 50  0001 C CNN
	1    5500 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 950  5500 950 
Wire Wire Line
	5500 950  5500 1000
Connection ~ 5100 950 
Wire Wire Line
	5100 950  5100 1000
Wire Wire Line
	5500 1200 5500 1250
Wire Wire Line
	5500 1250 5100 1250
Connection ~ 5100 1250
Wire Wire Line
	5100 1250 5100 1300
Wire Wire Line
	2500 2200 2550 2200
$Comp
L power:+BATT #PWR?
U 1 1 5DDC951F
P 1050 1600
F 0 "#PWR?" H 1050 1450 50  0001 C CNN
F 1 "+BATT" H 1065 1773 50  0000 C CNN
F 2 "" H 1050 1600 50  0001 C CNN
F 3 "" H 1050 1600 50  0001 C CNN
	1    1050 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DDCAC58
P 1050 2450
F 0 "#PWR?" H 1050 2200 50  0001 C CNN
F 1 "GND" H 1055 2277 50  0000 C CNN
F 2 "" H 1050 2450 50  0001 C CNN
F 3 "" H 1050 2450 50  0001 C CNN
	1    1050 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DDCCC81
P 1050 1800
F 0 "R?" H 1120 1846 50  0000 L CNN
F 1 "20k" H 1120 1755 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 980 1800 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT20K0/RMCF0603FT20K0CT-ND/1943075" H 1050 1800 50  0001 C CNN
	1    1050 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5DDCDBDE
P 1050 2200
F 0 "R?" H 1120 2246 50  0000 L CNN
F 1 "30k" H 1120 2155 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 980 2200 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT30K0/RMCF0603FT30K0CT-ND/1943086" H 1050 2200 50  0001 C CNN
	1    1050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2000 1050 1950
Wire Wire Line
	1050 2000 1400 2000
Wire Wire Line
	1050 2000 1050 2050
Connection ~ 1050 2000
Wire Wire Line
	1050 1650 1050 1600
Wire Wire Line
	1050 2350 1050 2400
Wire Wire Line
	1050 2400 1400 2400
Connection ~ 1050 2400
Wire Wire Line
	1050 2400 1050 2450
Connection ~ 1400 2000
Wire Wire Line
	1400 2000 2550 2000
Wire Wire Line
	1400 2400 1400 2300
Wire Wire Line
	1400 2100 1400 2000
$Comp
L Device:C_Small C?
U 1 1 5DDE1E76
P 1400 2200
F 0 "C?" H 1492 2246 50  0000 L CNN
F 1 "10nF" H 1492 2155 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1400 2200 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206014/732-7933-1-ND/5454560" H 1400 2200 50  0001 C CNN
	1    1400 2200
	1    0    0    -1  
$EndComp
Text GLabel 2500 2800 0    50   Input ~ 0
FPGA-LINK5
Wire Wire Line
	2500 2300 2550 2300
$Comp
L Device:C_Small C?
U 1 1 5DE07715
P 10650 2100
F 0 "C?" H 10742 2146 50  0000 L CNN
F 1 "10uF" H 10742 2055 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10650 2100 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 10650 2100 50  0001 C CNN
	1    10650 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DE08CC0
P 10650 2250
F 0 "#PWR?" H 10650 2000 50  0001 C CNN
F 1 "GND" H 10655 2077 50  0000 C CNN
F 2 "" H 10650 2250 50  0001 C CNN
F 3 "" H 10650 2250 50  0001 C CNN
	1    10650 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DE0949F
P 10650 1950
F 0 "#PWR?" H 10650 1800 50  0001 C CNN
F 1 "+3V3" H 10665 2123 50  0000 C CNN
F 2 "" H 10650 1950 50  0001 C CNN
F 3 "" H 10650 1950 50  0001 C CNN
	1    10650 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 1950 10650 2000
Wire Wire Line
	10650 2200 10650 2250
Text GLabel 4000 2900 2    50   Input ~ 0
HV-ENABLE
Wire Wire Line
	3950 2700 4000 2700
Text GLabel 1600 3200 0    50   Input ~ 0
FPGA-CS
Wire Wire Line
	3950 3000 4500 3000
Wire Wire Line
	4000 2900 3950 2900
Wire Wire Line
	3950 2800 4000 2800
$Comp
L Parts:MIC841N U?
U 1 1 5E17FC9E
P 2150 4800
F 0 "U?" H 2150 5187 60  0000 C CNN
F 1 "MIC841N" H 2150 5081 60  0000 C CNN
F 2 "Parts:SOT353" H 2150 4550 60  0001 C CNN
F 3 "https://www.microchip.com/wwwproducts/en/MIC841" H 1550 4800 60  0001 C CNN
	1    2150 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 6550 5350 6600
Wire Wire Line
	5350 6800 5350 6850
$Comp
L power:GND #PWR?
U 1 1 5DDA85CE
P 5350 6850
F 0 "#PWR?" H 5350 6600 50  0001 C CNN
F 1 "GND" H 5355 6677 50  0000 C CNN
F 2 "" H 5350 6850 50  0001 C CNN
F 3 "" H 5350 6850 50  0001 C CNN
	1    5350 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DDA85C4
P 5350 6550
F 0 "#PWR?" H 5350 6400 50  0001 C CNN
F 1 "+3V3" H 5365 6723 50  0000 C CNN
F 2 "" H 5350 6550 50  0001 C CNN
F 3 "" H 5350 6550 50  0001 C CNN
	1    5350 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5DDA85BA
P 5350 6700
F 0 "C?" H 5442 6746 50  0000 L CNN
F 1 "100nF" H 5442 6655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5350 6700 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 5350 6700 50  0001 C CNN
	1    5350 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5650 5350 5700
Wire Wire Line
	5350 5900 5350 5950
$Comp
L power:GND #PWR?
U 1 1 5DD9CB13
P 5350 5950
F 0 "#PWR?" H 5350 5700 50  0001 C CNN
F 1 "GND" H 5355 5777 50  0000 C CNN
F 2 "" H 5350 5950 50  0001 C CNN
F 3 "" H 5350 5950 50  0001 C CNN
	1    5350 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5DD9C61F
P 5350 5650
F 0 "#PWR?" H 5350 5500 50  0001 C CNN
F 1 "+3V3" H 5365 5823 50  0000 C CNN
F 2 "" H 5350 5650 50  0001 C CNN
F 3 "" H 5350 5650 50  0001 C CNN
	1    5350 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5DD9B0BF
P 5350 5800
F 0 "C?" H 5442 5846 50  0000 L CNN
F 1 "100nF" H 5442 5755 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5350 5800 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 5350 5800 50  0001 C CNN
	1    5350 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 6500 4500 6500
Wire Wire Line
	4450 6400 4500 6400
Text Label 4500 6500 0    50   ~ 0
ACC-INT2
Text Label 4500 6400 0    50   ~ 0
ACC-INT1
Wire Wire Line
	3400 6700 3450 6700
$Comp
L power:+3V3 #PWR?
U 1 1 5E02953A
P 3400 6700
F 0 "#PWR?" H 3400 6550 50  0001 C CNN
F 1 "+3V3" V 3400 6900 50  0000 C CNN
F 2 "" H 3400 6700 50  0001 C CNN
F 3 "" H 3400 6700 50  0001 C CNN
	1    3400 6700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3350 6900 3450 6900
$Comp
L power:GND #PWR?
U 1 1 5E022CDD
P 3350 6900
F 0 "#PWR?" H 3350 6650 50  0001 C CNN
F 1 "GND" H 3355 6727 50  0000 C CNN
F 2 "" H 3350 6900 50  0001 C CNN
F 3 "" H 3350 6900 50  0001 C CNN
	1    3350 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 6400 3450 6400
$Comp
L power:+3V3 #PWR?
U 1 1 5E0201C5
P 3350 6400
F 0 "#PWR?" H 3350 6250 50  0001 C CNN
F 1 "+3V3" H 3365 6573 50  0000 C CNN
F 2 "" H 3350 6400 50  0001 C CNN
F 3 "" H 3350 6400 50  0001 C CNN
	1    3350 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6600 3450 6600
Wire Wire Line
	3450 6500 3250 6500
Wire Wire Line
	3500 5800 3300 5800
Wire Wire Line
	3300 5700 3500 5700
Text Label 3250 6600 0    50   ~ 0
SDA
Text Label 3250 6500 0    50   ~ 0
SCL
Text Label 3300 5800 0    50   ~ 0
SDA
Text Label 3300 5700 0    50   ~ 0
SCL
Wire Wire Line
	4450 6900 4550 6900
Wire Wire Line
	4500 6700 4550 6700
Connection ~ 4500 6700
Wire Wire Line
	4500 6800 4450 6800
Wire Wire Line
	4500 6700 4500 6800
$Comp
L power:GND #PWR?
U 1 1 5DE88898
P 4550 6900
F 0 "#PWR?" H 4550 6650 50  0001 C CNN
F 1 "GND" H 4555 6727 50  0000 C CNN
F 2 "" H 4550 6900 50  0001 C CNN
F 3 "" H 4550 6900 50  0001 C CNN
	1    4550 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 6700 4500 6700
$Comp
L power:+3V3 #PWR?
U 1 1 5DE87DD2
P 4550 6700
F 0 "#PWR?" H 4550 6550 50  0001 C CNN
F 1 "+3V3" H 4565 6873 50  0000 C CNN
F 2 "" H 4550 6700 50  0001 C CNN
F 3 "" H 4550 6700 50  0001 C CNN
	1    4550 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5900 4300 5900
Connection ~ 4250 5900
Wire Wire Line
	4200 5900 4250 5900
Wire Wire Line
	4250 5800 4250 5900
Wire Wire Line
	4200 5800 4250 5800
$Comp
L power:GND #PWR?
U 1 1 5DE86F13
P 4300 5900
F 0 "#PWR?" H 4300 5650 50  0001 C CNN
F 1 "GND" H 4305 5727 50  0000 C CNN
F 2 "" H 4300 5900 50  0001 C CNN
F 3 "" H 4300 5900 50  0001 C CNN
	1    4300 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5700 4300 5700
$Comp
L power:+3V3 #PWR?
U 1 1 5DE86491
P 4300 5700
F 0 "#PWR?" H 4300 5550 50  0001 C CNN
F 1 "+3V3" H 4315 5873 50  0000 C CNN
F 2 "" H 4300 5700 50  0001 C CNN
F 3 "" H 4300 5700 50  0001 C CNN
	1    4300 5700
	1    0    0    -1  
$EndComp
$Comp
L Parts:LIS2DE12 U?
U 1 1 5DD21338
P 3950 6700
F 0 "U?" H 3950 7265 50  0000 C CNN
F 1 "LIS2DE12" H 3950 7174 50  0000 C CNN
F 2 "Parts:LGA12" H 4225 7125 50  0001 L BNN
F 3 "https://www.st.com/content/st_com/en/products/mems-and-sensors/accelerometers/lis2de12.html" H 3150 7850 50  0001 L BNN
	1    3950 6700
	1    0    0    -1  
$EndComp
$Comp
L Parts:ENS210 U?
U 1 1 5DD2033C
P 3850 5750
F 0 "U?" H 3850 6140 50  0000 C CNN
F 1 "ENS210" H 3850 6049 50  0000 C CNN
F 2 "Parts:QFN4-PAD" H 3600 5450 50  0001 L BNN
F 3 "https://ams.com/ens210" H 3800 5100 50  0001 L BNN
	1    3850 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E1AC2E8
P 1050 4850
F 0 "R?" H 1120 4896 50  0000 L CNN
F 1 "3.3k" H 1120 4805 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 980 4850 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT3K30/RMCF0603FT3K30CT-ND/1943024" H 1050 4850 50  0001 C CNN
	1    1050 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E1B005E
P 2650 4900
F 0 "#PWR?" H 2650 4650 50  0001 C CNN
F 1 "GND" H 2655 4727 50  0000 C CNN
F 2 "" H 2650 4900 50  0001 C CNN
F 3 "" H 2650 4900 50  0001 C CNN
	1    2650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 4900 2650 4900
$Comp
L power:+3V3 #PWR?
U 1 1 5E1B48A3
P 1650 4700
F 0 "#PWR?" H 1650 4550 50  0001 C CNN
F 1 "+3V3" H 1665 4873 50  0000 C CNN
F 2 "" H 1650 4700 50  0001 C CNN
F 3 "" H 1650 4700 50  0001 C CNN
	1    1650 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 4700 1750 4700
$Comp
L Device:R R?
U 1 1 5E1BAF7F
P 1050 5250
F 0 "R?" H 1120 5296 50  0000 L CNN
F 1 "27k" H 1120 5205 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 980 5250 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT27K0/RMCF0603FT27K0CT-ND/1943083" H 1050 5250 50  0001 C CNN
	1    1050 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E1BC76E
P 1050 4450
F 0 "R?" H 1120 4496 50  0000 L CNN
F 1 "470k" H 1120 4405 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 980 4450 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT470K/RMCF0603FT470KCT-ND/1943136" H 1050 4450 50  0001 C CNN
	1    1050 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5E1BD74E
P 1050 4100
F 0 "R?" H 1120 4146 50  0000 L CNN
F 1 "470k" H 1120 4055 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 980 4100 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT470K/RMCF0603FT470KCT-ND/1943136" H 1050 4100 50  0001 C CNN
	1    1050 4100
	1    0    0    -1  
$EndComp
$Comp
L Parts:+50V #PWR?
U 1 1 5E1BEF30
P 1050 3900
F 0 "#PWR?" H 1050 3750 50  0001 C CNN
F 1 "+50V" H 1065 4073 50  0000 C CNN
F 2 "" H 1050 3900 50  0001 C CNN
F 3 "" H 1050 3900 50  0001 C CNN
	1    1050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 3900 1050 3950
Wire Wire Line
	1050 4250 1050 4300
Wire Wire Line
	1050 4600 1050 4650
Wire Wire Line
	1050 5000 1050 5050
$Comp
L power:GND #PWR?
U 1 1 5E1D7F3D
P 1050 5450
F 0 "#PWR?" H 1050 5200 50  0001 C CNN
F 1 "GND" H 1055 5277 50  0000 C CNN
F 2 "" H 1050 5450 50  0001 C CNN
F 3 "" H 1050 5450 50  0001 C CNN
	1    1050 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5450 1050 5400
Wire Wire Line
	1050 4650 1500 4650
Wire Wire Line
	1500 4650 1500 4800
Wire Wire Line
	1500 4800 1750 4800
Connection ~ 1050 4650
Wire Wire Line
	1050 4650 1050 4700
Wire Wire Line
	1750 4900 1500 4900
Wire Wire Line
	1500 4900 1500 5050
Wire Wire Line
	1500 5050 1050 5050
Connection ~ 1050 5050
Wire Wire Line
	1050 5050 1050 5100
Text Label 2600 4700 0    50   ~ 0
HV-OK
Text Label 4500 3000 0    50   ~ 0
HV-OK
$Comp
L power:+3V3 #PWR?
U 1 1 5E21D6C4
P 3250 4700
F 0 "#PWR?" H 3250 4550 50  0001 C CNN
F 1 "+3V3" H 3265 4873 50  0000 C CNN
F 2 "" H 3250 4700 50  0001 C CNN
F 3 "" H 3250 4700 50  0001 C CNN
	1    3250 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 4700 2900 4700
Wire Wire Line
	3200 4700 3250 4700
$Comp
L Device:R R?
U 1 1 5E232AC6
P 3050 4700
F 0 "R?" V 2843 4700 50  0000 C CNN
F 1 "220k" V 2934 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2980 4700 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT220K/RMCF0603FT220KCT-ND/2417988" H 3050 4700 50  0001 C CNN
	1    3050 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 2100 2550 2100
Wire Wire Line
	2250 3400 2550 3400
Wire Wire Line
	2250 3500 2550 3500
Wire Wire Line
	2250 3600 2550 3600
$Comp
L power:+3V3 #PWR?
U 1 1 5E274BDB
P 2500 6450
F 0 "#PWR?" H 2500 6300 50  0001 C CNN
F 1 "+3V3" H 2515 6623 50  0000 C CNN
F 2 "" H 2500 6450 50  0001 C CNN
F 3 "" H 2500 6450 50  0001 C CNN
	1    2500 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6500 2500 6500
$Comp
L power:GND #PWR?
U 1 1 5E27AE19
P 2500 6900
F 0 "#PWR?" H 2500 6650 50  0001 C CNN
F 1 "GND" H 2505 6727 50  0000 C CNN
F 2 "" H 2500 6900 50  0001 C CNN
F 3 "" H 2500 6900 50  0001 C CNN
	1    2500 6900
	1    0    0    -1  
$EndComp
$Comp
L Parts:W25Q80DV U?
U 1 1 5E28B1F1
P 2000 6700
F 0 "U?" H 2000 7187 60  0000 C CNN
F 1 "W25Q80DV" H 2000 7081 60  0000 C CNN
F 2 "Parts:SOIC8" H 2000 6350 60  0001 C CNN
F 3 "https://www.winbond.com/hq/product/code-storage-flash-memory/serial-nor-flash/?__locale=en&partNo=W25Q80DV" H 1300 6800 60  0001 C CNN
	1    2000 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 6900 2500 6900
Wire Wire Line
	2500 6500 2500 6600
Wire Wire Line
	2500 6800 2400 6800
Connection ~ 2500 6500
Wire Wire Line
	2400 6600 2500 6600
Connection ~ 2500 6600
Wire Wire Line
	2500 6600 2500 6800
$Comp
L Device:R R?
U 1 1 5E2A699E
P 950 6500
F 0 "R?" V 743 6500 50  0000 C CNN
F 1 "10k" V 834 6500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 880 6500 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 950 6500 50  0001 C CNN
	1    950  6500
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 6450 2500 6500
$Comp
L power:+3V3 #PWR?
U 1 1 5E2B3EE9
P 700 6500
F 0 "#PWR?" H 700 6350 50  0001 C CNN
F 1 "+3V3" H 715 6673 50  0000 C CNN
F 2 "" H 700 6500 50  0001 C CNN
F 3 "" H 700 6500 50  0001 C CNN
	1    700  6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  6500 800  6500
Wire Wire Line
	1100 6500 1600 6500
Text Label 1150 6500 0    50   ~ 0
FLASH-~CS
Text Label 1650 3200 0    50   ~ 0
FLASH-~CS
Text GLabel 1550 6600 0    50   Input ~ 0
FPGA-DCLK
Wire Wire Line
	1550 6600 1600 6600
Text GLabel 1550 6900 0    50   Input ~ 0
FPGA-DIN
Wire Wire Line
	1550 6900 1600 6900
Wire Wire Line
	1600 3200 2550 3200
Text GLabel 1550 6800 0    50   Input ~ 0
FPGA-DOUT
Wire Wire Line
	1550 6800 1600 6800
Text GLabel 1950 3300 0    50   Input ~ 0
TRANSMIT-ENABLE
Wire Wire Line
	1950 3300 2550 3300
$Comp
L Device:C_Small C?
U 1 1 5E3DE021
P 750 7250
F 0 "C?" H 842 7296 50  0000 L CNN
F 1 "100nF" H 842 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 750 7250 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 750 7250 50  0001 C CNN
	1    750  7250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E3DE02B
P 750 7050
F 0 "#PWR?" H 750 6900 50  0001 C CNN
F 1 "+3V3" H 765 7223 50  0000 C CNN
F 2 "" H 750 7050 50  0001 C CNN
F 3 "" H 750 7050 50  0001 C CNN
	1    750  7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E3DE035
P 750 7450
F 0 "#PWR?" H 750 7200 50  0001 C CNN
F 1 "GND" H 755 7277 50  0000 C CNN
F 2 "" H 750 7450 50  0001 C CNN
F 3 "" H 750 7450 50  0001 C CNN
	1    750  7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  7350 750  7400
Wire Wire Line
	750  7050 750  7100
$Comp
L Device:C_Small C?
U 1 1 5E3DE041
P 1150 7250
F 0 "C?" H 1242 7296 50  0000 L CNN
F 1 "10uF" H 1242 7205 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1150 7250 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/kemet/C0805C106K8PACTU/399-4925-1-ND/1090920" H 1150 7250 50  0001 C CNN
	1    1150 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	750  7100 1150 7100
Wire Wire Line
	1150 7100 1150 7150
Connection ~ 750  7100
Wire Wire Line
	750  7100 750  7150
Wire Wire Line
	1150 7350 1150 7400
Wire Wire Line
	1150 7400 750  7400
Connection ~ 750  7400
Wire Wire Line
	750  7400 750  7450
Wire Wire Line
	3950 4500 3950 4550
Wire Wire Line
	3950 4750 3950 4800
$Comp
L power:GND #PWR?
U 1 1 5E3E92C6
P 3950 4800
F 0 "#PWR?" H 3950 4550 50  0001 C CNN
F 1 "GND" H 3955 4627 50  0000 C CNN
F 2 "" H 3950 4800 50  0001 C CNN
F 3 "" H 3950 4800 50  0001 C CNN
	1    3950 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5E3E92D0
P 3950 4500
F 0 "#PWR?" H 3950 4350 50  0001 C CNN
F 1 "+3V3" H 3965 4673 50  0000 C CNN
F 2 "" H 3950 4500 50  0001 C CNN
F 3 "" H 3950 4500 50  0001 C CNN
	1    3950 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5E3E92DA
P 3950 4650
F 0 "C?" H 4042 4696 50  0000 L CNN
F 1 "100nF" H 4042 4605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3950 4650 50  0001 C CNN
F 3 "https://www.digikey.ca/product-detail/en/w-rth-elektronik/885012206020/732-7939-1-ND/5454566" H 3950 4650 50  0001 C CNN
	1    3950 4650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
