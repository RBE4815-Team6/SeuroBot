#! /usr/bin/env python

from __future__ import print_function  # Lets you print like Python 3
import rospy
import actionlib
# import simple_action_example.msg
# from motion_action_server import MoveRobot.msg
# import MoveRobot.msg
# import motion_action_server.msg
# import motion_msgs.msg  # import MoveRobotAction
import os

from PIL import Image

import motion_msgs
from motion_msgs.msg import MoveRobotAction
from force_msgs.msg import LoadCellForces32


class Robot:

        #.015 blue
            #.02 green
            #.02 red
    zZ = .015
    zR = .02
    zG = .02
    zB = .015
    lastX = 0
    lastY = -.8
    lastZ = .4
    lastRoll = 0
    lastPitch = 180
    lastYaw = 0
    lastTool = 0
    zClearance = .05
    zTouching = .015

    def __init__(self):
        self.client = actionlib.SimpleActionClient('motion',
                                                   motion_msgs.msg.MoveRobotAction)

        self.force_sub = rospy.Subscriber('/force_data', LoadCellForces32, self.forceCB)

    def forceCB(self, data):  # function to prcess force data
        print("forcecb working")
        zeroThresh = .5  # .5 is half way point for force
        abortThresh = .5
        # print (data)

        if (data.cellA > zeroThresh or data.cellB > zeroThresh or data.cellC > zeroThresh):
            print(data.cellA)

        if (data.cellA > abortThresh or data.cellB > abortThresh or data.cellC > abortThresh):
            ROS_WARN("Too much force!")
            self.client.cancel_all_goals()

    def clear(self):
        # Waits until the action server has started up and started
        self.client.wait_for_server()

        # Creates a goal to send to the action server.
        goal = motion_msgs.msg.MoveRobotGoal(self.lastX, self.lastY, self.zClearance, self.lastRoll, self.lastPitch,
                                             self.lastYaw, self.lastTool)

        # Sends the goal to the action server.
        self.client.send_goal(goal)

        # Waits for the server to finish performing the action.
        self.client.wait_for_result()
        return self.client.get_result()

    def touch(self):
        # Waits until the action server has started up and started
        self.client.wait_for_server()

        # Creates a goal to send to the action server.
        goal = motion_msgs.msg.MoveRobotGoal(self.lastX, self.lastY, self.zTouching, self.lastRoll, self.lastPitch,
                                             self.lastYaw, self.lastTool)

        # Sends the goal to the action server.
        self.client.send_goal(goal)

        # Waits for the server to finish performing the action.
        self.client.wait_for_result()
        return self.client.get_result()

    def changeTool(self, tool):

        self.lastTool = tool

        # Waits until the action server has started up and started
        # listening for goals. (So the goals aren't ignored.)
        self.client.wait_for_server()

        # Creates a goal to send to the action server.
        goal = motion_msgs.msg.MoveRobotGoal(self.lastX, self.lastY, self.lastZ, self.lastRoll, self.lastPitch,
                                             self.lastYaw, tool)

        # Sends the goal to the action server.
        self.client.send_goal(goal)

        # Waits for the server to finish performing the action.
        self.client.wait_for_result()
        return self.client.get_result()

    def moveXYZ(self, x, y, z):
        self.lastX = x
        self.lastY = y
        self.lastZ = z

        self.client.wait_for_server()
        goal = motion_msgs.msg.MoveRobotGoal(x, y, z, self.lastRoll, self.lastPitch, self.lastYaw, self.lastTool)
        # Sends the goal to the action server.
        self.client.send_goal(goal)

        # Waits for the server to finish performing the action.
        self.client.wait_for_result()
        return self.client.get_result()

    def moveXY(self, x, y):
        self.lastX = x
        self.lastY = y

        self.client.wait_for_server()
        goal = motion_msgs.msg.MoveRobotGoal(x, y, self.lastZ, self.lastRoll, self.lastPitch, self.lastYaw, self.lastTool)
        # Sends the goal to the action server.
        self.client.send_goal(goal)

        # Waits for the server to finish performing the action.
        self.client.wait_for_result()
        return self.client.get_result()

    def move(self, x, y, z, roll, pitch, yaw, tool):

        self.lastX = x
        self.lastY = y
        self.lastZ = z
        self.lastRoll = roll
        self.lastPitch = pitch
        self.lastYaw = yaw
        self.lastTool = tool

        # Waits until the action server has started up and started
        # listening for goals. (So the goals aren't ignored.)
        self.client.wait_for_server()

        # Creates a goal to send to the action server.
        goal = motion_msgs.msg.MoveRobotGoal(x, y, z, roll, pitch, yaw, tool)
        # goal = motion_msgs.msg.MoveRobotGoal()
        # goal.z=.4

        # Sends the goal to the action server.
        self.client.send_goal(goal)

        # client.cancel_all_goals()

        # Waits for the server to finish performing the action.
        self.client.wait_for_result()
        return self.client.get_result()


def printImage():
    print("in print image")


def main_node():
    myRobot = Robot()

    debug = False

    if (debug == False):
        print("debug is false")
        xOrigin = -.5  # rospy.get_param('workcell/canvas_x')
        yOrigin = -1.0  # rospy.get_param('workcell/canvas_y')
        boardz = rospy.get_param('workcell/canvas_z')

        scalingFactor = .01  # 1=Meter .01=cm

        painter = Robot()
        seperation = .01

        zTouching = .015
        currentTool = "tool_red"

        scriptDir = os.path.dirname(__file__)
        impath = os.path.join(scriptDir, '../../../../seurobot_ws/image_script/RGBTEST.png')
        print("reading image")
        img = Image.open(impath)
        img = img.convert('RGB')
        width, height = img.size
        print("Image done reading")
        # painter.move(boardx, boardy, zClearance, 0 , 180, 0, currentTool)
        print("Moving to origin")

        done = myRobot.move(xOrigin, yOrigin, myRobot.zClearance, 0, 180, 0, "tool_red")

        colors = [
            "WHITE",
            # "BLACK",
            "RED",
            "BLUE",
            "GREEN",
            # "CYAN",
            # "MAGENTA",
            # "YELLOW",
            # "BROWN"
        ]
        print("waiting..")

        if (done):
            print("STARTING RUN")
            for x in range(width):
                for y in range(height):
                    r, g, b = img.getpixel((x, y))
                    print("\nPrinting:")
                    print("{}%".format(int(100.0 * x / width)))
                    print("On x=", x, "y=", y, "Color=", r, g, b)

                    currentX = xOrigin + (x * scalingFactor * 1)
                    currentY = yOrigin + (y * scalingFactor * -1)
                    done = myRobot.clear()
                    if (done):
                        done = myRobot.moveXY(currentX, currentY)
                        if (done):
                            if (r == 255 and g == 255 and b == 255 and "WHITE" in colors):  # WHITE
                                done = 1
                            elif (r == 255 and g == 0 and b == 0 and "RED" in colors):  # RED
                                myRobot.zTouching=myRobot.zR
                                if myRobot.changeTool("tool_red"):
                                    if myRobot.touch():
                                        myRobot.clear()
                            elif (r == 0 and g == 255 and b == 0 and "GREEN" in colors):  # GREEN
                                myRobot.zTouching=myRobot.zG
                                if myRobot.changeTool("tool_green"):
                                    if myRobot.touch():
                                        myRobot.clear()
                            elif (r == 0 and g == 0 and b == 255 and "BLUE" in colors):  # BLUE
                                myRobot.zTouching=myRobot.zB
                                if myRobot.changeTool("tool_blue"):
                                    if myRobot.touch():
                                        myRobot.clear()
                            elif (r == 255 and g == 255 and b == 255 and "CYAN" in colors):  # CYAN
                                if myRobot.changeTool("tool_red"):
                                    if myRobot.touch():
                                        myRobot.clear()
                            elif (r == 255 and g == 255 and b == 255 and "MAGENTA" in colors):  # MAGENTA
                                if myRobot.changeTool("tool_green"):
                                    if myRobot.touch():
                                        myRobot.clear()
                            elif (r == 255 and g == 255 and b == 255 and "YELLOW" in colors):  # YELLOW
                                if myRobot.changeTool("tool_blue"):
                                    if myRobot.touch():
                                        myRobot.clear()
                            elif (r == 0 and g == 0 and b == 0 and "BLACK" in colors):  # BLACK
                                if myRobot.changeTool("tool_red"):
                                    if myRobot.touch():
                                        myRobot.clear()
                            elif (r == 255 and g == 255 and b == 255 and "BROWN" in colors):  # BROWN
                                if myRobot.changeTool("tool_green"):
                                    if myRobot.touch():
                                        myRobot.clear()
                            else:  # SKIP
                                done = 1

                # if r != 255 or g != 255 or b != 255:


    else:
        try:
            # Initializes a rospy node so that the SimpleActionClient can
            # publish and subscribe over ROS.
            # x=-.5 y=-.6
            #              x,  y,  z,  r,  p,  y,  tool
            # z rotation off by 180 -28?

            # z .025 red
            # z .0225 blue

            # x-.4 y-1.2
            #.015 blue
            #.02 green
            #.02 red

            # x-.5 y-1
            result = myRobot.move(-.5, -1.0 , .05, 0, 180, 0, "tool_red")


            print(result)

        except rospy.ROSInterruptException:
            print("program interrupted before completion", file=sys.stderr)

            # Prints out the result of executing the action
    rospy.spin()


if __name__ == '__main__':
    print("Client Running...")
    boardx = rospy.get_param('workcell/canvas_x')
    boardy = rospy.get_param('workcell/canvas_y')
    boardz = rospy.get_param('workcell/canvas_z')

    print("Board Top Left: x=", boardx, "y=", boardy, "z=", boardz)

    # rospy.init_node('force_sub', anonymous=True)
    # sub=rospy.Subscriber('force_data', LoadCellForces32, forceCB)

    rospy.init_node('main_node_py', anonymous=True)
    main_node()
