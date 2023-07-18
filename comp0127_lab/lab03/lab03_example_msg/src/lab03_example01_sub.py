#!/usr/bin/env python3
import rospy
import numpy as np
import math
#include the library for a msg for an integer
from lab03_example_msg.msg import test_msg

#complete the callback function. Your callback function should print out the incoming message.
def callback(msg):
    I = np.identity(3)
    theta = np.sqrt(np.power(msg.rotx.data, 2) + np.power(msg.roty.data, 2) + np.power(msg.rotz.data, 2))

    omega_x = msg.rotx.data/theta
    omega_y = msg.roty.data/theta
    omega_z = msg.rotz.data/theta

    K = np.zeros([3, 3])
    K[0, 1] = -omega_z
    K[0, 2] = omega_y
    K[1, 0] = omega_z
    K[1, 2] = -omega_x
    K[2, 0] = -omega_y
    K[2, 1] = omega_x

    R = I + math.sin(theta)*K + (1 - math.cos(theta) * (K.dot(K)))
    print(R)

def listener():

    rospy.init_node('listener', anonymous=True)

    #TODO: Define a subscriber.
    rospy.Subscriber("chatter", test_msg, callback)

    rospy.spin()


if __name__ == '__main__':
    listener()
