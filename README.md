# Seurobot





## ROS nodes and their launch files


- Launch master launcher:
Launches everything. Use with caution

```
roslaunch seurobot master.launch
```

- Launch master launcher:
Launches muscle but not brain

```
roslaunch seurobot blaster.launch
```

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
Creates serial connection with Arduino board. Used for forces sensing. Allows for publishing and subscribing of ROS topics with Arduino.

```
roslaunch seurobot serialcoms0.launch 

```


## depends on 
- pillow
- ROS-I
- MoveIt


