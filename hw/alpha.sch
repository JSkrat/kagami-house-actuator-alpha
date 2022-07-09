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
L alpha-rescue:ATmega88PA-AU-MCU_Microchip_ATmega U1
U 1 1 5ECADD6B
P 5500 3350
F 0 "U1" H 5050 1900 50  0000 C CNN
F 1 "ATmega88PA-AU" H 5400 2250 50  0000 C CNN
F 2 "atmega8:atmega8-TQFP32-08" H 5500 3350 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega48PA_88PA_168PA-Data-Sheet-40002011A.pdf" H 5500 3350 50  0001 C CNN
	1    5500 3350
	1    0    0    -1  
$EndComp
Text Label 7750 1050 0    50   ~ 0
220_N
Text Label 8350 1150 0    50   ~ 0
220_L
Text Label 9600 800  2    50   ~ 0
220_out_1
Text Notes 5650 1900 0    50   ~ 0
8MHz@3.3v\n(safe operating area)
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J5
U 1 1 5ECB23C9
P 5450 1050
F 0 "J5" H 5500 1367 50  0000 C CNN
F 1 "NRF24L01" H 5500 1276 50  0000 C CNN
F 2 "NRF:NRF24L01" H 5450 1050 50  0001 C CNN
F 3 "~" H 5450 1050 50  0001 C CNN
	1    5450 1050
	1    0    0    -1  
$EndComp
Text Label 5250 950  2    50   ~ 0
gnd
Text Label 5750 950  0    50   ~ 0
3v3
Text Label 5250 1050 2    50   ~ 0
nrf_ce
Text Label 5250 1150 2    50   ~ 0
nrf_sck
Text Label 5250 1250 2    50   ~ 0
nrf_miso
Text Label 5750 1050 0    50   ~ 0
nrf_cs
Text Label 5750 1150 0    50   ~ 0
nrf_mosi
Text Label 5750 1250 0    50   ~ 0
nrf_irq
Text Label 6750 2150 0    50   ~ 0
nrf_irq
Text Label 6100 2250 0    50   ~ 0
nrf_cs
Text Label 6100 2350 0    50   ~ 0
nrf_ce
Text Label 6750 2450 0    50   ~ 0
nrf_mosi
Text Label 6750 2550 0    50   ~ 0
nrf_miso
Text Label 6750 2650 0    50   ~ 0
nrf_sck
$Comp
L Device:R R8
U 1 1 5ECB6299
P 6600 2550
F 0 "R8" V 6393 2550 50  0000 C CNN
F 1 "22" V 6484 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6530 2550 50  0001 C CNN
F 3 "~" H 6600 2550 50  0001 C CNN
	1    6600 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5ECB6AA7
P 6600 2150
F 0 "R7" V 6393 2150 50  0000 C CNN
F 1 "22" V 6484 2150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6530 2150 50  0001 C CNN
F 3 "~" H 6600 2150 50  0001 C CNN
	1    6600 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 2150 6450 2150
Wire Wire Line
	6450 2550 6100 2550
$Comp
L Device:C Cnrf2
U 1 1 5ECB73A1
P 4550 1050
F 0 "Cnrf2" H 4665 1096 50  0000 L CNN
F 1 "100n" H 4665 1005 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4588 900 50  0001 C CNN
F 3 "~" H 4550 1050 50  0001 C CNN
	1    4550 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cnrf1
U 1 1 5ECB7FDF
P 4100 1050
F 0 "Cnrf1" H 4215 1096 50  0000 L CNN
F 1 "1u" H 4215 1005 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4138 900 50  0001 C CNN
F 3 "~" H 4100 1050 50  0001 C CNN
	1    4100 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 950  5250 850 
Wire Wire Line
	4550 850  4550 900 
Wire Wire Line
	4550 850  4100 850 
Wire Wire Line
	4100 850  4100 900 
Wire Wire Line
	4100 1200 4100 1250
Wire Wire Line
	4100 1250 4550 1250
Wire Wire Line
	4550 1250 4550 1200
Connection ~ 4550 1250
Wire Wire Line
	5750 950  5750 650 
Wire Wire Line
	5750 650  4550 650 
Wire Wire Line
	4550 650  4550 850 
Connection ~ 4550 850 
Wire Wire Line
	4900 1250 4900 850 
Wire Wire Line
	4550 1250 4900 1250
Wire Wire Line
	4900 850  5250 850 
$Comp
L Device:C Cavr2
U 1 1 5ECB99A1
P 4550 1600
F 0 "Cavr2" H 4665 1646 50  0000 L CNN
F 1 "100n" H 4665 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4588 1450 50  0001 C CNN
F 3 "~" H 4550 1600 50  0001 C CNN
	1    4550 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cavr1
U 1 1 5ECBAD0E
P 4100 1600
F 0 "Cavr1" H 4215 1646 50  0000 L CNN
F 1 "1u" H 4215 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206" H 4138 1450 50  0001 C CNN
F 3 "~" H 4100 1600 50  0001 C CNN
	1    4100 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1450 4100 1400
Wire Wire Line
	4100 1400 4550 1400
Wire Wire Line
	5500 1400 5500 1600
Wire Wire Line
	4550 1450 4550 1400
Connection ~ 4550 1400
Wire Wire Line
	4550 1400 5000 1400
Wire Wire Line
	4100 1750 4100 1800
Wire Wire Line
	4100 1800 4550 1800
Wire Wire Line
	4550 1800 4550 1750
Text Label 5500 1850 1    50   ~ 0
3v3
Text Label 4300 1800 0    50   ~ 0
gnd
$Comp
L Device:C Cavr3
U 1 1 5ECBC5FC
P 5000 1600
F 0 "Cavr3" H 5115 1646 50  0000 L CNN
F 1 "100n" H 5115 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5038 1450 50  0001 C CNN
F 3 "~" H 5000 1600 50  0001 C CNN
	1    5000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1800 5000 1800
Wire Wire Line
	5000 1800 5000 1750
Connection ~ 4550 1800
Wire Wire Line
	5000 1450 5000 1400
Connection ~ 5000 1400
Wire Wire Line
	5000 1400 5500 1400
Text Label 5650 4850 0    50   ~ 0
gnd
Wire Wire Line
	5650 4850 5500 4850
$Comp
L Device:L L1
U 1 1 5ECBE6F5
P 5700 1600
F 0 "L1" V 5890 1600 50  0000 C CNN
F 1 "10uH" V 5799 1600 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 5700 1600 50  0001 C CNN
F 3 "~" H 5700 1600 50  0001 C CNN
	1    5700 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C1
U 1 1 5ECBF92B
P 6200 1600
F 0 "C1" V 5948 1600 50  0000 C CNN
F 1 "100n" V 6039 1600 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805" H 6238 1450 50  0001 C CNN
F 3 "~" H 6200 1600 50  0001 C CNN
	1    6200 1600
	0    1    1    0   
$EndComp
Text Label 6350 1600 0    50   ~ 0
gnd
Wire Wire Line
	5600 1850 5600 1700
Wire Wire Line
	5600 1700 5950 1700
Wire Wire Line
	5950 1700 5950 1600
Wire Wire Line
	5950 1600 5850 1600
Wire Wire Line
	5550 1600 5500 1600
Connection ~ 5500 1600
Wire Wire Line
	5500 1600 5500 1850
Wire Wire Line
	6050 1600 5950 1600
Connection ~ 5950 1600
NoConn ~ 4900 2150
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5ECC20F7
P 1100 1300
F 0 "J1" H 1208 1581 50  0000 C CNN
F 1 "PIR sensor" H 1208 1490 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1100 1300 50  0001 C CNN
F 3 "~" H 1100 1300 50  0001 C CNN
	1    1100 1300
	1    0    0    -1  
$EndComp
Text Label 1300 1400 0    50   ~ 0
gnd
Text Label 1300 1300 0    50   ~ 0
mov_output_1
$Comp
L Device:C Cmov1
U 1 1 5ECC40BF
P 1900 1300
F 0 "Cmov1" H 2015 1346 50  0000 L CNN
F 1 "100n" H 2015 1255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1938 1150 50  0001 C CNN
F 3 "~" H 1900 1300 50  0001 C CNN
	1    1900 1300
	1    0    0    -1  
$EndComp
Text Label 1900 1450 3    50   ~ 0
gnd
Wire Wire Line
	1300 1200 1600 1200
Wire Wire Line
	1600 1200 1600 1100
Wire Wire Line
	1600 1100 1900 1100
Wire Wire Line
	1900 1100 1900 1150
$Comp
L Device:R R17
U 1 1 5ECC5445
P 8500 3200
F 0 "R17" H 8570 3246 50  0000 L CNN
F 1 "510k" H 8570 3155 50  0000 L CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8430 3200 50  0001 C CNN
F 3 "~" H 8500 3200 50  0001 C CNN
	1    8500 3200
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5ECC5E4C
P 8000 3200
F 0 "C2" H 8115 3246 50  0000 L CNN
F 1 "1uF" H 8115 3155 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L28.0mm_W10.0mm_P22.50mm_MKS4" H 8038 3050 50  0001 C CNN
F 3 "~" H 8000 3200 50  0001 C CNN
	1    8000 3200
	-1   0    0    1   
$EndComp
Text Label 8500 3500 2    50   ~ 0
220_L
$Comp
L Diode_Bridge:MB6S D1
U 1 1 5ED2362E
P 8000 2500
F 0 "D1" H 8344 2546 50  0000 L CNN
F 1 "MB6S" H 8150 2300 50  0000 L CNN
F 2 "Diodes_SMD:Diode_Bridge_TO-269AA" H 8150 2625 50  0001 L CNN
F 3 "http://www.vishay.com/docs/88573/dfs.pdf" H 8000 2500 50  0001 C CNN
	1    8000 2500
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U4
U 1 1 5ED2798A
P 10500 2500
F 0 "U4" H 10500 2742 50  0000 C CNN
F 1 "AMS1117-3.3" H 10500 2651 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223-3_TabPin2" H 10500 2700 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 10600 2250 50  0001 C CNN
	1    10500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3050 8000 3000
Wire Wire Line
	8500 3000 8500 3050
Wire Wire Line
	8500 3000 8000 3000
Wire Wire Line
	8500 3350 8500 3500
Wire Wire Line
	8500 3500 8000 3500
Wire Wire Line
	8000 3500 8000 3350
Wire Wire Line
	8000 2800 8000 3000
Connection ~ 8000 3000
Wire Wire Line
	8000 1950 8000 2200
$Comp
L Device:D_Zener D2
U 1 1 5ED30184
P 9000 3000
F 0 "D2" V 8954 3079 50  0000 L CNN
F 1 "1SMA5918BT3G" V 9150 2750 50  0000 L CNN
F 2 "Capacitors_SMD:C_1210_HandSoldering" H 9000 3000 50  0001 C CNN
F 3 "~" H 9000 3000 50  0001 C CNN
F 4 ">60mA" V 9000 3000 50  0001 C CNN "Current"
	1    9000 3000
	0    1    1    0   
$EndComp
Text Label 7700 2500 2    50   ~ 0
gnd
Wire Wire Line
	9000 2500 9000 2850
$Comp
L Device:CP C4
U 1 1 5ED32FBB
P 11000 3000
F 0 "C4" H 10750 3050 50  0000 L CNN
F 1 "22uf" H 10700 2900 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Reflow" H 11038 2850 50  0001 C CNN
F 3 "~" H 11000 3000 50  0001 C CNN
F 4 "tantalum" H 11000 3000 50  0001 C CNN "Comment"
	1    11000 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 2850 11000 2500
Wire Wire Line
	11000 2500 10800 2500
Wire Wire Line
	10500 2800 10500 3500
Wire Wire Line
	10500 3500 11000 3500
Wire Wire Line
	11000 3500 11000 3150
Wire Wire Line
	9000 3150 9000 3500
Wire Wire Line
	9000 3500 9200 3500
Connection ~ 10500 3500
$Comp
L Device:CP C3
U 1 1 5ED36338
P 9500 3000
F 0 "C3" H 9618 3046 50  0000 L CNN
F 1 "1000uF" H 9618 2955 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D10.0mm_P5.00mm" H 9538 2850 50  0001 C CNN
F 3 "~" H 9500 3000 50  0001 C CNN
	1    9500 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3150 9500 3500
Wire Wire Line
	10000 3500 10500 3500
Wire Wire Line
	9000 2500 9200 2500
Wire Wire Line
	9500 2850 9500 2500
Connection ~ 9500 2500
$Comp
L Device:R R21
U 1 1 5ED3DB68
P 8750 2500
F 0 "R21" V 8543 2500 50  0000 C CNN
F 1 "100" V 8634 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_1210" V 8680 2500 50  0001 C CNN
F 3 "~" H 8750 2500 50  0001 C CNN
F 4 "360mW" V 8750 2500 50  0001 C CNN "Power"
	1    8750 2500
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 2500 8600 2500
Wire Wire Line
	8900 2500 9000 2500
Connection ~ 9000 2500
$Comp
L Device:Fuse F1
U 1 1 5ED45A55
P 8200 1150
F 0 "F1" V 8100 1150 50  0000 C CNN
F 1 "3A" V 8300 1150 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD_Schurter_OMT125" V 8130 1150 50  0001 C CNN
F 3 "~" H 8200 1150 50  0001 C CNN
	1    8200 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 1150 7800 1150
Text Label 9000 4650 3    50   ~ 0
220_L
Text Label 9000 4350 0    50   ~ 0
220_out_1
$Comp
L alpha-rescue:MOC3043M-Relay_SolidState U2
U 1 1 5ED484E3
P 8000 4500
F 0 "U2" H 8000 4825 50  0000 C CNN
F 1 "MOC3043M" H 8000 4734 50  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 7800 4300 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/MO/MOC3031M.pdf" H 7965 4500 50  0001 L CNN
	1    8000 4500
	1    0    0    -1  
$EndComp
Text Notes 7750 4750 0    50   ~ 0
100mA/22W max
Text Notes 7800 4850 0    50   ~ 0
1.2v@10mA
Text Label 7700 4600 2    50   ~ 0
gnd
$Comp
L Triac_Thyristor:Z0107MN D3
U 1 1 5ED4ADB4
P 9000 4500
F 0 "D3" H 9128 4546 50  0000 L CNN
F 1 "Z0107MN" H 9128 4455 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 9750 4350 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 9150 4800 50  0001 C CNN
	1    9000 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 5ED4C9FD
P 8650 4350
F 0 "R19" V 8443 4350 50  0000 C CNN
F 1 "180" V 8534 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8580 4350 50  0001 C CNN
F 3 "~" H 8650 4350 50  0001 C CNN
	1    8650 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 4400 8500 4400
Wire Wire Line
	8500 4400 8500 4350
Wire Wire Line
	8800 4350 9000 4350
Wire Wire Line
	8300 4600 8850 4600
Text Notes 9000 4250 0    50   ~ 0
1A/220W
$Comp
L Device:R R15
U 1 1 5ED51844
P 7250 4400
F 0 "R15" V 7043 4400 50  0000 C CNN
F 1 "210" V 7134 4400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7180 4400 50  0001 C CNN
F 3 "~" H 7250 4400 50  0001 C CNN
	1    7250 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 4400 7700 4400
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5ED558E3
P 1100 2300
F 0 "J2" H 1208 2581 50  0000 C CNN
F 1 "PIR sensor" H 1208 2490 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1100 2300 50  0001 C CNN
F 3 "~" H 1100 2300 50  0001 C CNN
	1    1100 2300
	1    0    0    -1  
$EndComp
Text Label 1300 2400 0    50   ~ 0
gnd
Text Label 1300 2300 0    50   ~ 0
mov_output_2
$Comp
L Device:C Cmov2
U 1 1 5ED558F0
P 1900 2300
F 0 "Cmov2" H 2015 2346 50  0000 L CNN
F 1 "100n" H 2015 2255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1938 2150 50  0001 C CNN
F 3 "~" H 1900 2300 50  0001 C CNN
	1    1900 2300
	1    0    0    -1  
$EndComp
Text Label 1900 2450 3    50   ~ 0
gnd
Wire Wire Line
	1300 2200 1600 2200
Wire Wire Line
	1600 2200 1600 2100
Wire Wire Line
	1600 2100 1900 2100
Wire Wire Line
	1900 2100 1900 2150
Text Notes 7450 4400 0    50   ~ 0
10mA
$Comp
L Connector:Screw_Terminal_01x02 J6
U 1 1 5ED67504
P 7550 1150
F 0 "J6" H 7468 825 50  0000 C CNN
F 1 "15EDGVC-3.5-02P" H 7468 916 50  0000 C CNN
F 2 "EDGVC:15EDGVC-3.5_2" H 7550 1150 50  0001 C CNN
F 3 "~" H 7550 1150 50  0001 C CNN
	1    7550 1150
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J7
U 1 1 5ED68D16
P 9800 700
F 0 "J7" H 9880 692 50  0000 L CNN
F 1 "15EDGVC-3.5-02P" H 9880 601 50  0000 L CNN
F 2 "EDGVC:15EDGVC-3.5_2" H 9800 700 50  0001 C CNN
F 3 "~" H 9800 700 50  0001 C CNN
	1    9800 700 
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J8
U 1 1 5ED6A07D
P 9800 1200
F 0 "J8" H 9880 1192 50  0000 L CNN
F 1 "15EDGVC-3.5-02P" H 9880 1101 50  0000 L CNN
F 2 "EDGVC:15EDGVC-3.5_2" H 9800 1200 50  0001 C CNN
F 3 "~" H 9800 1200 50  0001 C CNN
	1    9800 1200
	1    0    0    -1  
$EndComp
Text Label 9600 700  2    50   ~ 0
220_N
Text Label 9600 1200 2    50   ~ 0
220_N
Text Label 9600 1300 2    50   ~ 0
220_out_2
Text Label 9000 5650 3    50   ~ 0
220_L
Text Label 9000 5350 0    50   ~ 0
220_out_2
$Comp
L alpha-rescue:MOC3043M-Relay_SolidState U3
U 1 1 5ED6B945
P 8000 5500
F 0 "U3" H 8000 5825 50  0000 C CNN
F 1 "MOC3043M" H 8000 5734 50  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 7800 5300 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/MO/MOC3031M.pdf" H 7965 5500 50  0001 L CNN
	1    8000 5500
	1    0    0    -1  
$EndComp
Text Notes 7750 5750 0    50   ~ 0
100mA/22W max
Text Notes 7800 5850 0    50   ~ 0
1.2v@10mA
Text Label 7700 5600 2    50   ~ 0
gnd
$Comp
L Triac_Thyristor:Z0107MN D4
U 1 1 5ED6B952
P 9000 5500
F 0 "D4" H 9128 5546 50  0000 L CNN
F 1 "Z0107MN" H 9128 5455 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 9750 5350 50  0001 C CNN
F 3 "http://www.st.com/resource/en/datasheet/z01.pdf" H 9150 5800 50  0001 C CNN
	1    9000 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5ED6B95C
P 8650 5350
F 0 "R20" V 8443 5350 50  0000 C CNN
F 1 "180" V 8534 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 8580 5350 50  0001 C CNN
F 3 "~" H 8650 5350 50  0001 C CNN
	1    8650 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 5400 8500 5400
Wire Wire Line
	8500 5400 8500 5350
Wire Wire Line
	8800 5350 9000 5350
Wire Wire Line
	8300 5600 8850 5600
Text Notes 9000 5250 0    50   ~ 0
1A/220W
Wire Wire Line
	7400 5400 7700 5400
Text Notes 7450 5400 0    50   ~ 0
10mA
$Comp
L Device:R R16
U 1 1 5ED7260F
P 7250 5400
F 0 "R16" V 7043 5400 50  0000 C CNN
F 1 "210" V 7134 5400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 7180 5400 50  0001 C CNN
F 3 "~" H 7250 5400 50  0001 C CNN
	1    7250 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 4350 7000 4350
Wire Wire Line
	7000 4350 7000 5400
Wire Wire Line
	7000 5400 7100 5400
Wire Notes Line
	7350 3850 7350 1400
$Comp
L Switch:SW_Push SW1
U 1 1 5ED887AC
P 6250 5850
F 0 "SW1" H 6250 6135 50  0000 C CNN
F 1 "advertisement mode" H 6250 6044 50  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_PUSH_6mm_h4.3mm" H 6250 6050 50  0001 C CNN
F 3 "~" H 6250 6050 50  0001 C CNN
	1    6250 5850
	1    0    0    -1  
$EndComp
Text Label 6450 5850 0    50   ~ 0
3v3
Text Label 11000 2500 0    50   ~ 0
3v3
Text Label 11000 3500 0    50   ~ 0
gnd
$Comp
L Device:R R1
U 1 1 5ED8B165
P 5800 5850
F 0 "R1" V 5593 5850 50  0000 C CNN
F 1 "4k7" V 5684 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5730 5850 50  0001 C CNN
F 3 "~" H 5800 5850 50  0001 C CNN
	1    5800 5850
	0    1    1    0   
$EndComp
Text Label 5650 5850 2    50   ~ 0
gnd
Wire Wire Line
	5950 5850 6000 5850
Text Label 6000 6000 0    50   ~ 0
adv_on
Wire Wire Line
	6000 6000 6000 5850
Connection ~ 6000 5850
Wire Wire Line
	6000 5850 6050 5850
Text Label 6100 4450 0    50   ~ 0
adv_on
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5ED933AB
P 1100 3250
F 0 "J3" H 1208 3531 50  0000 C CNN
F 1 "Control sensors" H 1208 3440 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1100 3250 50  0001 C CNN
F 3 "~" H 1100 3250 50  0001 C CNN
	1    1100 3250
	1    0    0    -1  
$EndComp
Text Label 1300 3150 0    50   ~ 0
S1
Text Label 1300 3250 0    50   ~ 0
S2
Text Label 1300 3350 0    50   ~ 0
S3
Text Label 6750 3050 0    50   ~ 0
S1
Text Label 6750 3150 0    50   ~ 0
S2
Text Label 6750 3250 0    50   ~ 0
S3
Text Label 950  3700 2    50   ~ 0
gnd
Wire Wire Line
	1000 3700 950  3700
Wire Wire Line
	950  3700 950  3800
Connection ~ 950  3800
Wire Wire Line
	950  3800 1000 3800
Wire Wire Line
	950  3800 950  3900
Wire Wire Line
	950  3900 1000 3900
Text Label 1500 4200 0    50   ~ 0
L1
Text Label 1500 4100 0    50   ~ 0
L2
Text Label 1500 4000 0    50   ~ 0
L3
Text Label 6750 3350 0    50   ~ 0
L1
Text Label 6750 3450 0    50   ~ 0
L2
Text Label 6750 3550 0    50   ~ 0
L3
Wire Wire Line
	1000 4200 950  4200
Wire Wire Line
	950  4200 950  4100
Connection ~ 950  3900
Wire Wire Line
	1000 4000 950  4000
Connection ~ 950  4000
Wire Wire Line
	950  4000 950  3900
Wire Wire Line
	1000 4100 950  4100
Connection ~ 950  4100
Wire Wire Line
	950  4100 950  4000
Text Label 1500 3700 0    50   ~ 0
ch1
Text Label 1500 3800 0    50   ~ 0
ch2
Text Label 1500 3900 0    50   ~ 0
opt
Text Label 6750 3850 0    50   ~ 0
opt
$Comp
L Device:R R10
U 1 1 5EDB9852
P 6600 3050
F 0 "R10" V 6500 3050 50  0000 C CNN
F 1 "150" V 6600 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6530 3050 50  0001 C CNN
F 3 "~" H 6600 3050 50  0001 C CNN
	1    6600 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5EDB985C
P 6250 3150
F 0 "R3" V 6150 3150 50  0000 C CNN
F 1 "150" V 6250 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6180 3150 50  0001 C CNN
F 3 "~" H 6250 3150 50  0001 C CNN
	1    6250 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 3050 6450 3050
Wire Wire Line
	6400 3150 6750 3150
$Comp
L Device:R R11
U 1 1 5EDBD313
P 6600 3250
F 0 "R11" V 6500 3250 50  0000 C CNN
F 1 "150" V 6600 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6530 3250 50  0001 C CNN
F 3 "~" H 6600 3250 50  0001 C CNN
	1    6600 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5EDBD31D
P 6250 3350
F 0 "R4" V 6150 3350 50  0000 C CNN
F 1 "150" V 6250 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6180 3350 50  0001 C CNN
F 3 "~" H 6250 3350 50  0001 C CNN
	1    6250 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 3250 6450 3250
Wire Wire Line
	6400 3350 6750 3350
$Comp
L Device:R R12
U 1 1 5EDC0B8E
P 6600 3450
F 0 "R12" V 6500 3450 50  0000 C CNN
F 1 "150" V 6600 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6530 3450 50  0001 C CNN
F 3 "~" H 6600 3450 50  0001 C CNN
	1    6600 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5EDC0B98
P 6250 3550
F 0 "R5" V 6150 3550 50  0000 C CNN
F 1 "150" V 6250 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6180 3550 50  0001 C CNN
F 3 "~" H 6250 3550 50  0001 C CNN
	1    6250 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 3450 6450 3450
Wire Wire Line
	6400 3550 6750 3550
$Comp
L Device:R R13
U 1 1 5EDC0BA4
P 6250 3850
F 0 "R13" V 6150 3850 50  0000 C CNN
F 1 "150" V 6250 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6180 3850 50  0001 C CNN
F 3 "~" H 6250 3850 50  0001 C CNN
	1    6250 3850
	0    1    1    0   
$EndComp
NoConn ~ 4900 2350
NoConn ~ 4900 2450
Wire Wire Line
	7800 1250 7800 1150
Connection ~ 7800 1150
Wire Wire Line
	7800 1150 7750 1150
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5EDD38EA
P 7300 700
F 0 "#FLG0101" H 7300 775 50  0001 C CNN
F 1 "PWR_FLAG" V 7300 827 50  0000 L CNN
F 2 "" H 7300 700 50  0001 C CNN
F 3 "~" H 7300 700 50  0001 C CNN
	1    7300 700 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 700  8100 700 
Wire Wire Line
	8100 700  8100 1050
Wire Wire Line
	8100 1050 7750 1050
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5EDD948A
P 7300 1250
F 0 "#FLG0102" H 7300 1325 50  0001 C CNN
F 1 "PWR_FLAG" V 7300 1377 50  0000 L CNN
F 2 "" H 7300 1250 50  0001 C CNN
F 3 "~" H 7300 1250 50  0001 C CNN
	1    7300 1250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7300 1250 7800 1250
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5EDDDCEC
P 9200 2500
F 0 "#FLG0103" H 9200 2575 50  0001 C CNN
F 1 "PWR_FLAG" H 9200 2673 50  0000 C CNN
F 2 "" H 9200 2500 50  0001 C CNN
F 3 "~" H 9200 2500 50  0001 C CNN
	1    9200 2500
	1    0    0    -1  
$EndComp
Connection ~ 9200 2500
Wire Wire Line
	9200 2500 9500 2500
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5EDDFBBF
P 9200 3500
F 0 "#FLG0104" H 9200 3575 50  0001 C CNN
F 1 "PWR_FLAG" H 9200 3673 50  0000 C CNN
F 2 "" H 9200 3500 50  0001 C CNN
F 3 "~" H 9200 3500 50  0001 C CNN
	1    9200 3500
	-1   0    0    1   
$EndComp
Connection ~ 9200 3500
Wire Wire Line
	9200 3500 9500 3500
$Comp
L Connector_Generic:Conn_02x06_Odd_Even J4
U 1 1 5EE42667
P 1200 3900
F 0 "J4" H 1250 4317 50  0000 C CNN
F 1 "LEDs" H 1250 4226 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x06_Pitch2.54mm" H 1200 3900 50  0001 C CNN
F 3 "~" H 1200 3900 50  0001 C CNN
	1    1200 3900
	1    0    0    -1  
$EndComp
Text Label 8000 1650 1    50   ~ 0
220_N
$Comp
L Device:R R18
U 1 1 5ECC7110
P 8000 1800
F 0 "R18" H 8070 1846 50  0000 L CNN
F 1 "47" H 8070 1755 50  0000 L CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7930 1800 50  0001 C CNN
F 3 "~" H 8000 1800 50  0001 C CNN
	1    8000 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D5
U 1 1 5EED8385
P 5800 5350
F 0 "D5" H 5800 5450 50  0000 C CNN
F 1 "LED" H 5800 5250 50  0000 C CNN
F 2 "LEDs:LED_0805" H 5800 5350 50  0001 C CNN
F 3 "~" H 5800 5350 50  0001 C CNN
	1    5800 5350
	1    0    0    -1  
$EndComp
Text Label 5650 5350 2    50   ~ 0
gnd
$Comp
L Device:R R22
U 1 1 5EED9509
P 6100 5350
F 0 "R22" V 5893 5350 50  0000 C CNN
F 1 "150" V 5984 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6030 5350 50  0001 C CNN
F 3 "~" H 6100 5350 50  0001 C CNN
	1    6100 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 4550 6500 4550
Wire Wire Line
	6500 4550 6500 5350
Wire Wire Line
	6500 5350 6250 5350
NoConn ~ 6100 2750
Wire Wire Line
	7100 2850 6100 2850
Wire Wire Line
	7100 2850 7100 4400
Wire Wire Line
	6150 4250 6100 4250
Wire Wire Line
	6400 4050 6750 4050
Wire Wire Line
	6100 3950 6450 3950
$Comp
L Device:R R2
U 1 1 5EDAFDE5
P 6250 4050
F 0 "R2" V 6150 4050 50  0000 C CNN
F 1 "150" V 6250 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6180 4050 50  0001 C CNN
F 3 "~" H 6250 4050 50  0001 C CNN
	1    6250 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5EDAF377
P 6600 3950
F 0 "R9" V 6500 3950 50  0000 C CNN
F 1 "150" V 6600 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6530 3950 50  0001 C CNN
F 3 "~" H 6600 3950 50  0001 C CNN
	1    6600 3950
	0    1    1    0   
$EndComp
Text Label 6750 3950 0    50   ~ 0
ch2
Text Label 6750 4050 0    50   ~ 0
ch1
Text Label 6750 4250 0    50   ~ 0
mov_output_2
Wire Wire Line
	6450 4250 6750 4250
$Comp
L Device:R R6
U 1 1 5ED5B358
P 6300 4250
F 0 "R6" V 6200 4250 50  0000 C CNN
F 1 "22" V 6300 4250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6230 4250 50  0001 C CNN
F 3 "~" H 6300 4250 50  0001 C CNN
	1    6300 4250
	0    1    1    0   
$EndComp
Text Label 6750 4150 0    50   ~ 0
mov_output_1
Wire Wire Line
	6450 4150 6100 4150
$Comp
L Device:R R14
U 1 1 5ED536DD
P 6600 4150
F 0 "R14" V 6500 4150 50  0000 C CNN
F 1 "22" V 6600 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6530 4150 50  0001 C CNN
F 3 "~" H 6600 4150 50  0001 C CNN
	1    6600 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 3850 6750 3850
Text Label 1150 4500 0    50   ~ 0
5v1
Text Label 1150 5400 0    50   ~ 0
gnd
Text Label 6100 3650 0    50   ~ 0
avr_rst
Text Label 1650 5100 0    50   ~ 0
avr_rst
$Comp
L alpha-rescue:AVR-ISP-6-Connector J9
U 1 1 5EFCA748
P 1250 5000
F 0 "J9" H 971 5096 50  0000 R CNN
F 1 "AVR-ISP-6" H 971 5005 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" V 1000 5050 50  0001 C CNN
F 3 " ~" H -25 4450 50  0001 C CNN
	1    1250 5000
	1    0    0    -1  
$EndComp
Text Label 1650 4800 0    50   ~ 0
avr_miso
Text Label 1650 4900 0    50   ~ 0
avr_mosi
Text Label 1650 5000 0    50   ~ 0
avr_sck
Text Label 6100 2450 0    50   ~ 0
avr_mosi
Wire Wire Line
	6100 2450 6750 2450
Text Label 6100 2650 0    50   ~ 0
avr_sck
Wire Wire Line
	6100 2650 6750 2650
Text Label 6100 2550 0    50   ~ 0
avr_miso
$Comp
L Device:C C5
U 1 1 5F0449BA
P 10000 3000
F 0 "C5" H 10115 3046 50  0000 L CNN
F 1 "100n" H 10115 2955 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 10038 2850 50  0001 C CNN
F 3 "~" H 10000 3000 50  0001 C CNN
	1    10000 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 3500 10000 3500
Wire Wire Line
	10000 3500 10000 3150
Connection ~ 9500 3500
Connection ~ 10000 3500
Wire Wire Line
	10000 2500 10000 2850
Wire Wire Line
	9500 2500 10000 2500
Wire Wire Line
	10200 2500 10000 2500
Connection ~ 10000 2500
Wire Notes Line
	11150 3850 11150 1400
Wire Notes Line
	7350 3850 11150 3850
Wire Notes Line
	7350 1400 11150 1400
$Comp
L Device:LED D6
U 1 1 5F15E9E5
P 5800 5150
F 0 "D6" H 5793 5366 50  0000 C CNN
F 1 "LED" H 5793 5275 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 5800 5150 50  0001 C CNN
F 3 "~" H 5800 5150 50  0001 C CNN
	1    5800 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5150 5950 5350
Connection ~ 5950 5350
Wire Wire Line
	5650 5150 5650 5350
Text Label 9700 2500 0    50   ~ 0
5v1
$Comp
L Device:R R23
U 1 1 5F1AB767
P 2750 1000
F 0 "R23" V 2543 1000 50  0000 C CNN
F 1 "0" V 2634 1000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 2680 1000 50  0001 C CNN
F 3 "~" H 2750 1000 50  0001 C CNN
	1    2750 1000
	0    1    1    0   
$EndComp
Text Label 2900 1000 0    50   ~ 0
3v3
Wire Wire Line
	1900 1100 2600 1100
Wire Wire Line
	2600 1100 2600 1000
Connection ~ 1900 1100
Wire Wire Line
	1900 2100 2600 2100
Wire Wire Line
	2600 2100 2600 1100
Connection ~ 1900 2100
Connection ~ 2600 1100
$EndSCHEMATC
