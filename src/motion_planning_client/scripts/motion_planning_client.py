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
    zZ=.015
    zA=.0225
    zB=zZ
    zC=zZ

    def __init__(self):
        self.client = actionlib.SimpleActionClient('motion',
                                              motion_msgs.msg.MoveRobotAction)

        self.force_sub=rospy.Subscriber('/force_data',LoadCellForces32,self.forceCB)


    def forceCB(self,data):#function to prcess force data 
        print("forcecb working")
        zeroThresh = .5 #.5 is half way point for force
        abortThresh =.5
        #print (data)

        if(data.cellA>zeroThresh or data.cellB>zeroThresh or data.cellC>zeroThresh):

            print(data.cellA)


        if(data.cellA>abortThresh or data.cellB>abortThresh or data.cellC>abortThresh):
            ROS_WARN("Too much force!")
            self.client.cancel_all_goals()




    def move(self,x, y, z, roll, pitch, yaw, tool):
        # SimpleActionClient construction, targeting the fibonacci topic of type Fibonacci

        # Waits until the action server has started up and started
        # listening for goals. (So the goals aren't ignored.)
        self.client.wait_for_server()

        # Creates a goal to send to the action server.
        goal = motion_msgs.msg.MoveRobotGoal(x, y, z, roll, pitch, yaw, tool)

        # Sends the goal to the action server.
        self.client.send_goal(goal)

        # client.cancel_all_goals()

        # Waits for the server to finish performing the action.
        self.client.wait_for_result()
        return self.client.get_result()
def printImage():
    print("in print image")


def main_node():

    myRobot=Robot()

    debug=False


    if(debug==False):
        print("debug is false")
        boardx = -.4#rospy.get_param('workcell/canvas_x')
        boardy = -.4#rospy.get_param('workcell/canvas_y')
        boardz = rospy.get_param('workcell/canvas_z')

        painter=Robot()
        seperation=.01
        zClearance=.3
        zTouching=.015
        currentTool="tool_red"

        scriptDir = os.path.dirname(__file__)
        impath = os.path.join(scriptDir, '../../../../seurobot_ws/image_script/output.png')
        print("reading image")
        img = Image.open(impath)
        img = img.convert('RGB')
        width, height = img.size
        print("Image done reading")
        #painter.move(boardx, boardy, zClearance, 0 , 180, 0, currentTool)
        for x in range(width):
            for y in range(height):
                r, g, b = img.getpixel((x,y))
                print("\nPrinting:")
                print("{}%".format(int(100.0 * y / height)))
                print("On x=", x, "y=", y, "Color=",r, g, b)
    else:
        try:
            # Initializes a rospy node so that the SimpleActionClient can
            # publish and subscribe over ROS.
            # x=-.5 y=-.6
            #              x,  y,  z,  r,  p,  y,  tool
            #z rotation off by 180 -28?

            #z .025 red
            #z .0225 blue

            result = myRobot.move(0, -.7, .4, 0, 180, 0, "tool_green")

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
