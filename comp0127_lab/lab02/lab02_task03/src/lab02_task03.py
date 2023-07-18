#!/usr/bin/env python3

import rospy
import math
from std_msgs.msg import Float64


def joint_pub():
    rospy.init_node('trajectory_generator', anonymous=True)
    rate = rospy.Rate(10)

    ##TODO: Define each joint publisher, by identifying the appropriate publishing topic.
    pub1 = rospy.Publisher('/EffortJointInterface_J1_controller/command', Float64, queue_size=100)
    pub2 = rospy.Publisher('/EffortJointInterface_J2_controller/command', Float64, queue_size=100)
    pub3 = rospy.Publisher('/EffortJointInterface_J3_controller/command', Float64, queue_size=100)
    pub4 = rospy.Publisher('/EffortJointInterface_J4_controller/command', Float64, queue_size=100)

    ##TODO: Define the messages to be published.

    msg1 = Float64()
    msg2 = Float64()
    msg3 = Float64()
    msg4 = Float64()


    while not rospy.is_shutdown():

        t = rospy.Time.now().secs
	
	    ##TODO: Define the joint trajectories.
        msg1.data = 200*(1/180)*2*math.pi*math.sin(2*math.pi*t*(1/10))
        msg2.data = 50*(1/180)*2*math.pi*math.sin(2*math.pi*t*(1/12))
        msg3.data = -80*(1/180)*2*math.pi*math.sin(2*math.pi*t*(1/15))
        msg4.data = 50*(1/180)*2*math.pi*math.sin(2*math.pi*t*(1/11))


	    ##TODO: Publish all messages.
        pub1.publish(msg1)
        pub2.publish(msg2)
        pub3.publish(msg3)
        pub4.publish(msg4)


        rate.sleep()


if __name__ == '__main__':
    try:
        joint_pub()
    except rospy.ROSInterruptException:
        pass
