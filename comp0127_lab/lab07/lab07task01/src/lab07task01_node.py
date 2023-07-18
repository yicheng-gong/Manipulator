#!/usr/bin/env python3
import numpy as np
import rospy
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
from cw2q4.youbotKineKDL import YoubotKinematicKDL
from visualization_msgs.msg import Marker

# Lab07Task01: Publishing a joint trajectory and CW2 Q6 Primer
# In this lab, the task is to complete the youbot_traj function. You are given hardcoded_joint_targets. The tasks are as
# follows.
# 1. Load the hardcoded_joint_targets into a numpy array
# 2. Compute the Cartesian checkpoints of the given joint_targets
# 3. Publish the checkpoints using the publish_checkpoints function
# 4. Publish a joint trajectory message with the joint targets. The youbot should then go to each checkpoint

def youbot_traj():
    rospy.init_node('lab07_youbot_traj')
    kdl_youbot = YoubotKinematicKDL()
    rospy.sleep(2.0)

    # Create trajectory publisher and a checkpoint publisher to visualize checkpoints
    traj_pub = rospy.Publisher('/EffortJointInterface_trajectory_controller/command', JointTrajectory, queue_size=5)
    checkpoint_pub = rospy.Publisher("checkpoint_positions", Marker, queue_size=20)

    # Joint values
    
    hardcoded_joint_targets = [[ 0.00000000e+00,  0.00000000e+00,  0.00000000e+00, 0.00000000e+00,  0.00000000e+00],
       [-1.13156987e+00,  1.66335734e-01, -3.10878292e-01, 1.80746870e-01, -1.26110299e-18],
       [-1.91532539e+00,  2.68854965e-01, -7.33638621e-01, 3.98535159e-01, -1.82181776e-17],
       ]
    # [-2.13661110e+00,  3.76165604e-01, -1.24361937e+00,
    #      7.42572567e-01, -1.32824117e-17],
    # [-2.22897480e+00,  5.81496708e-01, -2.02404013e+00,
    #      1.37341299e+00, -1.54993117e-17],
    # [-2.14303316e+00,  5.68198327e-01, -1.90336467e+00,
    #      1.31110540e+00, -1.38333654e-17],
    # [-2.02097949e+00,  5.65726332e-01, -1.82081498e+00,
    #      1.28179421e+00, -1.61794357e-17],
    # [-1.84125722e+00,  5.72337123e-01, -1.76944862e+00,
    #      1.27231893e+00, -1.75394018e-17],
    # [-1.57470243e+00,  5.85945669e-01, -1.74755418e+00,
    #      1.27518037e+00, -1.31308170e-17],
    # [-2.44954196e+00,  5.29259529e-01, -1.41863859e+00,
    #      1.25715389e+00, -9.52808849e-18],
    # [-1.75608258e+00,  5.94339529e-01, -1.30632438e+00,
    #      1.29563584e+00, -1.74868357e-17],
    # [-1.71675252e+00,  7.62551509e-01, -1.33023980e+00,
    #      1.33567390e+00, -1.64875607e-17],
    # [-1.70282943e+00,  1.02280176e+00, -1.48916621e+00,
    #      1.36903221e+00, -1.68608449e-17],
    # [-1.69030037e+00,  1.11804592e+00, -1.59349293e+00,
    #      1.38039008e+00, -1.72496595e-17],
    # [-1.67924005e+00,  1.22277692e+00, -1.71888089e+00,
    #      1.40018067e+00, -1.69361831e-17],
    # [-1.66940679e+00,  1.34166204e+00, -1.87740867e+00,
    #      1.43703349e+00, -1.69202280e-17],
    # [-1.66060874e+00,  1.48610551e+00, -2.10119233e+00,
    #      1.51707413e+00, -1.66285444e-17]
    joint_targets = np.zeros((5, len(hardcoded_joint_targets)), dtype=float)

    # Given the hardcoded_joint_targets, load the joint targets into the numpy array variable joint_targets. Although
    # this is a somewhat unnecessary step, the template given in CW2 Q6 load_targets, loads the joint targets and
    # Cartesian checkpoints in this same way,
    # your code starts here ------------------------------
    # joint_targets = hardcoded_joint_targets.T
    for i in range(joint_targets.shape[1]):
        joint_targets[:, i] = hardcoded_joint_targets[i]

    # your code ends here ------------------------------

    # Compute the forward kinematics using KDL and publish the Cartesian positions of these checkpoints. The publish
    # checkpoint method needs the transformation matrix.
    # your code starts here ------------------------------
        
    checkpoint = np.zeros([4, 4, joint_targets.shape[1]])
    for i in range(joint_targets.shape[1]):
        checkpoint[:, :, i] = kdl_youbot.forward_kinematics(list(joint_targets[:, i]))

   # your code ends here ------------------------------

    rospy.sleep(2.0)

    # Call the publish_checkpoints function to publish the found Cartesian positions of the loaded joints
    # your code starts here ------------------------------

    publish_checkpoints(checkpoint_pub, checkpoint)

    # your code ends here ------------------------------

    # Create a trajectory message and publish to get the robot to move to this checkpoints
    traj = JointTrajectory()
    # your code starts here ------------------------------

    t = 10
    dt = 2
    for i in range(joint_targets.shape[1]):
        traj_point = JointTrajectoryPoint()
        traj_point.positions = joint_targets[:, i]
        t = t + dt
        traj_point.time_from_start.secs = t
        traj.points.append(traj_point)
    
    traj.header.stamp = rospy.Time.now()
    traj.joint_names = ["arm_joint_1", "arm_joint_2", "arm_joint_3", "arm_joint_4", "arm_joint_5"]
    traj_pub.publish(traj)

    # your code ends here ------------------------------

def publish_checkpoints(checkpoint_pub, tfs):
    """This function gets a np.ndarray of transforms and publishes them in a color coded fashion to show how the
    Cartesian path of the robot end-effector.
    Args:
        tfs (np.ndarray): A array of 4x4xn homogenous transformations specifying the end-effector trajectory.
    """
    id = 0
    for i in range(0, tfs.shape[2]):
        marker = Marker()
        marker.id = id
        id += 1
        marker.header.frame_id = 'base_link'
        marker.header.stamp = rospy.Time.now()
        marker.type = marker.SPHERE
        marker.action = marker.ADD
        marker.scale.x = 0.01
        marker.scale.y = 0.01
        marker.scale.z = 0.01
        marker.color.a = 1.0
        marker.color.b = 0.0
        marker.color.g = 0.0 + id * 0.05
        marker.color.r = 1.0 - id * 0.05
        marker.pose.orientation.w = 1.0
        marker.pose.position.x = tfs[0, -1, i]
        marker.pose.position.y = tfs[1, -1, i]
        marker.pose.position.z = tfs[2, -1, i]
        checkpoint_pub.publish(marker)

if __name__ == '__main__':
    try:
        youbot_traj()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass

