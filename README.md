# 404APDdemo
404 auto pilot drone demo
文件层次分为
* Algorithm: includes Algorithm related to the projects(SLAM \ Quarternion ) 
* Book: includes books and knowledge that are used in the projects. I will     write referrence at every fuction realization.
* Hardware_design: fly control board design and other PCB used in the project
* Hardware_design_doc : documents of chips which used in the PCB
* Software: includes fly control codes and SLAM codes; the codes realization.

I will mainly use english in 404APDdemo which from my point of view forces me to adpat future reaserch work enviroments and work flow and to some extends, practice and be familiar with the academic terms.


## INTRODUCTION

### 404SLAM UAV Platform 
404APD 目标是建立一个能够稳定飞行，通过双目SLAM以及其他传感器完成自主路径选择和地图绘制的的无人机。

无人机能够高速穿越复杂环境; 通过GPS和IMU模块完成自动返航和目标点规划，飞行路径规划。



### 硬件设计

#### 分电板设计

##### 需求分析

1. 为四个最大放电电流为30A的电调供电
2. 为飞行控制板供电5V 3A
3. 为飞行主机供电5V3A // 后期会变为12V供电

##### 硬件选择

1. 电源管理芯片

#### 飞行控制版设计
h750vbt6 // 

##### 需求分析
	1. 双冗余IMU
		IMU 选择
		icm20602(0) // 6轴
		icm20649　／／bmi088(0)
		hmc5883? // spl06 // ist8310(0)

	2. 4路PWM-》电调
	3. 一路PPM《-接收机 
	4. 一路调试串口
	5. 稀疏光流模块
	6. 激光测距模块
	7. 一路串口GPS
	8. 一路JTAG
	9. 晶振

##### 硬件选择h750vbt6

1. 

#### 高级图形计算平台选择

前期使用单目摄像头以及树莓派进行验证；后期会换到双目摄像头和图像算力平台进行实验

图像平台需要转接板：

1. 双目/单目摄像头
    // 2021 2.6
    首先选用港科大的单目SLAM项目，结合IMU构建地图
2. GPS/？



#### 飞行硬件选择

##### 动力

##### 

### 软件设计

#### 飞控平台设计

##### 数据流图

##### 模块详细设计



#### 视觉算法软件设计

##### 数据流图

##### 模块详细设计



## Related Topic 

### SLAM

* 描述一个物体在三维空间中的位置和旋转

### EKF





