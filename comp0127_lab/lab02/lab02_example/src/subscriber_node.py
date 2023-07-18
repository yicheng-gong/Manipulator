#!/usr/bin/env python3
import rospy
#include the library for a msg for an integer
from std_msgs.msg import Float64MultiArray

#complete the callback function. Your callback function should print out the incoming message.
def callback(msg):
    print (f'Incoming message: {msg.data}')

def listener():

    rospy.init_node('listener', anonymous=True)

    #TODO: Define a subscriber.
    rospy.Subscriber("chatter", Float64MultiArray, callback)

    rospy.spin()


if __name__ == '__main__':
    listener()
