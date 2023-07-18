#!/usr/bin/env python3

import rospy
import random
from lab03_example_msg.msg import test_msg

def talker():
    pub = rospy.Publisher('chatter', test_msg, queue_size=100)
    rospy.init_node('rotation_publisher', anonymous=True)
    rate = rospy.Rate(10) # 10hz

    rot_msg = test_msg()

    while not rospy.is_shutdown():
        rot_msg.rotx.data = random.uniform(-2.0, 2.0)
        rot_msg.roty.data = random.uniform(-1.0, 1.0)
        rot_msg.rotz.data = random.uniform(-2.5, 2.5)


        pub.publish(rot_msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
