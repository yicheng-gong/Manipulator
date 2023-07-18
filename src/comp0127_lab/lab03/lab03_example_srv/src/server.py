#!/usr/bin/env python3

import rospy
import numpy as np

from lab03_example_srv.srv import point_rot, point_rotResponse, point_rotRequest

def handle_point_rotation(req):
    
    p_x = req.p.x
    p_y = req.p.y
    p_z = req.p.z

    p = np.array([p_x, p_y, p_z]).reshape(3,1)

    q_x = req.q.x
    q_y = req.q.y
    q_z = req.q.z
    q_w = req.q.w

    R = np.zeros((3,3))

    q_xx = q_x*q_x
    q_yy = q_y*q_y
    q_zz = q_z*q_z

    R[0,0] = 1 - 2*q_yy - 2*q_zz
    R[1,1] = 1 - 2*q_xx - 2*q_zz
    R[2,2] = 1 - 2*q_xx - 2*q_yy

    R[0,1] = (2*q_x*q_y) - (2*q_z*q_w)
    R[0,2] = (2*q_x*q_z) - (2*q_y*q_w)

    R[1,0] = (2*q_x*q_y) - (2*q_z*q_w)
    R[1,2] = (2*q_y*q_z) - (2*q_x*q_w)

    R[2,0] = (2*q_x*q_z) - (2*q_y*q_w)
    R[2,1] = (2*q_y*q_z) - (2*q_x*q_w)



    result = R@p # 3x3 * 3x1 = 3x1

    response = point_rotResponse()

    response.out_p.x = result[0]
    response.out_p.y = result[1]
    response.out_p.z = result[2]

    return response


def rotate_point_service():
    rospy.init_node('rotate_point', anonymous=True)
    rospy.Service('rotate_pt', point_rot, handle_point_rotation)
    rospy.spin()

if __name__ == '__main__':
    rotate_point_service()
