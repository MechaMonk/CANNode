EESchema Schematic File Version 4
LIBS:CANNode-cache
EELAYER 30 0
EELAYER END
$Descr User 9843 7874
encoding utf-8
Sheet 1 1
Title "CANNode"
Date "2018-11-17"
Rev "2.0"
Comp "(c) wiebel@wiebel.org"
Comment1 "OSH License TBD"
Comment2 "I2C(3V3+5V), SPI"
Comment3 "CAN, 2*OneWire, 8*GPIO, RS485, 4*Diff. Out"
Comment4 "Teensy 3.2 Board for Home Automation"
$EndDescr
$Comp
L CANNode-rescue:Teensy3.2-teensy U1
U 1 1 5BE599D2
P 7050 2600
F 0 "U1" H 6350 3450 60  0000 C CNN
F 1 "Teensy3.2" H 7550 3450 60  0000 C CNN
F 2 "teensy:Teensy3_min" H 6650 4500 60  0001 C CNN
F 3 "" H 7050 1800 60  0000 C CNN
	1    7050 2600
	1    0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:SN65HVD230 U2
U 1 1 5BE59DA1
P 4950 1750
F 0 "U2" H 5200 2000 50  0000 C CNN
F 1 "SN65HVD230" H 4700 2000 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4950 1250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn65hvd230.pdf" H 4850 2150 50  0001 C CNN
	1    4950 1750
	-1   0    0    -1  
$EndComp
$Comp
L Interface:PCA9306 U21
U 1 1 5BE59F59
P 4850 5200
F 0 "U21" H 5100 4750 50  0000 C CNN
F 1 "PCA9306" H 4650 4750 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 4450 5550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/pca9306.pdf" H 4550 5650 50  0001 C CNN
	1    4850 5200
	-1   0    0    -1  
$EndComp
$Comp
L Interface_UART:MAX3485 U31
U 1 1 5BE5A28F
P 2650 1600
F 0 "U31" H 2900 1050 50  0000 C CNN
F 1 "MAX3485" H 2450 1050 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2650 900 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX3483-MAX3491.pdf" H 2650 1650 50  0001 C CNN
	1    2650 1600
	-1   0    0    -1  
$EndComp
$Comp
L CANNode-rescue:DSN-MINI-360-000_my_lib MOD1
U 1 1 5BE5A42C
P 4150 6800
F 0 "MOD1" H 4150 6800 45  0001 C CNN
F 1 "DSN-MINI-360" H 4150 6800 45  0001 C CNN
F 2 "CANNode:OWN_DC-DC" H 4150 6800 50  0001 C CNN
F 3 "" H 4150 6800 50  0001 C CNN
F 4 "DSN-MINI-36  (LM2596)" H 4150 6800 50  0001 C CNN "Name"
	1    4150 6800
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J1
U 1 1 5BE5A752
P 3600 1300
F 0 "J1" H 3550 1000 50  0000 L CNN
F 1 "Conn_01x04" V 3750 1000 50  0001 L CNN
F 2 "CANNode:OWN_KF141V-P4_simple" H 3600 1300 50  0001 C CNN
F 3 "~" H 3600 1300 50  0001 C CNN
	1    3600 1300
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5BE5ACAA
P 6100 1200
F 0 "C3" H 6192 1246 50  0000 L CNN
F 1 "C" H 6192 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6100 1200 50  0001 C CNN
F 3 "~" H 6100 1200 50  0001 C CNN
	1    6100 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 5BE5AE16
P 3750 1850
F 0 "R1" V 3650 2000 50  0000 C CNN
F 1 "120" V 3650 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3750 1850 50  0001 C CNN
F 3 "~" H 3750 1850 50  0001 C CNN
	1    3750 1850
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J81
U 1 1 5BE5B2FB
P 8800 2600
F 0 "J81" H 8800 3150 50  0000 C CNN
F 1 "Conn_01x10" V 8800 1800 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 8800 2600 50  0001 C CNN
F 3 "~" H 8800 2600 50  0001 C CNN
	1    8800 2600
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J61
U 1 1 5BE5B429
P 5350 3100
F 0 "J61" H 5300 3300 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 4400 2850 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 5350 3100 50  0001 C CNN
F 3 "~" H 5350 3100 50  0001 C CNN
	1    5350 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J11
U 1 1 5BE5B721
P 3900 3450
F 0 "J11" H 3850 3150 50  0000 L CNN
F 1 "Conn_01x04" H 3980 3351 50  0001 L CNN
F 2 "CANNode:OWN_KF141V-P4_simple" H 3900 3450 50  0001 C CNN
F 3 "~" H 3900 3450 50  0001 C CNN
	1    3900 3450
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J21
U 1 1 5BE5B8BE
P 3600 5300
F 0 "J21" H 3600 5000 50  0000 C CNN
F 1 "Conn_01x04" H 3520 4966 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3600 5300 50  0001 C CNN
F 3 "~" H 3600 5300 50  0001 C CNN
	1    3600 5300
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5BE5C485
P 4350 1050
F 0 "#PWR?" H 4350 900 50  0001 C CNN
F 1 "+12V" H 4365 1223 50  0000 C CNN
F 2 "" H 4350 1050 50  0001 C CNN
F 3 "" H 4350 1050 50  0001 C CNN
	1    4350 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BE5C6EF
P 3850 1450
F 0 "#PWR?" H 3850 1200 50  0001 C CNN
F 1 "GND" H 3855 1277 50  0001 C CNN
F 2 "" H 3850 1450 50  0001 C CNN
F 3 "" H 3850 1450 50  0001 C CNN
	1    3850 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1100 3850 1100
Wire Wire Line
	3800 1400 3850 1400
Wire Wire Line
	3850 1400 3850 1450
Wire Wire Line
	3850 1050 3850 1100
$Comp
L power:+12V #PWR?
U 1 1 5BE5CB4E
P 3850 1050
F 0 "#PWR?" H 3850 900 50  0001 C CNN
F 1 "+12V" H 3865 1223 50  0000 C CNN
F 2 "" H 3850 1050 50  0001 C CNN
F 3 "" H 3850 1050 50  0001 C CNN
	1    3850 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BE5CC27
P 4350 1450
F 0 "#PWR?" H 4350 1200 50  0001 C CNN
F 1 "GND" H 4355 1277 50  0001 C CNN
F 2 "" H 4350 1450 50  0001 C CNN
F 3 "" H 4350 1450 50  0001 C CNN
	1    4350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1400 4350 1400
Wire Wire Line
	4350 1400 4350 1450
$Comp
L Connector_Generic:Conn_01x04 J2
U 1 1 5BE5A7E0
P 4100 1300
F 0 "J2" H 4100 1000 50  0000 C CNN
F 1 "Conn_01x04" H 4020 966 50  0001 C CNN
F 2 "CANNode:OWN_KF141V-P4_simple" H 4100 1300 50  0001 C CNN
F 3 "~" H 4100 1300 50  0001 C CNN
	1    4100 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3800 1200 4000 1200
Wire Wire Line
	3950 1300 3800 1300
Wire Wire Line
	4300 1300 4450 1300
Wire Wire Line
	4300 1200 4500 1200
Wire Wire Line
	4300 1100 4350 1100
Wire Wire Line
	4350 1100 4350 1050
$Comp
L Device:Jumper_NC_Small JP1
U 1 1 5BE5E77E
P 3750 1750
F 0 "JP1" H 3750 1850 50  0000 C CNN
F 1 "Jumper_NC_Small" H 3950 1600 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3750 1750 50  0001 C CNN
F 3 "~" H 3750 1750 50  0001 C CNN
	1    3750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1750 3600 1750
Wire Wire Line
	3600 1750 3600 1850
Wire Wire Line
	3600 1850 3650 1850
$Comp
L power:GND #PWR?
U 1 1 5BE608B1
P 4950 2200
F 0 "#PWR?" H 4950 1950 50  0001 C CNN
F 1 "GND" H 4872 2163 50  0001 R CNN
F 2 "" H 4950 2200 50  0001 C CNN
F 3 "" H 4950 2200 50  0001 C CNN
	1    4950 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BE60BA3
P 3900 6850
F 0 "#PWR?" H 3900 6600 50  0001 C CNN
F 1 "GND" H 3905 6677 50  0000 C CNN
F 2 "" H 3900 6850 50  0001 C CNN
F 3 "" H 3900 6850 50  0001 C CNN
	1    3900 6850
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5BE6267F
P 3900 6450
F 0 "#PWR?" H 3900 6300 50  0001 C CNN
F 1 "+12V" H 3915 6623 50  0000 C CNN
F 2 "" H 3900 6450 50  0001 C CNN
F 3 "" H 3900 6450 50  0001 C CNN
	1    3900 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5BE62D68
P 4800 6450
F 0 "#PWR?" H 4800 6300 50  0001 C CNN
F 1 "+5V" H 4815 6623 50  0000 C CNN
F 2 "" H 4800 6450 50  0001 C CNN
F 3 "" H 4800 6450 50  0001 C CNN
	1    4800 6450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BE64C5C
P 4800 6850
F 0 "#PWR?" H 4800 6600 50  0001 C CNN
F 1 "GND" H 4805 6677 50  0000 C CNN
F 2 "" H 4800 6850 50  0001 C CNN
F 3 "" H 4800 6850 50  0001 C CNN
	1    4800 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BE65233
P 7600 5450
F 0 "#PWR?" H 7600 5200 50  0001 C CNN
F 1 "GND" H 7605 5277 50  0000 C CNN
F 2 "" H 7600 5450 50  0001 C CNN
F 3 "" H 7600 5450 50  0001 C CNN
	1    7600 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BE65527
P 6100 1400
F 0 "#PWR?" H 6100 1150 50  0001 C CNN
F 1 "GND" H 6105 1227 50  0000 C CNN
F 2 "" H 6100 1400 50  0001 C CNN
F 3 "" H 6100 1400 50  0001 C CNN
	1    6100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6550 3900 6450
Wire Wire Line
	3900 6850 3900 6750
Wire Wire Line
	4800 6750 4800 6850
Wire Wire Line
	4800 6550 4800 6450
$Comp
L power:+5V #PWR?
U 1 1 5BE6E17E
P 6100 1000
F 0 "#PWR?" H 6100 850 50  0001 C CNN
F 1 "+5V" H 6115 1173 50  0000 C CNN
F 2 "" H 6100 1000 50  0001 C CNN
F 3 "" H 6100 1000 50  0001 C CNN
	1    6100 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1000 6100 1050
Wire Wire Line
	6100 1400 6100 1350
$Comp
L Device:C_Small C4
U 1 1 5BE73626
P 6400 1200
F 0 "C4" H 6492 1246 50  0000 L CNN
F 1 "C" H 6492 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6400 1200 50  0001 C CNN
F 3 "~" H 6400 1200 50  0001 C CNN
	1    6400 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5BE73E32
P 6700 1200
F 0 "C5" H 6792 1246 50  0000 L CNN
F 1 "C" H 6792 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6700 1200 50  0001 C CNN
F 3 "~" H 6700 1200 50  0001 C CNN
	1    6700 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5BE74570
P 7000 1200
F 0 "C6" H 7092 1246 50  0000 L CNN
F 1 "C" H 7092 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7000 1200 50  0001 C CNN
F 3 "~" H 7000 1200 50  0001 C CNN
	1    7000 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5BE74CB6
P 7450 1200
F 0 "C7" H 7542 1246 50  0000 L CNN
F 1 "C" H 7542 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7450 1200 50  0001 C CNN
F 3 "~" H 7450 1200 50  0001 C CNN
	1    7450 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5BE753F8
P 7750 1200
F 0 "C8" H 7842 1246 50  0000 L CNN
F 1 "C" H 7842 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7750 1200 50  0001 C CNN
F 3 "~" H 7750 1200 50  0001 C CNN
	1    7750 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5BE75B3C
P 8050 1200
F 0 "C9" H 8142 1246 50  0000 L CNN
F 1 "C" H 8142 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8050 1200 50  0001 C CNN
F 3 "~" H 8050 1200 50  0001 C CNN
	1    8050 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1050 6400 1050
Wire Wire Line
	8050 1050 8050 1100
Connection ~ 6100 1050
Wire Wire Line
	6100 1050 6100 1100
Wire Wire Line
	7750 1100 7750 1050
Connection ~ 7750 1050
Wire Wire Line
	7750 1050 8050 1050
Wire Wire Line
	7450 1100 7450 1050
Connection ~ 7450 1050
Wire Wire Line
	7450 1050 7750 1050
Wire Wire Line
	7000 1100 7000 1050
Wire Wire Line
	6700 1100 6700 1050
Wire Wire Line
	6700 1050 7000 1050
Wire Wire Line
	6400 1100 6400 1050
Wire Wire Line
	8050 1300 8050 1350
Wire Wire Line
	8050 1350 7750 1350
Connection ~ 6100 1350
Wire Wire Line
	6100 1350 6100 1300
Wire Wire Line
	6400 1300 6400 1350
Wire Wire Line
	6400 1350 6100 1350
Wire Wire Line
	6700 1300 6700 1350
Wire Wire Line
	7000 1300 7000 1350
Wire Wire Line
	7000 1350 6700 1350
Wire Wire Line
	7450 1300 7450 1350
Connection ~ 7450 1350
Wire Wire Line
	7750 1300 7750 1350
Connection ~ 7750 1350
Wire Wire Line
	7750 1350 7450 1350
$Comp
L power:+3.3V #PWR?
U 1 1 5BE849C6
P 8100 2050
F 0 "#PWR?" H 8100 1900 50  0001 C CNN
F 1 "+3.3V" V 8150 2050 50  0000 C CNN
F 2 "" H 8100 2050 50  0001 C CNN
F 3 "" H 8100 2050 50  0001 C CNN
	1    8100 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5BE85B20
P 4100 4600
F 0 "#PWR?" H 4100 4450 50  0001 C CNN
F 1 "+5V" H 3950 4700 50  0000 C CNN
F 2 "" H 4100 4600 50  0001 C CNN
F 3 "" H 4100 4600 50  0001 C CNN
	1    4100 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5BE8AFEA
P 4950 1400
F 0 "#PWR?" H 4950 1250 50  0001 C CNN
F 1 "+3.3V" H 4965 1573 50  0000 C CNN
F 2 "" H 4950 1400 50  0001 C CNN
F 3 "" H 4950 1400 50  0001 C CNN
	1    4950 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5BE8C0D5
P 2650 1050
F 0 "#PWR?" H 2650 900 50  0001 C CNN
F 1 "+3.3V" H 2738 1087 50  0000 L CNN
F 2 "" H 2650 1050 50  0001 C CNN
F 3 "" H 2650 1050 50  0001 C CNN
	1    2650 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5BE8D1C0
P 5400 4600
F 0 "#PWR?" H 5400 4450 50  0001 C CNN
F 1 "+3.3V" H 5250 4650 50  0000 C CNN
F 2 "" H 5400 4600 50  0001 C CNN
F 3 "" H 5400 4600 50  0001 C CNN
	1    5400 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BEA359D
P 2650 3750
F 0 "#PWR?" H 2650 3500 50  0001 C CNN
F 1 "GND" H 2800 3700 50  0001 C CNN
F 2 "" H 2650 3750 50  0001 C CNN
F 3 "" H 2650 3750 50  0001 C CNN
	1    2650 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BEA4688
P 4850 5750
F 0 "#PWR?" H 4850 5500 50  0001 C CNN
F 1 "GND" H 4855 5577 50  0001 C CNN
F 2 "" H 4850 5750 50  0001 C CNN
F 3 "" H 4850 5750 50  0001 C CNN
	1    4850 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 1450 4950 1400
$Comp
L Device:R_Small R6
U 1 1 5BF227CD
P 1750 1650
F 0 "R6" V 1650 1650 50  0000 C CNN
F 1 "120" V 1855 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1750 1650 50  0001 C CNN
F 3 "~" H 1750 1650 50  0001 C CNN
	1    1750 1650
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J31
U 1 1 5BF2BE90
P 1250 1700
F 0 "J31" H 1250 1400 50  0000 L CNN
F 1 "Conn_01x04" H 1330 1601 50  0001 L CNN
F 2 "CANNode:OWN_KF141V-P4_simple" H 1250 1700 50  0001 C CNN
F 3 "~" H 1250 1700 50  0001 C CNN
	1    1250 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 1500 1550 1600
Wire Wire Line
	1550 1600 1450 1600
Wire Wire Line
	1550 1500 1750 1500
Wire Wire Line
	1450 1700 1550 1700
Wire Wire Line
	1550 1700 1550 1800
Wire Wire Line
	1550 1800 1750 1800
Wire Wire Line
	1750 1750 1750 1800
Connection ~ 1750 1800
Wire Wire Line
	1750 1800 1900 1800
Wire Wire Line
	1750 1550 1750 1500
Connection ~ 1750 1500
Wire Wire Line
	1750 1500 1900 1500
$Comp
L power:+12V #PWR?
U 1 1 5BF56FFA
P 1250 1150
F 0 "#PWR?" H 1250 1000 50  0001 C CNN
F 1 "+12V" H 1265 1323 50  0000 C CNN
F 2 "" H 1250 1150 50  0001 C CNN
F 3 "" H 1250 1150 50  0001 C CNN
	1    1250 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5BF57082
P 1750 1150
F 0 "#PWR?" H 1750 1000 50  0001 C CNN
F 1 "+5V" H 1765 1323 50  0000 C CNN
F 2 "" H 1750 1150 50  0001 C CNN
F 3 "" H 1750 1150 50  0001 C CNN
	1    1750 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BF5716E
P 1500 1850
F 0 "#PWR?" H 1500 1600 50  0001 C CNN
F 1 "GND" H 1505 1677 50  0001 C CNN
F 2 "" H 1500 1850 50  0001 C CNN
F 3 "" H 1500 1850 50  0001 C CNN
	1    1500 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1800 1500 1800
Wire Wire Line
	1500 1800 1500 1850
$Comp
L Jumper:Jumper_3_Bridged12 JP31
U 1 1 5BF5B524
P 1500 1300
F 0 "JP31" H 1500 1504 50  0000 C CNN
F 1 "Jumper_3_Bridged12" H 1500 1413 50  0001 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged2Bar12_RoundedPad1.0x1.5mm_NumberLabels" H 1500 1300 50  0001 C CNN
F 3 "~" H 1500 1300 50  0001 C CNN
	1    1500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1300 1250 1150
Wire Wire Line
	1750 1150 1750 1300
Wire Wire Line
	1450 1500 1500 1500
Wire Wire Line
	1500 1500 1500 1450
Wire Wire Line
	4750 4650 4750 4700
Wire Wire Line
	4850 5750 4850 5700
Wire Wire Line
	5500 1650 5350 1650
Wire Wire Line
	5350 1750 5450 1750
Wire Wire Line
	5650 3100 6100 3100
Wire Wire Line
	5650 3200 6100 3200
Wire Wire Line
	5350 1950 5400 1950
$Comp
L power:GND #PWR?
U 1 1 5C1F2412
P 4950 3100
F 0 "#PWR?" H 4950 2850 50  0001 C CNN
F 1 "GND" H 4955 2927 50  0001 C CNN
F 2 "" H 4950 3100 50  0001 C CNN
F 3 "" H 4950 3100 50  0001 C CNN
	1    4950 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3000 4950 3000
Wire Wire Line
	4950 3000 4950 3100
$Comp
L power:+3.3V #PWR?
U 1 1 5C1FA572
P 5100 2950
F 0 "#PWR?" H 5100 2800 50  0001 C CNN
F 1 "+3.3V" H 4950 3000 50  0000 C CNN
F 2 "" H 5100 2950 50  0001 C CNN
F 3 "" H 5100 2950 50  0001 C CNN
	1    5100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3100 5050 3100
Wire Wire Line
	5650 3000 5650 2950
$Comp
L power:+5V #PWR?
U 1 1 5C27ACAA
P 5650 2950
F 0 "#PWR?" H 5650 2800 50  0001 C CNN
F 1 "+5V" H 5700 2950 50  0000 C CNN
F 2 "" H 5650 2950 50  0001 C CNN
F 3 "" H 5650 2950 50  0001 C CNN
	1    5650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3300 5150 3300
Wire Wire Line
	5650 3300 5700 3300
Wire Wire Line
	5700 3300 5700 3850
$Comp
L power:GND #PWR?
U 1 1 5C60823A
P 3850 5450
F 0 "#PWR?" H 3850 5200 50  0001 C CNN
F 1 "GND" H 3855 5277 50  0001 C CNN
F 2 "" H 3850 5450 50  0001 C CNN
F 3 "" H 3850 5450 50  0001 C CNN
	1    3850 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5C60824F
P 1750 3150
F 0 "R2" V 1650 3150 50  0000 C CNN
F 1 "120" V 1855 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1750 3150 50  0001 C CNN
F 3 "~" H 1750 3150 50  0001 C CNN
	1    1750 3150
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J41
U 1 1 5C608256
P 1250 3200
F 0 "J41" H 1200 3450 50  0000 L CNN
F 1 "Conn_01x04" H 1330 3101 50  0001 L CNN
F 2 "CANNode:OWN_KF141V-P4_simple" H 1250 3200 50  0001 C CNN
F 3 "~" H 1250 3200 50  0001 C CNN
	1    1250 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 3000 1550 3100
Wire Wire Line
	1550 3100 1450 3100
Wire Wire Line
	1550 3000 1750 3000
Wire Wire Line
	1450 3200 1550 3200
Wire Wire Line
	1550 3200 1550 3300
Wire Wire Line
	1550 3300 1750 3300
Wire Wire Line
	1750 3250 1750 3300
Wire Wire Line
	1750 3050 1750 3000
$Comp
L power:+12V #PWR?
U 1 1 5C608269
P 1250 2650
F 0 "#PWR?" H 1250 2500 50  0001 C CNN
F 1 "+12V" H 1350 2650 50  0000 C CNN
F 2 "" H 1250 2650 50  0001 C CNN
F 3 "" H 1250 2650 50  0001 C CNN
	1    1250 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C60826F
P 1750 2650
F 0 "#PWR?" H 1750 2500 50  0001 C CNN
F 1 "+5V" H 1850 2650 50  0000 C CNN
F 2 "" H 1750 2650 50  0001 C CNN
F 3 "" H 1750 2650 50  0001 C CNN
	1    1750 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C608275
P 1500 3350
F 0 "#PWR?" H 1500 3100 50  0001 C CNN
F 1 "GND" H 1505 3177 50  0001 C CNN
F 2 "" H 1500 3350 50  0001 C CNN
F 3 "" H 1500 3350 50  0001 C CNN
	1    1500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3300 1500 3300
Wire Wire Line
	1500 3300 1500 3350
$Comp
L Jumper:Jumper_3_Bridged12 JP41
U 1 1 5C60827D
P 1500 2800
F 0 "JP41" H 1550 2900 50  0000 C CNN
F 1 "Jumper_3_Bridged12" H 1500 2913 50  0001 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Bridged2Bar12_RoundedPad1.0x1.5mm_NumberLabels" H 1500 2800 50  0001 C CNN
F 3 "~" H 1500 2800 50  0001 C CNN
	1    1500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2800 1250 2650
Wire Wire Line
	1750 2650 1750 2800
Wire Wire Line
	1450 3000 1500 3000
Wire Wire Line
	1500 3000 1500 2950
Wire Wire Line
	2650 1050 2650 1100
Wire Wire Line
	5100 3200 5150 3200
Wire Wire Line
	5700 2100 6100 2100
$Comp
L Device:R_Small R22
U 1 1 5CBB0B9A
P 5400 5050
F 0 "R22" V 5450 4900 50  0000 C CNN
F 1 "4.7k" V 5450 5050 50  0000 C TNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5400 5050 50  0001 C CNN
F 3 "~" H 5400 5050 50  0001 C CNN
	1    5400 5050
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R21
U 1 1 5CBB0CAB
P 5500 5050
F 0 "R21" V 5450 4900 50  0000 C CNN
F 1 "4.7k" V 5450 5050 50  0000 C BNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5500 5050 50  0001 C CNN
F 3 "~" H 5500 5050 50  0001 C CNN
	1    5500 5050
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R23
U 1 1 5CBB0DF9
P 4250 4650
F 0 "R23" V 4300 4700 50  0000 C TNN
F 1 "200k" V 4200 4650 50  0000 C BNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4250 4650 50  0001 C CNN
F 3 "~" H 4250 4650 50  0001 C CNN
	1    4250 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 5300 5400 5300
Wire Wire Line
	4450 5100 4400 5100
Wire Wire Line
	4400 5100 4400 4650
Wire Wire Line
	4400 4650 4350 4650
Wire Wire Line
	4750 4650 4400 4650
Connection ~ 4400 4650
Wire Wire Line
	4100 4600 4100 4650
Wire Wire Line
	4100 4650 4150 4650
$Comp
L Device:R_Small R25
U 1 1 5CDD0D4C
P 4100 4900
F 0 "R25" V 4050 4750 50  0000 C CNN
F 1 "4.7k" V 4050 4900 50  0000 C BNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4100 4900 50  0001 C CNN
F 3 "~" H 4100 4900 50  0001 C CNN
	1    4100 4900
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R24
U 1 1 5CDD0DF4
P 4000 4900
F 0 "R24" V 4050 4750 50  0000 C CNN
F 1 "4.7k" V 4050 4900 50  0000 C TNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4000 4900 50  0001 C CNN
F 3 "~" H 4000 4900 50  0001 C CNN
	1    4000 4900
	-1   0    0    1   
$EndComp
Connection ~ 4100 4650
Wire Wire Line
	4000 4800 4000 4650
Wire Wire Line
	4000 4650 4100 4650
Wire Wire Line
	4100 4650 4100 4800
Wire Wire Line
	5500 5150 5500 5200
Wire Wire Line
	5400 4650 5400 4950
Wire Wire Line
	5500 4950 5500 4650
Wire Wire Line
	5500 4650 5400 4650
Wire Wire Line
	5400 4650 4950 4650
Connection ~ 5400 4650
Wire Wire Line
	4950 4650 4950 4700
Wire Wire Line
	5400 4650 5400 4600
Connection ~ 4000 4650
Wire Wire Line
	3800 5300 4000 5300
Wire Wire Line
	3800 5100 4100 5100
Wire Wire Line
	4100 5100 4100 5200
Wire Wire Line
	4100 5200 4450 5200
Wire Wire Line
	4100 5000 4100 5100
Connection ~ 4100 5100
Wire Wire Line
	4000 5000 4000 5300
Connection ~ 4000 5300
Wire Wire Line
	4000 5300 4450 5300
Wire Wire Line
	3800 5200 3850 5200
Wire Wire Line
	3850 5200 3850 4650
Wire Wire Line
	3850 4650 4000 4650
Wire Wire Line
	3800 5400 3850 5400
Wire Wire Line
	3850 5400 3850 5450
Wire Wire Line
	5050 3100 5050 4300
Wire Wire Line
	5100 3300 5100 4350
Wire Wire Line
	5100 2950 5100 3200
$Comp
L power:+5V #PWR?
U 1 1 5D41706D
P 8250 1850
F 0 "#PWR?" H 8250 1700 50  0001 C CNN
F 1 "+5V" H 8265 2023 50  0000 C CNN
F 2 "" H 8250 1850 50  0001 C CNN
F 3 "" H 8250 1850 50  0001 C CNN
	1    8250 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5D46BC59
P 6900 3700
F 0 "#PWR?" H 6900 3450 50  0001 C CNN
F 1 "GND" H 6905 3527 50  0001 C CNN
F 2 "" H 6900 3700 50  0001 C CNN
F 3 "" H 6900 3700 50  0001 C CNN
	1    6900 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5D5A5B81
P 4700 3750
F 0 "R12" V 4650 3600 50  0000 C CNN
F 1 "4.7k" V 4650 3750 50  0000 C BNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4700 3750 50  0001 C CNN
F 3 "~" H 4700 3750 50  0001 C CNN
	1    4700 3750
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5D5A5C95
P 4600 3750
F 0 "R11" V 4650 3600 50  0000 C CNN
F 1 "4.7k" V 4650 3750 50  0000 C TNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4600 3750 50  0001 C CNN
F 3 "~" H 4600 3750 50  0001 C CNN
	1    4600 3750
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J12
U 1 1 5D5A5D9F
P 3900 4000
F 0 "J12" H 3850 4200 50  0000 L CNN
F 1 "Conn_01x04" H 3980 3901 50  0001 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3900 4000 50  0001 C CNN
F 3 "~" H 3900 4000 50  0001 C CNN
	1    3900 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 2200 5750 2600
Wire Wire Line
	5700 2100 5700 2550
Wire Wire Line
	3200 2550 3200 1800
Wire Wire Line
	3200 1800 3050 1800
Wire Wire Line
	3250 1500 3050 1500
Wire Wire Line
	5650 2000 6100 2000
Wire Wire Line
	3050 1600 3150 1600
Wire Wire Line
	3050 1700 3150 1700
Wire Wire Line
	3150 1700 3150 1600
Wire Wire Line
	4950 2150 4950 2200
$Comp
L power:+12V #PWR?
U 1 1 5DABC03B
P 4250 3100
F 0 "#PWR?" H 4250 2950 50  0001 C CNN
F 1 "+12V" H 4200 3250 50  0000 C CNN
F 2 "" H 4250 3100 50  0001 C CNN
F 3 "" H 4250 3100 50  0001 C CNN
	1    4250 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5DABC090
P 4350 3100
F 0 "#PWR?" H 4350 2950 50  0001 C CNN
F 1 "+5V" H 4400 3250 50  0000 C CNN
F 2 "" H 4350 3100 50  0001 C CNN
F 3 "" H 4350 3100 50  0001 C CNN
	1    4350 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5DAFF643
P 4150 4150
F 0 "#PWR?" H 4150 3900 50  0001 C CNN
F 1 "GND" H 4072 4113 50  0001 R CNN
F 2 "" H 4150 4150 50  0001 C CNN
F 3 "" H 4150 4150 50  0001 C CNN
	1    4150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4100 4100 4100
Wire Wire Line
	4150 4100 4150 4150
Wire Wire Line
	4450 3950 4450 3450
Wire Wire Line
	4450 3450 4100 3450
$Comp
L Connector_Generic:Conn_01x04 J91
U 1 1 5DDE87BF
P 8450 5300
F 0 "J91" H 8400 5500 50  0000 L CNN
F 1 "Conn_01x04" H 8530 5201 50  0001 L CNN
F 2 "CANNode:OWN_KF141V-P4_simple" H 8450 5300 50  0001 C CNN
F 3 "~" H 8450 5300 50  0001 C CNN
	1    8450 5300
	1    0    0    1   
$EndComp
Wire Wire Line
	5400 5150 5400 5300
$Comp
L power:+5V #PWR?
U 1 1 5DDFC32A
P 7700 5050
F 0 "#PWR?" H 7700 4900 50  0001 C CNN
F 1 "+5V" H 7715 5223 50  0000 C CNN
F 2 "" H 7700 5050 50  0001 C CNN
F 3 "" H 7700 5050 50  0001 C CNN
	1    7700 5050
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR?
U 1 1 5DDFC381
P 7800 5050
F 0 "#PWR?" H 7800 4900 50  0001 C CNN
F 1 "+12V" H 7650 5100 50  0000 C CNN
F 2 "" H 7800 5050 50  0001 C CNN
F 3 "" H 7800 5050 50  0001 C CNN
	1    7800 5050
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5DDFC4E2
P 7600 5050
F 0 "#PWR?" H 7600 4900 50  0001 C CNN
F 1 "+3.3V" H 7750 5100 50  0000 C CNN
F 2 "" H 7600 5050 50  0001 C CNN
F 3 "" H 7600 5050 50  0001 C CNN
	1    7600 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7800 5050 7800 5100
Wire Wire Line
	7700 5050 7700 5200
Wire Wire Line
	7600 5050 7600 5300
Wire Wire Line
	7600 5400 7600 5450
$Comp
L power:GND #PWR?
U 1 1 5E0192F6
P 4150 3600
F 0 "#PWR?" H 4150 3350 50  0001 C CNN
F 1 "GND" H 4072 3563 50  0001 R CNN
F 2 "" H 4150 3600 50  0001 C CNN
F 3 "" H 4150 3600 50  0001 C CNN
	1    4150 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3550 4150 3550
Wire Wire Line
	4150 3550 4150 3600
Wire Wire Line
	4450 3950 4700 3950
Wire Wire Line
	4100 4000 4600 4000
Wire Wire Line
	4250 3250 4250 3100
Wire Wire Line
	4350 3100 4350 3350
Wire Wire Line
	4350 3350 4100 3350
Wire Wire Line
	4100 3900 4350 3900
Wire Wire Line
	4250 3250 4250 3800
Connection ~ 4250 3250
Wire Wire Line
	4350 3350 4350 3900
Connection ~ 4350 3350
Wire Wire Line
	4700 3850 4700 3950
Connection ~ 4700 3950
Wire Wire Line
	4600 3850 4600 4000
Wire Wire Line
	4600 3650 4600 3350
Wire Wire Line
	4600 3350 4350 3350
Wire Wire Line
	4700 3650 4700 3350
Wire Wire Line
	4700 3350 4600 3350
Connection ~ 4600 3350
$Comp
L power:GND #PWR?
U 1 1 5E5D5102
P 8550 3050
F 0 "#PWR?" H 8550 2800 50  0001 C CNN
F 1 "GND" H 8555 2877 50  0001 C CNN
F 2 "" H 8550 3050 50  0001 C CNN
F 3 "" H 8550 3050 50  0001 C CNN
	1    8550 3050
	1    0    0    -1  
$EndComp
Text Label 8450 2200 0    50   ~ 0
23
Text Label 8450 2300 0    50   ~ 0
22
Text Label 8450 2400 0    50   ~ 0
21
Text Label 8450 2500 0    50   ~ 0
20
Text Label 8450 2600 0    50   ~ 0
19
Text Label 8450 2700 0    50   ~ 0
18
Text Label 8450 2900 0    50   ~ 0
10
Text Label 8500 2800 0    50   ~ 0
6
Text Notes 5500 1000 2    50   ~ 0
CAN Bus\nPower IN/OUT
Text Notes 3650 2100 0    50   ~ 0
Term
Text Notes 3350 900  2    50   ~ 0
RS485/DMX/Diff DS281?
Text Label 4100 3350 0    50   ~ 0
14
Text Label 4150 3900 0    50   ~ 0
15
Wire Notes Line
	4850 2850 3500 2850
Wire Notes Line
	3500 2850 3500 4250
Wire Notes Line
	3500 4250 4850 4250
Wire Notes Line
	4850 2850 4850 4250
Text Notes 3550 2950 0    50   ~ 0
OneWire
Text Notes 5150 3450 0    50   ~ 0
SPI/I2C(3.3V)
Wire Notes Line
	5700 4400 5700 5900
Wire Notes Line
	5700 5900 3500 5900
Wire Notes Line
	3500 5900 3500 4400
Wire Notes Line
	3500 4400 5700 4400
Wire Notes Line
	5550 800  3500 800 
Wire Wire Line
	5750 2200 6100 2200
Wire Wire Line
	3250 1500 3250 2500
Wire Wire Line
	5650 2000 5650 2500
Wire Wire Line
	6100 2300 5500 2300
Wire Wire Line
	5500 1650 5500 2300
Wire Wire Line
	5450 1750 5450 2350
Wire Wire Line
	5400 1950 5400 2400
Text Notes 8450 1950 0    50   ~ 0
GPIO\n8Ch Relay Board
Text Notes 6450 5400 0    50   ~ 0
DAC
$Comp
L power:+3.3V #PWR?
U 1 1 5F4B8519
P 7450 950
F 0 "#PWR?" H 7450 800 50  0001 C CNN
F 1 "+3.3V" H 7300 1000 50  0000 C CNN
F 2 "" H 7450 950 50  0001 C CNN
F 3 "" H 7450 950 50  0001 C CNN
	1    7450 950 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F4B8576
P 7450 1400
F 0 "#PWR?" H 7450 1150 50  0001 C CNN
F 1 "GND" H 7455 1227 50  0000 C CNN
F 2 "" H 7450 1400 50  0001 C CNN
F 3 "" H 7450 1400 50  0001 C CNN
	1    7450 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5F4B85D3
P 8300 1200
F 0 "C10" H 8392 1246 50  0000 L CNN
F 1 "C" H 8392 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8300 1200 50  0001 C CNN
F 3 "~" H 8300 1200 50  0001 C CNN
	1    8300 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 1300 8300 1350
Wire Wire Line
	7450 950  7450 1050
Wire Wire Line
	8300 1050 8300 1100
Wire Wire Line
	7450 1350 7450 1400
Wire Wire Line
	3250 2500 5650 2500
Wire Wire Line
	3200 2550 5700 2550
Wire Wire Line
	3150 2600 5750 2600
Text Notes 3550 5850 0    50   ~ 0
I2C(5V)
$Comp
L power:GND #PWR?
U 1 1 5F5B6C3A
P 5950 1850
F 0 "#PWR?" H 5950 1600 50  0001 C CNN
F 1 "GND" H 5955 1677 50  0001 C CNN
F 2 "" H 5950 1850 50  0001 C CNN
F 3 "" H 5950 1850 50  0001 C CNN
	1    5950 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1900 6050 1800
Wire Wire Line
	6050 1800 5950 1800
Wire Wire Line
	5950 1800 5950 1850
Wire Wire Line
	6050 1900 6100 1900
Wire Wire Line
	6100 2400 6050 2400
Wire Wire Line
	6050 2400 6050 2350
Wire Wire Line
	6050 2350 5450 2350
Wire Wire Line
	6100 2500 6000 2500
Wire Wire Line
	6000 2500 6000 2400
Wire Wire Line
	6000 2400 5400 2400
Wire Notes Line
	5550 2450 3500 2450
Wire Notes Line
	5550 800  5550 2450
Wire Notes Line
	3500 800  3500 2450
Wire Wire Line
	6750 4350 5100 4350
Wire Wire Line
	2650 3750 2650 3700
Connection ~ 3150 1700
Wire Wire Line
	3150 2600 3150 1700
Wire Wire Line
	6750 5300 6450 5300
Wire Wire Line
	5950 5300 5400 5300
Connection ~ 5400 5300
Wire Notes Line
	3400 3900 1050 3900
Wire Notes Line
	1050 3900 1050 800 
Wire Notes Line
	3400 800  3400 3900
Wire Notes Line
	1050 800  3400 800 
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D480012
P 8150 5050
F 0 "#FLG?" H 8150 5125 50  0001 C CNN
F 1 "PWR_FLAG" H 8150 5224 50  0000 C CNN
F 2 "" H 8150 5050 50  0001 C CNN
F 3 "~" H 8150 5050 50  0001 C CNN
	1    8150 5050
	-1   0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5D51B4BB
P 8150 5450
F 0 "#FLG?" H 8150 5525 50  0001 C CNN
F 1 "PWR_FLAG" H 8150 5623 50  0000 C CNN
F 2 "" H 8150 5450 50  0001 C CNN
F 3 "~" H 8150 5450 50  0001 C CNN
	1    8150 5450
	1    0    0    1   
$EndComp
Wire Wire Line
	8250 5100 8150 5100
Wire Wire Line
	7700 5200 8250 5200
Wire Wire Line
	8250 5300 7600 5300
Wire Wire Line
	7600 5400 8150 5400
Wire Wire Line
	8150 5050 8150 5100
Connection ~ 8150 5100
Wire Wire Line
	8150 5100 7800 5100
Wire Wire Line
	8150 5450 8150 5400
Connection ~ 8150 5400
Wire Wire Line
	8150 5400 8250 5400
NoConn ~ 5350 1850
$Comp
L power:PWR_FLAG #FLG?
U 1 1 5DD97E77
P 4400 4650
F 0 "#FLG?" H 4400 4725 50  0001 C CNN
F 1 "PWR_FLAG" H 4650 4750 50  0000 C CNN
F 2 "" H 4400 4650 50  0001 C CNN
F 3 "~" H 4400 4650 50  0001 C CNN
	1    4400 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1850 8250 1900
Wire Wire Line
	8250 1900 8000 1900
Wire Wire Line
	8600 2200 8000 2200
Wire Wire Line
	8600 2100 8250 2100
Wire Wire Line
	8250 2100 8250 1900
Connection ~ 8250 1900
NoConn ~ 8000 2000
Wire Wire Line
	8000 2100 8100 2100
Wire Wire Line
	8100 2100 8100 2050
Wire Wire Line
	8600 2300 8000 2300
Wire Wire Line
	8600 2400 8000 2400
Wire Wire Line
	8600 2500 8000 2500
NoConn ~ 7000 3600
Wire Wire Line
	8050 3850 8050 3200
Wire Wire Line
	8050 3200 8000 3200
Wire Wire Line
	5700 3850 8050 3850
Wire Wire Line
	8000 3100 8100 3100
Wire Wire Line
	8100 3100 8100 3950
Wire Wire Line
	4700 3950 8100 3950
Wire Wire Line
	8000 3000 8150 3000
Wire Wire Line
	8150 3000 8150 4000
Wire Wire Line
	8150 4000 4600 4000
Connection ~ 4600 4000
Wire Wire Line
	8250 4300 8250 2900
Wire Wire Line
	8250 2900 8000 2900
Wire Wire Line
	8000 2800 8300 2800
Wire Wire Line
	8300 2800 8300 4350
Wire Wire Line
	8300 4350 6750 4350
Connection ~ 6750 4350
Wire Wire Line
	6750 4350 6750 5300
Wire Wire Line
	8400 2800 8600 2800
Wire Wire Line
	8400 2800 8400 4100
Wire Wire Line
	8600 2700 8000 2700
Wire Wire Line
	8000 2600 8600 2600
Text Notes 1200 3250 1    50   ~ 0
Diff 7
Text Notes 1200 1750 1    50   ~ 0
UART1
Text Notes 3800 3500 1    50   ~ 0
OW 14
Text Notes 3800 4050 1    50   ~ 0
OW 15
$Comp
L power:+3.3V #PWR?
U 1 1 5F2C5A9A
P 6550 3600
F 0 "#PWR?" H 6550 3450 50  0001 C CNN
F 1 "+3.3V" H 6400 3700 50  0000 C CNN
F 2 "" H 6550 3600 50  0001 C CNN
F 3 "" H 6550 3600 50  0001 C CNN
	1    6550 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3600 6800 3700
Wire Wire Line
	6800 3700 6550 3700
Wire Wire Line
	6550 3700 6550 3600
NoConn ~ 6700 3600
Wire Notes Line
	5250 3700 5550 3700
Wire Notes Line
	5550 3700 5550 3490
Text Notes 5250 3550 0    39   ~ 0
GND
Text Notes 5250 3650 0    39   ~ 0
3.3V
Text Notes 5250 3600 0    39   ~ 0
SCL
Text Notes 5250 3700 0    39   ~ 0
SDA
Text Notes 5550 3550 2    39   ~ 0
5V
Text Notes 5550 3600 2    39   ~ 0
MOSI
Text Notes 5550 3650 2    39   ~ 0
MISO
Text Notes 5550 3700 2    39   ~ 0
SCK
Wire Notes Line
	5550 3490 5250 3490
Wire Notes Line
	5250 3490 5250 3700
Wire Notes Line
	5400 3490 5400 3700
Wire Wire Line
	5050 4300 6650 4300
Wire Wire Line
	6650 5200 6650 4300
Connection ~ 6650 4300
Wire Wire Line
	6650 4300 8250 4300
Wire Wire Line
	8600 2900 8450 2900
Wire Wire Line
	8450 2900 8450 4150
Wire Wire Line
	8550 3050 8550 3000
Wire Wire Line
	8550 3000 8600 3000
Text Label 4200 1750 0    50   ~ 0
CAN+
Text Label 4200 1850 0    50   ~ 0
CAN-
Text Label 5300 3950 0    50   ~ 0
OW14
Text Label 5550 4000 0    50   ~ 0
OW15
Text Label 7400 4300 0    50   ~ 0
SCL0_16
Text Label 7800 4350 0    50   ~ 0
SDA0_17
Text Label 4200 5200 0    50   ~ 0
SCL
Text Label 4200 5300 0    50   ~ 0
SDA
Text Label 3050 1500 0    50   ~ 0
RX1
Text Label 3050 1800 0    50   ~ 0
TX2
Text Label 3150 2050 3    50   ~ 0
UA3EN_2
Text Label 1550 3000 0    50   ~ 0
UA2+
Text Label 1550 3300 0    50   ~ 0
UA2-
Text Label 1550 1500 0    50   ~ 0
UA1+
Text Label 1550 1800 0    50   ~ 0
UA1-
Wire Wire Line
	3850 1750 3950 1750
Wire Wire Line
	3850 1850 4000 1850
Wire Wire Line
	3950 1300 3950 1750
Connection ~ 3950 1750
Wire Wire Line
	4000 1200 4000 1850
Wire Wire Line
	3950 1750 4450 1750
Connection ~ 4000 1850
Wire Wire Line
	4000 1850 4500 1850
Wire Wire Line
	4450 1300 4450 1750
Connection ~ 4450 1750
Wire Wire Line
	4450 1750 4550 1750
Wire Wire Line
	4500 1200 4500 1850
Connection ~ 4500 1850
Wire Wire Line
	4500 1850 4550 1850
Wire Wire Line
	1900 1500 1900 1600
Wire Wire Line
	2200 1600 2200 1500
Wire Wire Line
	2200 1500 2250 1500
Wire Wire Line
	1900 1800 1900 1700
Wire Wire Line
	2200 1700 2200 1800
Wire Wire Line
	2200 1800 2250 1800
Wire Wire Line
	5950 4150 8450 4150
Wire Wire Line
	8400 4100 6000 4100
Wire Wire Line
	1900 1600 2200 1600
Wire Wire Line
	2200 1700 1900 1700
Wire Wire Line
	4100 3800 4250 3800
Wire Wire Line
	4100 3250 4250 3250
Wire Wire Line
	8050 1050 8300 1050
Connection ~ 8050 1050
Wire Wire Line
	8300 1350 8050 1350
Connection ~ 8050 1350
Wire Wire Line
	6700 1050 6400 1050
Connection ~ 6700 1050
Connection ~ 6400 1050
Wire Wire Line
	6400 1350 6700 1350
Connection ~ 6400 1350
Connection ~ 6700 1350
$Comp
L Connector_Generic:Conn_02x03_Odd_Even JP21
U 1 1 5BF19790
P 6250 5300
F 0 "JP21" H 6300 5525 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 6300 5526 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 6250 5300 50  0001 C CNN
F 3 "~" H 6250 5300 50  0001 C CNN
	1    6250 5300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5250 5200 5500 5200
Wire Wire Line
	5500 5200 5950 5200
Connection ~ 5500 5200
Wire Wire Line
	6450 5200 6650 5200
Wire Wire Line
	6900 3600 6900 3700
Wire Wire Line
	7100 5400 6450 5400
Wire Wire Line
	7100 3600 7100 5400
$Comp
L power:GND #PWR?
U 1 1 5C338401
P 5900 5450
F 0 "#PWR?" H 5900 5200 50  0001 C CNN
F 1 "GND" H 5905 5277 50  0001 C CNN
F 2 "" H 5900 5450 50  0001 C CNN
F 3 "" H 5900 5450 50  0001 C CNN
	1    5900 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5400 5900 5400
Wire Wire Line
	5900 5400 5900 5450
$Comp
L Device:CP_Small C11
U 1 1 5C7E4688
P 3900 6650
F 0 "C11" H 3988 6696 50  0000 L CNN
F 1 "CP" H 3988 6605 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.4" H 3900 6650 50  0001 C CNN
F 3 "~" H 3900 6650 50  0001 C CNN
	1    3900 6650
	1    0    0    -1  
$EndComp
Connection ~ 3900 6550
$Comp
L Device:CP_Small C12
U 1 1 5C7E4700
P 4800 6650
F 0 "C12" H 4888 6696 50  0000 L CNN
F 1 "CP" H 4888 6605 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_3x5.4" H 4800 6650 50  0001 C CNN
F 3 "~" H 4800 6650 50  0001 C CNN
	1    4800 6650
	1    0    0    -1  
$EndComp
Connection ~ 4800 6550
Wire Wire Line
	3900 6550 4050 6550
Text Notes 5900 4800 0    50   ~ 0
To enable 5V I²C:
Text Notes 6100 5000 0    50   ~ 0
1-2\n3-4
$Comp
L Interface_UART:MAX3485 U?
U 1 1 5E224FC2
P 2650 3100
F 0 "U?" H 2900 2550 50  0000 C CNN
F 1 "MAX3485" H 2450 2550 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2650 2400 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX3483-MAX3491.pdf" H 2650 3150 50  0001 C CNN
	1    2650 3100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6000 4100 6000 2800
Wire Wire Line
	6000 2800 6100 2800
Wire Wire Line
	5950 2700 6100 2700
Wire Wire Line
	5950 2700 5950 4150
$Comp
L power:+3.3V #PWR?
U 1 1 5C608240
P 2650 2550
F 0 "#PWR?" H 2650 2400 50  0001 C CNN
F 1 "+3.3V" H 2738 2587 50  0000 L CNN
F 2 "" H 2650 2550 50  0001 C CNN
F 3 "" H 2650 2550 50  0001 C CNN
	1    2650 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2200 2650 2250
$Comp
L power:GND #PWR?
U 1 1 5BE64F3F
P 2650 2250
F 0 "#PWR?" H 2650 2000 50  0001 C CNN
F 1 "GND" H 2800 2150 50  0001 C CNN
F 2 "" H 2650 2250 50  0001 C CNN
F 3 "" H 2650 2250 50  0001 C CNN
	1    2650 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2600 2650 2550
Wire Wire Line
	5800 2600 5800 2650
Wire Wire Line
	5800 2650 3150 2650
Wire Wire Line
	3150 2650 3150 3100
Wire Wire Line
	3150 3200 3050 3200
Wire Wire Line
	5800 2600 6100 2600
Wire Wire Line
	3050 3100 3150 3100
Connection ~ 3150 3100
Wire Wire Line
	3150 3100 3150 3200
Wire Wire Line
	6100 2900 5900 2900
Wire Wire Line
	5900 2900 5900 2700
Wire Wire Line
	5900 2700 3200 2700
Wire Wire Line
	3200 2700 3200 3000
Wire Wire Line
	3200 3000 3050 3000
Wire Wire Line
	3050 3300 3250 3300
Wire Wire Line
	3250 3300 3250 2750
Wire Wire Line
	3250 2750 5850 2750
Wire Wire Line
	5850 2750 5850 3000
Wire Wire Line
	5850 3000 6100 3000
Wire Wire Line
	1750 3000 1900 3000
Wire Wire Line
	1900 3000 1900 3100
Wire Wire Line
	1900 3100 2200 3100
Wire Wire Line
	2200 3100 2200 3000
Wire Wire Line
	2200 3000 2250 3000
Connection ~ 1750 3000
Wire Wire Line
	2250 3300 2200 3300
Wire Wire Line
	2200 3300 2200 3200
Wire Wire Line
	2200 3200 1900 3200
Wire Wire Line
	1900 3200 1900 3300
Wire Wire Line
	1900 3300 1750 3300
Connection ~ 1750 3300
$Comp
L power:GND #PWR?
U 1 1 5E725650
P 4350 6950
F 0 "#PWR?" H 4350 6700 50  0001 C CNN
F 1 "GND" H 4355 6777 50  0000 C CNN
F 2 "" H 4350 6950 50  0001 C CNN
F 3 "" H 4350 6950 50  0001 C CNN
	1    4350 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 6900 4350 6950
Wire Wire Line
	4650 6550 4800 6550
$EndSCHEMATC
