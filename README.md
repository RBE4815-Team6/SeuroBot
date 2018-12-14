# Seurobot
Seurobot a program designed to creat pointilist art using and industrial robotic arm and ROS Industrial. This was the final term project for an Industrial Robotics class.

Worcester Polotechnic Institute (WPI) RBE 4815: Industrial Robotics B18
Professor/Advisor: Craig Putnam

Student Team 6:
Hannah Baez
Nikolas Gamarra
Ryan O'Brien
Jacob Remz

[Timelapse Video](https://www.youtube.com/watch?v=G_SPY3HaElo)
[Tool Change Video](https://www.youtube.com/watch?v=UiV1uYzQe38)

<img src="https://github.com/RBE4815-Team6/Seurobot/blob/master/image_script/BMOtrace.png" width="200" height="200">
<img src="https://github.com/RBE4815-Team6/Seurobot/blob/master/image_script/BMO.gif" width="200" height="200">
<img src="https://github.com/RBE4815-Team6/Seurobot/blob/master/image_script/IMG_20181214_150729.jpg" width="300" height="300">
<img src="https://github.com/RBE4815-Team6/Seurobot/blob/master/image_script/BMOfinal.png" width="400" height="400">



## ROS nodes and their launch files
To run this program and effectively monitor for errors it is best to launch it in three terminals

- ROS-I
Launch the ROS-I stack to connect to the robot and visualize in rviz:

```
roslaunch abb_irb1600_6_12_moveit_config moveit_planning_execution.launch sim:=false robot_ip:=192.168.100.100
```

- motion_server
This node recives action messages from the action client and sends motion requests to the ROS-I stack using move_group
```
roslaunch motion_server motion_server.launch 
```

- motion_planning_client
This node is the main controll node written in python.  When in normal operation it will read an image and draw it on the white board. In debug mode it goes to manually  prgorammed locations.

```
roslaunch motion_planning_client motion_client.launch 

```

- serialcoms0
This is only needed if using sensors attached to an Arduino on the EOAT. Creates serial connection with Arduino board. Used for force sensing. Allows for publishing and subscribing of ROS topics with Arduino.

```
roslaunch seurobot serialcoms0.launch 

```

## Dithering Script

The dithering script located in the image_script directory can be used to turn any image into a dithered image with user defined number of colors


## Depends On 
- pillow
- ROS-I
- MoveIt


