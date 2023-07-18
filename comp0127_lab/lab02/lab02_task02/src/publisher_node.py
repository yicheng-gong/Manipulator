#!/usr/bin/env python3

import rospy
import math
import random
##TODO: include the library for a msg typed VectorStamped
from geometry_msgs.msg import Vector3Stamped

def talker():

    ##TODO: Define a publisher, initialize the node, and define a rate
    pub = rospy.Publisher("chatter", Vector3Stamped, queue_size=100)
    rospy.init_node("talker", anonymous=True)
    rate = rospy.Rate(10)


    ##TODO: Define the unit circle radius, and the message to be published
    radius = 1.0
    message_to_publish = Vector3Stamped()

    while not rospy.is_shutdown():
	
        #The VectorStamped type needs a timestamp. This timestamp can be the current time.
        time_stamp=rospy.Time.now()

        ##TODO: Define the position (x,y,z) on the unit circle
        theta = random.uniform(0, 2*math.pi)
        x = math.cos(theta)
        y = 0
        z = math.sin(theta)     

        ##TODO: Input the data into your message. 
        message_to_publish.vector.x = x
        message_to_publish.vector.y = y
        message_to_publish.vector.z = z

        ##TODO: Publish the message
        pub.publish(message_to_publish)
        rate.sleep()


if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
