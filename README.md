# 404APDdemo
404 auto pilot drone demo
本工程已经转移到gitee进行维护：
this project is transported to gitee with following website:
https://gitee.com/mortyliu/UESTC_404APD

2021 年 8月16日：
大家好，因为github 的dns 污染，国内网络经常出现无法上传和下拉提交的问题，所以现在整个工程都会在gitee：https://gitee.com/mortyliu/UESTC_404APD 上进行维护。同时也来说一下最近做的一些事情。

从做四轴飞行器开始，我的梦想就是到大疆联合实验室深造。所以从四月考完托福后，就开始着手看vSLAM 的内容，直到七月中旬，我算是把60-70%的数学坑填平了，来来回回李群和李代数
反复推演了六七遍，将ORB-SLAM1的论文看了四五遍，算是把大概结构理清楚了。
接着7月份我开始优化飞行控制器的硬件设计，以及重新学习了AHRS的相关内容，之前对于AHRS都是拿着别人的代码直接使用就完了，并没有深度去理解里面的数学原理（非线性优化，刚体运动学等）。这一次是将整个姿态解算的过程从论文到代码完全看了一遍，同时调通了所有的传感器，将算法适配到了404APD上。在这之后看了一些关于PID更深的研究，了解了一些模糊PID的内容和一些PID为基础的改进算法。个人认为可以在项目最后进行实现。
8月开始，我开始着手404APD上的RTOS的移植，其实Nuttx的移植已经想了大半年了，但是因为缺少相关的资料，感觉壁垒有一点高，一直没有去深度的做。半年后的8月，我再来看nuttx的kernel代码的时候，突然感觉茅塞顿开了（可能是这半年的实习对于嵌入式linux有了一些基本的了解），所以在这半个月中，我从头到尾阅读了nuttx的官方文档，目前感觉是可以开工移植了，目前预估的工作量为两周，也就是到9月1日，大部分的移植工作应该是可以完成了。
说到这还是说一句有的没的，关于为什么使用nuttx作为404APD的RTOS。
首先，Nuttx是一个累unix的RTOS，以及仿照linux内核设计。所以个人认为使用nuttx作为深度了解linux内核的第一步还是非常有价值的。其次，Nuttx最近的开发者会议中，大家的目标都是将nuttx和ROS结合，设计一个为机器人控制专门优化的MCU级RTOS，这个想法和我一开始的想法不谋而合，使用带ROS的嵌入式算力平台控制带ROS部分组件的nuttx，形成一个分布式的机器人系统。这样的结构将会让开发者更加专注于自己的层级。
最后，Nuttx在国内算比较小众的RTOS，相关资料比较缺乏，如果能够将自己的移植过程留下完整的文档，对于中文开发者将会提供不少的帮助，同时也为后面想要继续完善404APD的开发者铺平一些道路。

回到正题，和公司算法前辈聊了聊对于以后的安排，他还是非常认可404APD这个项目的，但是他也提出了一些关于为什么要做404APD的问题。目前我觉得只能说是作为工科男，一切以帅和好玩为基准，但是同时，也应该想的更多。希望404APD能够成为一个平台，和404的同学们一起研究更多嵌入式系统相关和机器人感知相关的课题，也许以后404APD能够发展为像匿名飞控，或者其他机器人圈一样的开发者群体，我认为将会是一件能让我觉得自豪一辈子的事情。

至此，希望自己能够更努力一点，把这个事情做好吧。


文件层次分为
* Algorithm: includes Algorithm related to the projects(SLAM \ Quarternion ) 
* Book: includes books and files of related knowledge that are used in the projects. I will     write reference at every fuction realization.
* Hardware_design: fly control board design and other PCB used in the project.
* Hardware_design_doc : documents of chips which are used in the PCB design 
* Software: includes fly control codes and SLAM codes; the codes realization.

I will mainly use english in 404APDdemo which from my point of view forces me to adpat future reaserch work enviroments and work flow and to some extends,is an interesting project to practice and be familiar with the academic terms.

The project is conjured up by Morty-Liu Evan-Guo and Nick-Zheng and unsuitable explaination and declaration about the project is inevitable.  


## INTRODUCTION

### 404SLAM UAV Platform 
404APD 目标是建立一个能够稳定飞行，通过双目SLAM以及其他传感器完成自主路径选择和地图绘制的的无人机。

无人机能够高速穿越复杂环境; 通过GPS和IMU模块完成自动返航和目标点规划，飞行路径规划。




## How to start



### 硬件设计

#### 分电板设计
1. 20v 转 5v TPS5430DA
2. 5v-3v飞控　1117 33
电池直接供电４个电调，电调电路上需要做滤波
3. 接收机插座，ppm连接供电板
##### 需求分析

1. 为四个最大放电电流为30A的电调供电
2. 为飞行控制板供电5V 3A
3. 为飞行主机供电5V3A // 后期会变为12V供电

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



#### 高级图形计算平台选择

前期使用单目摄像头以及树莓派进行验证；后期会换到双目摄像头和图像算力平台进行实验

图像平台需要转接板：

1. 双目/单目摄像头
    // 2021 2.6
    首先选用港科大的单目SLAM项目，结合IMU构建地图
2. GPS/？



<!-- #### 软件设计

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


 -->
