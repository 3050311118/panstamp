EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:atmega8
LIBS:atmel89cxxxx
LIBS:atmel-1
LIBS:atmel-2005
LIBS:avr
LIBS:avr-1
LIBS:avr-2
LIBS:avr-3
LIBS:avr-4
LIBS:hopf
LIBS:rfm-ash
LIBS:mycomponents
LIBS:mcp120-130
LIBS:mcp3304
LIBS:microchip_mcp2120
LIBS:microchip-mcp125x-xxx
LIBS:toshiba
LIBS:panstick-cache
EELAYER 24 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "panStick for panStamp nrj"
Date "20 sep 2012"
Rev "2.0"
Comp "panStamp"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	5700 5500 5350 5500
Wire Wire Line
	6550 2700 5600 2700
Wire Wire Line
	6400 2250 10000 2250
Wire Wire Line
	6550 2600 6550 2450
Connection ~ 5600 2700
Connection ~ 9700 2250
Wire Wire Line
	9700 2400 9700 2250
Wire Wire Line
	8500 6000 8500 6050
Wire Wire Line
	7900 1600 7900 1500
Connection ~ 8500 5500
Wire Wire Line
	8500 5600 8500 5500
Wire Wire Line
	8150 6000 8150 6050
Wire Wire Line
	7900 2000 7900 2050
Wire Wire Line
	7950 5500 8750 5500
Wire Wire Line
	7100 2000 7100 2050
Connection ~ 7100 1500
Wire Wire Line
	7100 1500 7100 1600
Wire Wire Line
	5750 3600 5750 3650
Connection ~ 5750 2950
Wire Wire Line
	5750 3200 5750 2950
Wire Wire Line
	5550 2950 6550 2950
Wire Wire Line
	7500 4550 7500 4750
Connection ~ 7500 4650
Connection ~ 6400 2700
Wire Wire Line
	6550 3350 6400 3350
Wire Wire Line
	10000 3350 10000 3550
Wire Wire Line
	10000 3550 8400 3550
Wire Wire Line
	9700 2850 9700 2800
Wire Wire Line
	10000 2850 10000 2800
Wire Wire Line
	8400 2750 8950 2750
Wire Wire Line
	8550 3050 8400 3050
Wire Wire Line
	8950 3050 9350 3050
Wire Wire Line
	8400 2650 8950 2650
Wire Wire Line
	9700 3350 9700 3450
Wire Wire Line
	9700 3450 8400 3450
Wire Wire Line
	5550 3150 5600 3150
Wire Wire Line
	5600 3150 5600 3250
Wire Wire Line
	7200 4550 7200 4650
Wire Wire Line
	7650 4650 7650 4550
Wire Wire Line
	7350 4550 7350 4650
Connection ~ 7350 4650
Wire Wire Line
	7800 4550 7800 4650
Wire Wire Line
	7800 4650 7200 4650
Connection ~ 7650 4650
Wire Wire Line
	5550 3050 6550 3050
Wire Wire Line
	6050 3200 6050 3050
Connection ~ 6050 3050
Wire Wire Line
	6050 3600 6050 3650
Wire Wire Line
	7500 1500 7500 1600
Connection ~ 7500 1500
Wire Wire Line
	7500 2000 7500 2050
Wire Wire Line
	8150 5500 8150 5600
Connection ~ 8150 5500
Wire Wire Line
	7550 5800 7550 6050
Wire Wire Line
	8750 5500 8750 5450
Wire Wire Line
	6550 5500 6550 5600
Wire Wire Line
	6550 6000 6550 6050
Wire Wire Line
	6900 5600 6900 5500
Wire Wire Line
	6900 6000 6900 6050
Wire Wire Line
	7150 5500 6200 5500
Connection ~ 6550 5500
Connection ~ 6900 5500
Wire Wire Line
	10000 2250 10000 2400
Wire Wire Line
	5550 2850 5600 2850
Wire Wire Line
	5600 2850 5600 2250
Wire Wire Line
	7900 1500 6400 1500
Wire Wire Line
	6400 1500 6400 3350
Connection ~ 6400 2250
$Comp
L FUSE F1
U 1 1 505A4562
P 5950 5500
F 0 "F1" H 6050 5550 40  0000 C CNN
F 1 "PTC 500mA" H 5950 5350 40  0000 C CNN
F 2 "SM0805" H 5950 5500 60  0001 C CNN
F 3 "" H 5950 5500 60  0001 C CNN
	1    5950 5500
	1    0    0    -1  
$EndComp
Text Label 5600 2550 1    60   ~ 0
Vbus
Text Label 5350 5500 0    60   ~ 0
Vbus
$Comp
L C C8
U 1 1 4CCA9E22
P 6900 5800
F 0 "C8" H 6950 5900 50  0000 L CNN
F 1 "1u" H 6950 5700 50  0000 L CNN
F 2 "SM0603S" H 6900 5800 60  0001 C CNN
F 3 "" H 6900 5800 60  0001 C CNN
	1    6900 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 4CCA9E21
P 6550 6050
F 0 "#PWR01" H 6550 6050 30  0001 C CNN
F 1 "GND" H 6550 5980 30  0001 C CNN
F 2 "" H 6550 6050 60  0001 C CNN
F 3 "" H 6550 6050 60  0001 C CNN
	1    6550 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 4CCA9E20
P 6900 6050
F 0 "#PWR02" H 6900 6050 30  0001 C CNN
F 1 "GND" H 6900 5980 30  0001 C CNN
F 2 "" H 6900 6050 60  0001 C CNN
F 3 "" H 6900 6050 60  0001 C CNN
	1    6900 6050
	1    0    0    -1  
$EndComp
$Comp
L C C7
U 1 1 4CCA9E1F
P 6550 5800
F 0 "C7" H 6600 5900 50  0000 L CNN
F 1 "4.7u" H 6600 5700 50  0000 L CNN
F 2 "SM0603S" H 6550 5800 60  0001 C CNN
F 3 "" H 6550 5800 60  0001 C CNN
	1    6550 5800
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 4CCA9DDF
P 8500 5800
F 0 "C10" H 8550 5900 50  0000 L CNN
F 1 "100n" H 8550 5700 50  0000 L CNN
F 2 "SM0603S" H 8500 5800 60  0001 C CNN
F 3 "" H 8500 5800 60  0001 C CNN
	1    8500 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 4CCA9DDE
P 8500 6050
F 0 "#PWR03" H 8500 6050 30  0001 C CNN
F 1 "GND" H 8500 5980 30  0001 C CNN
F 2 "" H 8500 6050 60  0001 C CNN
F 3 "" H 8500 6050 60  0001 C CNN
	1    8500 6050
	1    0    0    -1  
$EndComp
NoConn ~ 6550 3850
$Comp
L +3.3V #PWR04
U 1 1 4CCA967E
P 8750 5450
F 0 "#PWR04" H 8750 5410 30  0001 C CNN
F 1 "+3.3V" H 8750 5560 30  0000 C CNN
F 2 "" H 8750 5450 60  0001 C CNN
F 3 "" H 8750 5450 60  0001 C CNN
	1    8750 5450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 4CCA9558
P 7550 6050
F 0 "#PWR05" H 7550 6050 30  0001 C CNN
F 1 "GND" H 7550 5980 30  0001 C CNN
F 2 "" H 7550 6050 60  0001 C CNN
F 3 "" H 7550 6050 60  0001 C CNN
	1    7550 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 4CCA954B
P 8150 6050
F 0 "#PWR06" H 8150 6050 30  0001 C CNN
F 1 "GND" H 8150 5980 30  0001 C CNN
F 2 "" H 8150 6050 60  0001 C CNN
F 3 "" H 8150 6050 60  0001 C CNN
	1    8150 6050
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 4CCA954A
P 8150 5800
F 0 "C9" H 8200 5900 50  0000 L CNN
F 1 "1u" H 8200 5700 50  0000 L CNN
F 2 "SM0603S" H 8150 5800 60  0001 C CNN
F 3 "" H 8150 5800 60  0001 C CNN
	1    8150 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 4CCA953F
P 7900 2050
F 0 "#PWR07" H 7900 2050 30  0001 C CNN
F 1 "GND" H 7900 1980 30  0001 C CNN
F 2 "" H 7900 2050 60  0001 C CNN
F 3 "" H 7900 2050 60  0001 C CNN
	1    7900 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 4CCA951C
P 7100 2050
F 0 "#PWR08" H 7100 2050 30  0001 C CNN
F 1 "GND" H 7100 1980 30  0001 C CNN
F 2 "" H 7100 2050 60  0001 C CNN
F 3 "" H 7100 2050 60  0001 C CNN
	1    7100 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 4CCA9519
P 7500 2050
F 0 "#PWR09" H 7500 2050 30  0001 C CNN
F 1 "GND" H 7500 1980 30  0001 C CNN
F 2 "" H 7500 2050 60  0001 C CNN
F 3 "" H 7500 2050 60  0001 C CNN
	1    7500 2050
	1    0    0    -1  
$EndComp
$Comp
L MCP1702 U3
U 1 1 4CCA925B
P 7550 5550
F 0 "U3" H 7700 5354 60  0000 C CNN
F 1 "MCP1702" H 7550 5750 60  0000 C CNN
F 2 "SOT23" H 7550 5550 60  0001 C CNN
F 3 "" H 7550 5550 60  0001 C CNN
	1    7550 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 4CCA7988
P 6050 3650
F 0 "#PWR010" H 6050 3650 30  0001 C CNN
F 1 "GND" H 6050 3580 30  0001 C CNN
F 2 "" H 6050 3650 60  0001 C CNN
F 3 "" H 6050 3650 60  0001 C CNN
	1    6050 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 4CCA7986
P 5750 3650
F 0 "#PWR011" H 5750 3650 30  0001 C CNN
F 1 "GND" H 5750 3580 30  0001 C CNN
F 2 "" H 5750 3650 60  0001 C CNN
F 3 "" H 5750 3650 60  0001 C CNN
	1    5750 3650
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 4CCA7974
P 5750 3400
F 0 "C1" H 5800 3500 50  0000 L CNN
F 1 "15p" H 5800 3300 50  0000 L CNN
F 2 "SM0603S" H 5750 3400 60  0001 C CNN
F 3 "" H 5750 3400 60  0001 C CNN
	1    5750 3400
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 4CCA7963
P 6050 3400
F 0 "C2" H 6100 3500 50  0000 L CNN
F 1 "15p" H 6100 3300 50  0000 L CNN
F 2 "SM0603S" H 6050 3400 60  0001 C CNN
F 3 "" H 6050 3400 60  0001 C CNN
	1    6050 3400
	1    0    0    -1  
$EndComp
NoConn ~ 6550 3550
NoConn ~ 6550 3650
$Comp
L +3.3V #PWR012
U 1 1 4CC05D7D
P 6550 2450
F 0 "#PWR012" H 6550 2410 30  0001 C CNN
F 1 "+3.3V" H 6550 2560 30  0000 C CNN
F 2 "" H 6550 2450 60  0001 C CNN
F 3 "" H 6550 2450 60  0001 C CNN
	1    6550 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 4CC05C90
P 7500 4750
F 0 "#PWR013" H 7500 4750 30  0001 C CNN
F 1 "GND" H 7500 4680 30  0001 C CNN
F 2 "" H 7500 4750 60  0001 C CNN
F 3 "" H 7500 4750 60  0001 C CNN
	1    7500 4750
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 4CC05BEC
P 7900 1800
F 0 "C5" H 7950 1900 50  0000 L CNN
F 1 "100n" H 7950 1700 50  0000 L CNN
F 2 "SM0603S" H 7900 1800 60  0001 C CNN
F 3 "" H 7900 1800 60  0001 C CNN
	1    7900 1800
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 4CC05BEB
P 7500 1800
F 0 "C4" H 7550 1900 50  0000 L CNN
F 1 "1u" H 7550 1700 50  0000 L CNN
F 2 "SM0603S" H 7500 1800 60  0001 C CNN
F 3 "" H 7500 1800 60  0001 C CNN
	1    7500 1800
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 4CC05BEA
P 7100 1800
F 0 "C3" H 7150 1900 50  0000 L CNN
F 1 "4.7u" H 7150 1700 50  0000 L CNN
F 2 "SM0603S" H 7100 1800 60  0001 C CNN
F 3 "" H 7100 1800 60  0001 C CNN
	1    7100 1800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 4CC05A75
P 5600 3250
F 0 "#PWR014" H 5600 3250 30  0001 C CNN
F 1 "GND" H 5600 3180 30  0001 C CNN
F 2 "" H 5600 3250 60  0001 C CNN
F 3 "" H 5600 3250 60  0001 C CNN
	1    5600 3250
	1    0    0    -1  
$EndComp
$Comp
L USB_2 J1
U 1 1 4CC05947
P 5350 3000
F 0 "J1" H 5275 3250 60  0000 C CNN
F 1 "USB_2" H 5400 2700 60  0001 C CNN
F 2 "CONN_USB_A_MALE" H 5675 3150 50  0001 C CNN
F 3 "D+" H 5650 3050 50  0001 C CNN
F 4 "D-" H 5650 2950 50  0001 C CNN "Data-"
F 5 "GND" H 5675 2850 50  0001 C CNN "Ground"
	1    5350 3000
	1    0    0    -1  
$EndComp
NoConn ~ 8400 3850
NoConn ~ 8400 3750
NoConn ~ 8400 3650
$Comp
L LED D3
U 1 1 4CC05810
P 9700 2600
F 0 "D3" H 9700 2700 50  0000 C CNN
F 1 "LED" H 9700 2500 50  0000 C CNN
F 2 "SM0603S" H 9700 2600 60  0001 C CNN
F 3 "" H 9700 2600 60  0001 C CNN
	1    9700 2600
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 4CC0580F
P 9700 3100
F 0 "R3" V 9780 3100 50  0000 C CNN
F 1 "1k" V 9700 3100 50  0000 C CNN
F 2 "SM0603S" H 9700 3100 60  0001 C CNN
F 3 "" H 9700 3100 60  0001 C CNN
	1    9700 3100
	-1   0    0    1   
$EndComp
$Comp
L R R2
U 1 1 4CC057A4
P 10000 3100
F 0 "R2" V 10080 3100 50  0000 C CNN
F 1 "1k" V 10000 3100 50  0000 C CNN
F 2 "SM0603S" H 10000 3100 60  0001 C CNN
F 3 "" H 10000 3100 60  0001 C CNN
	1    10000 3100
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 4CC057A3
P 10000 2600
F 0 "D2" H 10000 2700 50  0000 C CNN
F 1 "LED" H 10000 2500 50  0000 C CNN
F 2 "SM0603S" H 10000 2600 60  0001 C CNN
F 3 "" H 10000 2600 60  0001 C CNN
	1    10000 2600
	0    1    1    0   
$EndComp
NoConn ~ 8400 3350
NoConn ~ 8400 3250
NoConn ~ 8400 3150
NoConn ~ 8400 2950
Text Label 8750 2650 0    60   ~ 0
RXD
Text Label 8750 2750 0    60   ~ 0
TXD
$Comp
L C C6
U 1 1 4CC05698
P 8750 3050
F 0 "C6" H 8800 3150 50  0000 L CNN
F 1 "100n" H 8800 2950 50  0000 L CNN
F 2 "SM0603S" H 8750 3050 60  0001 C CNN
F 3 "" H 8750 3050 60  0001 C CNN
	1    8750 3050
	0    1    1    0   
$EndComp
$Comp
L FT232RL U2
U 1 1 4CC05399
P 7500 3350
F 0 "U2" H 7500 4250 60  0000 C CNN
F 1 "FT232RL" H 7900 2350 60  0000 L CNN
F 2 "ftdichip-3-SSOP28DB" H 7500 3350 60  0001 C CNN
F 3 "" H 7500 3350 60  0001 C CNN
	1    7500 3350
	1    0    0    -1  
$EndComp
$Comp
L CONN_7 P1
U 1 1 523CC5C3
P 3950 4250
F 0 "P1" V 3900 4250 60  0000 C CNN
F 1 "CONN_7" V 4000 4250 60  0000 C CNN
F 2 "PIN_ARRAY_7x1" H 3950 4250 60  0001 C CNN
F 3 "" H 3950 4250 60  0000 C CNN
	1    3950 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3950 3600 3950
Wire Wire Line
	2900 4250 3600 4250
Wire Wire Line
	2900 4350 3600 4350
Wire Wire Line
	2900 4450 3600 4450
Wire Wire Line
	2900 4550 3600 4550
Text Label 2900 3950 0    60   ~ 0
P2.0
$Comp
L +3.3V #PWR015
U 1 1 523CC8F7
P 3500 4050
F 0 "#PWR015" H 3500 4010 30  0001 C CNN
F 1 "+3.3V" H 3500 4160 30  0000 C CNN
F 2 "" H 3500 4050 60  0001 C CNN
F 3 "" H 3500 4050 60  0001 C CNN
	1    3500 4050
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR016
U 1 1 523CC8FD
P 3500 4150
F 0 "#PWR016" H 3500 4150 30  0001 C CNN
F 1 "GND" H 3500 4080 30  0001 C CNN
F 2 "" H 3500 4150 60  0001 C CNN
F 3 "" H 3500 4150 60  0001 C CNN
	1    3500 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 4050 3500 4050
Wire Wire Line
	3600 4150 3500 4150
Text Label 2900 4350 0    60   ~ 0
TXD
Text Label 2900 4250 0    60   ~ 0
RXD
Text Label 2900 4550 0    60   ~ 0
RST/SBWTDIO
Text Label 2900 4450 0    60   ~ 0
TEST/SBWTCK
Wire Wire Line
	8400 2850 9350 2850
Text Label 9350 2850 2    60   ~ 0
P2.0
Text Label 9000 3050 0    60   ~ 0
RST/SBWTDIO
$EndSCHEMATC
