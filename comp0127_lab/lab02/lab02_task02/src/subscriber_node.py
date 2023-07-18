#!/usr/bin/env python3
import rospy
import random
##TODO: include the library for a msg typed VectorStamped
from geometry_msgs.msg import Vector3Stamped

##TODO: complete your callback function.
def callback(msg, offsets):

    ##TODO: Add an offset to the incoming x and z coordinates.
    new_x = msg.vector.x + offsets[0]
    new_y = 0
    new_z = msg.vector.z + offsets[1]


    ##TODO: Print the updated coordinates.
    print(f"I got a point message: {new_x}, {new_y}, {new_z}")


def listener():

    ##TODO: Initialize the subscriber node.
    rospy.init_node("listener", anonymous=True)

	
    ##TODO: Create two random numbers between 0 and 1.
    off1 = random.random()
    off2 = random.random()


    ##TODO: Define the subscriber with the offset arguments
    rospy.Subscriber("chatter", Vector3Stamped, callback, (off1, off2))


    rospy.spin()

if __name__ == '__main__':
    listener()
