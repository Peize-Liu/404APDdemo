EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
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
L MCU_ST_STM32F4:STM32F407ZETx U?
U 1 1 601F510B
P 14450 9550
F 0 "U?" H 14450 5861 50  0000 C CNN
F 1 "STM32F407ZETx" H 14450 5770 50  0000 C CNN
F 2 "Package_QFP:LQFP-144_20x20mm_P0.5mm" H 13450 6150 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00037051.pdf" H 14450 9550 50  0001 C CNN
	1    14450 9550
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U?
U 1 1 60202539
P 13600 4850
F 0 "U?" H 13600 5092 50  0000 C CNN
F 1 "AMS1117-3.3" H 13600 5001 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 13600 5050 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 13700 4600 50  0001 C CNN
	1    13600 4850
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AP1117-ADJ U?
U 1 1 6021629F
P 9550 5150
F 0 "U?" H 9550 5392 50  0000 C CNN
F 1 "AP1117-ADJ" H 9550 5301 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 9550 5350 50  0001 C CNN
F 3 "http://www.diodes.com/datasheets/AP1117.pdf" H 9650 4900 50  0001 C CNN
	1    9550 5150
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Motion:ICM-20602 U?
U 1 1 60216D37
P 9650 6750
F 0 "U?" H 9650 6161 50  0000 C CNN
F 1 "ICM-20602" H 9650 6070 50  0000 C CNN
F 2 "Package_LGA:LGA-16_3x3mm_P0.5mm_LayoutBorder3x5y" H 9650 7000 50  0001 C CNN
F 3 "http://www.invensense.com/wp-content/uploads/2016/10/DS-000176-ICM-20602-v1.0.pdf" H 9700 7700 50  0001 C CNN
	1    9650 6750
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Motion:ICM-20948 U?
U 1 1 60218B58
P 5550 6900
F 0 "U?" H 5550 6111 50  0000 C CNN
F 1 "ICM-20948" H 5550 6020 50  0000 C CNN
F 2 "Sensor_Motion:InvenSense_QFN-24_3x3mm_P0.4mm" H 5550 5900 50  0001 C CNN
F 3 "http://www.invensense.com/wp-content/uploads/2016/06/DS-000189-ICM-20948-v1.3.pdf" H 5550 6750 50  0001 C CNN
	1    5550 6900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
