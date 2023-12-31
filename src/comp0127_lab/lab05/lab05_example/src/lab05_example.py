#!/usr/bin/env python3

import rospy
import numpy as np
from numpy import pi

# import the message type that holds data describing robot joint angles
from sensor_msgs.msg import JointState
# import the class that publishes coordinate frame transform information
from tf2_ros import TransformBroadcaster
# import the message type that expresses a transform from one coordinate frame to another
from geometry_msgs.msg import TransformStamped, Quaternion

import PyKDL as kdl
from kdl_parser_py.urdf import treeFromParam

# The OpenManipulator DH parameters
# a1 is 0.012 rather than 0 to align with the URDF file
open_man_dh_parameters = {'a': [0.0, 0.13, 0.124, 0.07, 0.0],
                          'alpha': [-pi/2, 0, 0.0, 0, pi/2],
                          'd': [0.075, 0.0, 0.0, 0.0, 0],
                          'theta': [0, -1.385, 1.385, 0, 0]}


# The the OpenManKinematic class provides the functionality to broadcast transforms using
# both the robot description URDF kinematic parser as well as manually defining with DH.
# Both methods will use KDL to solve the forward kinematics.
class OpenManKinematic:
    def __init__(self, kdl_kine_chain, tf_suffix):
        # Initialize dh parameters
        self.dh_params = open_man_dh_parameters.copy()

        # Set class inputs
        self.kine_chain = kdl_kine_chain
        self.tf_suffix = tf_suffix # A string used while broadcasting to differenciate between DH or URDF sources
        # Setup transform broadcaster and joint states subscriber
        self.br = TransformBroadcaster()
        self.sub = rospy.Subscriber('/joint_states', JointState, self.fkine_wrapper)

        # FK KDL solver
        self.fk_solver = kdl.ChainFkSolverPos_recursive(self.kine_chain)

    # This function takes in joint readings, converts to appropriate KDL types
    # then calls the FK solver to get the transformation
    def forward_kinematics(self, joints_readings):
        # Convert joint readings to KDL JntArray
        joints_kdl = self.list_to_kdl_jnt_array(joints_readings)
        pose_kdl = kdl.Frame()
        self.fk_solver.JntToCart(joints_kdl, pose_kdl)
        # Convert KDL Pose to array
        pose = self.convert_kdl_frame_to_mat(pose_kdl)
        return pose

    # This function is a callback for the subscriber for joint_states.
    # The transformation is computed with forward kinematics then the transform is broadcasted.
    def fkine_wrapper(self, joint_msg):
        transform = TransformStamped()

        T0ee = self.forward_kinematics(joint_msg.position)

        # Here we define the transform from joint frame 0 to joint frame 1 using the tf2 broadcaster.
        # define the transform timestamp
        transform.header.stamp = rospy.Time.now()
        # define the transform header frame (parent frame)
        transform.header.frame_id = 'link1'
        # define the transform child frame
        transform.child_frame_id = self.tf_suffix + '_link'
        # populate the transform field. It consists of translation and rotation.
        transform.transform.translation.x = T0ee[0, 3]
        transform.transform.translation.y = T0ee[1, 3]
        transform.transform.translation.z = T0ee[2, 3]
        transform.transform.rotation = self.rotmat2q(T0ee)

        # broadcast the transform to tf2
        self.br.sendTransform(transform)

    @staticmethod
    def rotmat2q(T):
        # function that transforms a rotation matrix to quaternion representation
        q = Quaternion()
        angle = np.arccos((T[0, 0] + T[1, 1] + T[2, 2] - 1) / 2)
        if (angle == 0):
            q.w = 1
            q.x = 0
            q.y = 0
            q.z = 0
        else:
            xr = T[2, 1] - T[1, 2]
            yr = T[0, 2] - T[2, 0]
            zr = T[1, 0] - T[0, 1]

            x = xr / np.sqrt(np.power(xr, 2) + np.power(yr, 2) + np.power(zr, 2))
            y = yr / np.sqrt(np.power(xr, 2) + np.power(yr, 2) + np.power(zr, 2))
            z = zr / np.sqrt(np.power(xr, 2) + np.power(yr, 2) + np.power(zr, 2))

            q.w = np.cos(angle / 2)
            q.x = x * np.sin(angle / 2)
            q.y = y * np.sin(angle / 2)
            q.z = z * np.sin(angle / 2)
        return q
    
    @staticmethod
    def convert_kdl_frame_to_mat(frame):
        # Helper function to convert kdl frames to numpy arrays
        mat = np.identity(4)
        mat[:3, -1] = np.array([frame.p.x(), frame.p.y(), frame.p.z()])
        mat[:3, :3] = np.array([[frame.M[0, 0], frame.M[0, 1], frame.M[0, 2]],
                               [frame.M[1, 0], frame.M[1, 1], frame.M[1, 2]],
                               [frame.M[2, 0], frame.M[2, 1], frame.M[2, 2]]])
        return mat

    @staticmethod
    def list_to_kdl_jnt_array(joints):
        # Helper function to convert joint list to kdl array
        kdl_array = kdl.JntArray(5)
        for i in range(0, 5):
            kdl_array[i] = joints[i]
        return kdl_array


# Create a KDL kinematic chain with the URDF files (parameter from robot description).
def kine_chain_urdf():
    # Load DH parameters directly from URDF file (see launch file for robot description)
    # The robot description is loaded in the ros launch file
    (ok, kine_tree) = treeFromParam("robot_description")
    kine_chain = kine_tree.getChain("link1", "grip_link")
    return kine_chain


# Create a KDL kinematic chain with dh parameters
def kine_chain_dh(dh_params):
    kine_chain = kdl.Chain()
    # Iterate through joints and create the kinematic chain
    for i in range(0, 5):
        kine_chain.addSegment(kdl.Segment(kdl.Joint(kdl.Vector(), kdl.Vector(0,0,1), kdl.Joint.RotAxis), # Define the rotational axis of the joint, but you can do the same using your DH parameters
                                          kdl.Frame().DH(dh_params['a'][i],
                                                         dh_params['alpha'][i],
                                                         dh_params['d'][i],
                                                         dh_params['theta'][i])))
    return kine_chain


def main():
    rospy.init_node('open_KDL_forward_kinematic_node')
    # Create kinematic chain and create KDL kinematic object for OpenManipulator
    urdf_chain = kine_chain_urdf()
    urdf_fk = OpenManKinematic(urdf_chain, 'urdf')

    dh_chain = kine_chain_dh(open_man_dh_parameters)
    dh_fk = OpenManKinematic(dh_chain, 'dh')

    rospy.spin()


if __name__ == '__main__':
    try:
        main()
    except rospy.ROSInterruptException:
        pass
