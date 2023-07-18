#!/usr/bin/env python3
##TODO: Implement your cw3q5 coding solution here.
import numpy as np
import rospy
from sensor_msgs.msg import JointState
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
import rosbag
import rospkg
import matplotlib.pyplot as plt
from cw3q2.iiwa14DynKDL import Iiwa14DynamicKDL
from cw3q2.iiwa14DynStudent import Iiwa14DynamicRef


class Iiwa14KDLDynamic:
    def __init__(self):
        # Set KDL
        self.kdl_Iiwa14 = Iiwa14DynamicKDL()

        # Set current joint position
        self.current_joint_position = np.zeros(7)
        self.current_joint_velocity = np.zeros(7)
        self.current_joint_accelerations = np.zeros(7)
        self.current_effort = []
        self.current_t = 0

        # Set data subs from subscriber
        self.joint_position_data = []
        self.joint_velocities_data = []
        self.time_data = []
        self.effort_data = []
        self.previous_joint_position=[[0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0]]
        self.previous_t = [0]

        # Setup joint states subscriber
        self.sub_dynamics = rospy.Subscriber('/iiwa/joint_states', JointState, self.get_data_from_subscriber, queue_size=5)

        # Create trajectory publisher
        self.traj_pub = rospy.Publisher('/iiwa/EffortJointInterface_trajectory_controller/command', JointTrajectory, queue_size=5)
    
    def run(self):
        print("run cw3q5")
        rospy.loginfo("Waiting 5 seconds for everything to load up.")
        rospy.sleep(2.0)
        self.cw3q5()
    
    def cw3q5(self):
        joint_positions, joint_velocities, joint_accelerations, effort, time = self.load_targets()
        self.publish_trajectory(joint_positions, joint_velocities, joint_accelerations, effort, time)
        while True:
            if self.time_data[-1] >= time[time.shape[0] - 1] + 7:
                break
        joint_position_sample, joint_velocities_sample, time_sample, joint_effort_sample = \
            self.sample_data_from_subscriber(self.joint_position_data, self.time_data, self.effort_data)
        ddot_q = self.get_ddot_q(joint_position_sample, joint_velocities_sample, joint_effort_sample)
        self.plot_ddot_q(ddot_q, time_sample)
               
    
    def load_targets(self):
        # Defining ros package path
        rospack = rospkg.RosPack()
        path = rospack.get_path('cw3q5')

        # Load path for selected question
        bag = rosbag.Bag(path + '/bag/cw3q5.bag')

        # Initialize arrays for joint positions, joint velocities, joint accelerations
        joint_positions = np.zeros([7, 4])
        joint_velocities = np.zeros([7, 4])
        joint_accelerations = np.zeros([7, 4])
        effort = []
        time = []

        # get the message
        bag_message = bag.read_messages("/iiwa/EffortJointInterface_trajectory_controller/command")

        # Get the current starting position, velocities, accelerations of the robot
        joint_positions[:, 0] = self.current_joint_position
        joint_velocities[:, 0] = self.current_joint_velocity
        joint_accelerations[:, 0] = self.current_joint_accelerations
        effort.append(self.current_effort)
        time.append(self.current_t)

        # get the data from message
        topic, jointState, t = next(bag_message)
        for index, point in enumerate(jointState.points):
            joint_positions[:, index + 1] = point.positions
            joint_velocities[:, index + 1] = point.velocities
            joint_accelerations[:, index + 1] = point.accelerations
            effort.append(point.effort)
            time.append(int(point.time_from_start.to_sec()))
        
        time = np.array(time).reshape(-1)

        # Close the bag
        bag.close()

        assert isinstance(joint_positions, np.ndarray)
        assert joint_positions.shape == (7, 4)
        assert isinstance(joint_velocities, np.ndarray)
        assert joint_velocities.shape == (7, 4)
        assert isinstance(joint_accelerations, np.ndarray)
        assert joint_accelerations.shape == (7, 4)
        assert isinstance(effort, list)
        assert len(effort) == 4
        assert isinstance(time, np.ndarray)
        assert time.shape == (4,)

        return joint_positions, joint_velocities, joint_accelerations, effort, time

    def publish_trajectory(self, joint_positions, joint_velocities, joint_accelerations, effort, time):
        assert isinstance(joint_positions, np.ndarray)
        assert joint_positions.shape == (7, 4)
        assert isinstance(joint_velocities, np.ndarray)
        assert joint_velocities.shape == (7, 4)
        assert isinstance(joint_accelerations, np.ndarray)
        assert joint_accelerations.shape == (7, 4)
        assert isinstance(effort, list)
        assert len(effort) == 4
        assert isinstance(time, np.ndarray)
        assert time.shape == (4,)

        # create a JointTrajectory message
        traj = JointTrajectory()
        t0 = 5
        for i in range(joint_positions.shape[1]):
            traj_point = JointTrajectoryPoint()
            traj_point.positions = joint_positions[:, i]
            traj_point.velocities = joint_velocities[:, i]
            traj_point.accelerations = joint_accelerations[:, i]
            t = t0 + time[i]
            traj_point.time_from_start.secs = t
            traj_point.effort = effort[i]
            traj.points.append(traj_point)
        traj.header.stamp = rospy.Time.now()
        traj.joint_names = ["iiwa_joint_1", "iiwa_joint_2", "iiwa_joint_3", "iiwa_joint_4", 
                            "iiwa_joint_5", "iiwa_joint_6", "iiwa_joint_7"]
        self.traj_pub.publish(traj)

    def get_data_from_subscriber(self,msg):
        # use list to store the position, velocities, time and effort from subscriber
        self.joint_position_data.append(msg.position)
        self.joint_velocities_data.append(msg.velocity)
        self.time_data.append(msg.header.stamp.secs + msg.header.stamp.nsecs * np.power(10.0, -9))
        self.effort_data.append(msg.effort)

    def sample_data_from_subscriber(self, sub_position, sub_time, sub_effort, interval = 20):
        assert isinstance(sub_position, list)
        assert isinstance(sub_time, list)
        assert isinstance(sub_effort, list)

        # sample position, time and effort form subscriber
        sub_position = sub_position[0:len(sub_position)-1:interval]
        sub_time = sub_time[0:len(sub_time)-1:interval]
        sub_effort = sub_effort[0:len(sub_effort)-1:interval]

        # reshape position, time and effort to array
        joint_position_sample = np.array(sub_position).T
        time_sample = np.array(sub_time).reshape(-1)
        joint_effort_sample = np.array(sub_effort).T

        # calculate previous position and time
        previous_joint_position = np.array(self.previous_joint_position + sub_position).T
        previous_joint_position = previous_joint_position[:, :previous_joint_position.shape[1]-1]
        previous_time = np.array(self.previous_t + sub_time)
        previous_time = previous_time[:previous_time.shape[0]-1]

        # calculate velocity during interval
        joint_velocities_sample = (joint_position_sample - previous_joint_position) / (time_sample - previous_time)

        assert isinstance(joint_position_sample, np.ndarray)
        assert joint_position_sample.shape[0] == (7)
        assert isinstance(joint_velocities_sample, np.ndarray)
        assert joint_velocities_sample.shape[0] == (7)
        assert isinstance(joint_effort_sample, np.ndarray)
        assert joint_effort_sample.shape[0] == (7)
        assert isinstance(time_sample, np.ndarray)

        return joint_position_sample, joint_velocities_sample, time_sample, joint_effort_sample
    
    def joint_acceleration_calculation(self, joint_position_sample, joint_velocities_sample, joint_effort_sample):
        assert isinstance(joint_position_sample, np.ndarray)
        assert joint_position_sample.shape[0] == (7)
        assert isinstance(joint_velocities_sample, np.ndarray)
        assert joint_velocities_sample.shape[0] == (7)
        assert isinstance(joint_effort_sample, np.ndarray)
        assert joint_effort_sample.shape[0] == (7)

        # calculate B, C, g by using function from KDL
        B = self.kdl_Iiwa14.get_B(list(joint_position_sample))
        C = self.kdl_Iiwa14.get_C_times_qdot(list(joint_position_sample), list(joint_velocities_sample))
        g = self.kdl_Iiwa14.get_G(list(joint_position_sample))

        # reshape effort, velocities, B, C and g to array
        joint_effort_sample = np.array(joint_effort_sample).reshape(-1)
        joint_velocities_sample = np.array(joint_velocities_sample).reshape(-1) 
        B = np.array(B).reshape(7, 7)
        C = np.array(C).reshape(-1)
        g = np.array(g).reshape(-1)

        # calculate accelerations through the equation in Lecture 9 slide 26
        ddot_q = np.linalg.inv(B) @ (joint_effort_sample - C * joint_velocities_sample - g)
        ddot_q = ddot_q.reshape(-1)

        assert isinstance(ddot_q, np.ndarray)
        assert ddot_q.shape == (7,)

        return ddot_q

    def get_ddot_q(self, joint_position_sample, joint_velocities_sample, joint_effort_sample):
        assert isinstance(joint_position_sample, np.ndarray)
        assert joint_position_sample.shape[0] == (7)
        assert isinstance(joint_velocities_sample, np.ndarray)
        assert joint_velocities_sample.shape[0] == (7)
        assert isinstance(joint_effort_sample, np.ndarray)
        assert joint_effort_sample.shape[0] == (7)

        # get ddot_q for plot the accelerations
        ddot_q = []
        for i in range(joint_position_sample.shape[1]):
            ddot_q.append(self.joint_acceleration_calculation(joint_position_sample[:, i], joint_velocities_sample[:, i], joint_effort_sample[:, i]))
        ddot_q = np.array(ddot_q).T

        assert isinstance(ddot_q, np.ndarray)
        assert ddot_q.shape[0] == (7)

        return ddot_q

    def plot_ddot_q(self, ddot_q, t):
        assert isinstance(ddot_q, np.ndarray)
        assert ddot_q.shape[0] == (7)
        assert isinstance(t, np.ndarray)

        plt.figure(figsize=(20,10))

        plt.subplot(2,4,1)
        plt.plot(t, ddot_q[0,:])
        plt.xlabel('t', fontsize = 'small')
        plt.ylabel('ddot_q', fontsize = 'small')
        plt.title('joint 1', fontsize = 'small')

        plt.subplot(2,4,2)
        plt.plot(t, ddot_q[1,:])
        plt.xlabel('t', fontsize = 'small')
        plt.ylabel('ddot_q', fontsize = 'small')
        plt.title('joint 2', fontsize = 'small')

        plt.subplot(2,4,3)
        plt.plot(t, ddot_q[2,:])
        plt.xlabel('t', fontsize = 'small')
        plt.ylabel('ddot_q', fontsize = 'small')
        plt.title('joint 3', fontsize = 'small')

        plt.subplot(2,4,4)
        plt.plot(t, ddot_q[3,:])
        plt.xlabel('t', fontsize = 'small')
        plt.ylabel('ddot_q', fontsize = 'small')
        plt.title('joint 4', fontsize = 'small')

        plt.subplot(2,4,5)
        plt.plot(t, ddot_q[4,:])
        plt.xlabel('t', fontsize = 'small')
        plt.ylabel('ddot_q', fontsize = 'small')
        plt.title('joint 5', fontsize = 'small')

        plt.subplot(2,4,6)
        plt.plot(t, ddot_q[5,:])
        plt.xlabel('t', fontsize = 'small')
        plt.ylabel('ddot_q', fontsize = 'small')
        plt.title('joint 6', fontsize = 'small')

        plt.subplot(2,4,7)
        plt.plot(t, ddot_q[6,:])
        plt.xlabel('t', fontsize = 'small')
        plt.ylabel('ddot_q', fontsize = 'small')
        plt.title('joint 7', fontsize = 'small')

        plt.subplot(2,4,8)
        plt.plot(t, ddot_q[0,:],label='joint 1')
        plt.plot(t, ddot_q[1,:],label='joint 2')
        plt.plot(t, ddot_q[2,:],label='joint 3')
        plt.plot(t, ddot_q[3,:],label='joint 4')
        plt.plot(t, ddot_q[4,:],label='joint 5')
        plt.plot(t, ddot_q[5,:],label='joint 6')
        plt.plot(t, ddot_q[6,:],label='joint 7')
        plt.xlabel('t', fontsize = 'small')
        plt.ylabel('ddot_q', fontsize = 'small')
        plt.legend(loc = 'lower left')
        plt.title('all joints', fontsize = 'small')

        plt.show()


if __name__ == '__main__':
    try:
        rospy.init_node('cw3q5', anonymous=True)
        iiwa14 = Iiwa14KDLDynamic()
        iiwa14.run()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
