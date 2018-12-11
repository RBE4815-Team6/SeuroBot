# Seurobot





## Launch files


Launch master launcher:

ROS-I
============
Launch the ROS-I stack to connect to the robot and visualize in rviz:

```
roslaunch abb_irb1600_6_12_moveit_config moveit_planning_execution.launch sim:=false robot_ip:=192.168.100.100
```


motion_server
============
This node recives action messages from the action client and sends motion requests to the ROS-I stack using move_group
```
roslaunch motion_server motion_server.launch 
```
============
motion_planning_client
```
roslaunch motion_planning_client motion_client.launch 

```
```
roslaunch abb_irb1600_6_12_moveit_config moveit_planning_execution.launch sim:=false robot_ip:=192.168.100.100
```
```
roslaunch abb_irb1600_6_12_moveit_config moveit_planning_execution.launch sim:=false robot_ip:=192.168.100.100
```

## depends on 
pillow
ROS-I

