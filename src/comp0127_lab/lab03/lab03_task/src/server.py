#!/usr/bin/env python3

from inspect import trace
from urllib import response
import rospy
import numpy as np

# TODO: Include all the required service classes
from lab03_task.srv import rotmat2quat, rotmat2quatResponse

def convert_rotmat2quat(request):
    """Callback ROS service function to convert rotation matrix to a quaternion

    Args:
        request (rotmat2quatRequest): lab03_task service message, containing
        the rotation matrix you need to convert.

    Returns:
        rotmat2quatResponse: lab03_task service response, in which 
        you store the requested quaternion
    """

    # TODO complete the function to transform a rotation matrix to quaternion

    m = np.array(request.R.data).reshape(3,3)

    tr = np.trace(m)

    theta = np.arccos((tr-1)/2)

    response = rotmat2quatResponse()

    if theta==0:
        response.q.x = 0
        response.q.y = 0
        response.q.z = 0
        response.q.w = 1
    elif theta == np.pi or theta == -np.pi:
        K = 0.5 *(m +np.eye(3))

        sth2=np.sin(theta/2)

        response.q.x = np.sqrt(K[0,0])*sth2
        response.q.y = np.sqrt(K[1,1])*sth2
        response.q.z = np.sqrt(K[2,2])*sth2
        response.q.w = 0
    else:
        den = 2*np.sin(theta)

        r_x = (1/den) * (m[2,1]-m[1,2])
        r_y = (1/den) * (m[0,2]-m[2,0])
        r_z = (1/den) * (m[1,0]-m[0,1])

        sth2=np.sin(theta/2)
        cth2=np.cos(theta/2)

        response.q.x = r_x*sth2
        response.q.y = r_y*sth2
        response.q.z = r_z*sth2
        response.q.z = cth2

    return response




def rotation_converter():
    rospy.init_node('rotation_converter')

    # TODO: Initialise the service
    rospy.Service('rotmat2quat', rotmat2quat, convert_rotmat2quat)
    rospy.spin()



if __name__ == "__main__":
    rotation_converter()
