#!/usr/bin/env python3

import rospy
import numpy as np
import random
import time

from lab03_example_srv.srv import point_rot, point_rotRequest

def point_rotation_client():
    

    rospy.wait_for_service('rotate_pt')

    client = rospy.ServiceProxy('rotate_pt', point_rot)

    req = point_rotRequest()


    while not rospy.is_shutdown():

        req.p.x = random.uniform(-2.0, 2.0)
        req.p.y = random.uniform(-2.1, 2.3)
        req.p.z = random.uniform(-1.0, 1.0)

        quaternion = np.random.rand(4)

        quaternion /= np.linalg.norm(quaternion)

        req.q.x = quaternion[0]
        req.q.y = quaternion[1]
        req.q.z = quaternion[2]
        req.q.w = quaternion[3]

        res = client(req)

        print(res)
        time.sleep(3)


if __name__ == '__main__':
    try:
        point_rotation_client()
    except rospy.ROSInterruptException:
        pass
