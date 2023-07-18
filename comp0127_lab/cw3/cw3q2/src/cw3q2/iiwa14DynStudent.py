#!/usr/bin/env python3

import numpy as np
from cw3q2.iiwa14DynBase import Iiwa14DynamicBase


class Iiwa14DynamicRef(Iiwa14DynamicBase):
    def __init__(self):
        super(Iiwa14DynamicRef, self).__init__(tf_suffix='ref')

    def forward_kinematics(self, joints_readings, up_to_joint=7):
        """This function solve forward kinematics by multiplying frame transformation up until a specified
        joint. Reference Lecture 9 slide 13.
        Args:
            joints_readings (list): the state of the robot joints.
            up_to_joint (int, optional): Specify up to what frame you want to compute forward kinematics.
                Defaults to 7.
        Returns:
            np.ndarray The output is a numpy 4*4 matrix describing the transformation from the 'iiwa_link_0' frame to
            the selected joint frame.
        """

        assert isinstance(joints_readings, list), "joint readings of type " + str(type(joints_readings))
        assert isinstance(up_to_joint, int)

        T = np.identity(4)
        # iiwa base offset
        T[2, 3] = 0.1575

        # 1. Recall the order from lectures. T_rot_z * T_trans * T_rot_x * T_rot_y. You are given the location of each
        # joint with translation_vec, X_alpha, Y_alpha, Z_alpha. Also available are function T_rotationX, T_rotation_Y,
        # T_rotation_Z, T_translation for rotation and translation matrices.
        # 2. Use a for loop to compute the final transformation.
        for i in range(0, up_to_joint):
            T = T.dot(self.T_rotationZ(joints_readings[i]))
            T = T.dot(self.T_translation(self.translation_vec[i, :]))
            T = T.dot(self.T_rotationX(self.X_alpha[i]))
            T = T.dot(self.T_rotationY(self.Y_alpha[i]))

        assert isinstance(T, np.ndarray), "Output wasn't of type ndarray"
        assert T.shape == (4, 4), "Output had wrong dimensions"

        return T

    def get_jacobian_centre_of_mass(self, joint_readings, up_to_joint=7):
        """Given the joint values of the robot, compute the Jacobian matrix at the centre of mass of the link.
        Reference - Lecture 9 slide 14.

        Args:
            joint_readings (list): the state of the robot joints.
            up_to_joint (int, optional): Specify up to what frame you want to compute the Jacobian.
            Defaults to 7.

        Returns:
            jacobian (numpy.ndarray): The output is a numpy 6*7 matrix describing the Jacobian matrix defining at the
            centre of mass of a link.
        """
        assert isinstance(joint_readings, list)
        assert len(joint_readings) == 7
        # 1. Compute the forward kinematics (T matrix) for all the joints.
        # 2. Compute forward kinematics at centre of mass (T_cm) for all the joints.
        # 3. From the computed forward kinematic and forward kinematic at CoM matrices,
        # extract z, z_cm (z axis of the rotation part of T, T_cm) and o, o_cm (translation part of T, T_cm) for all links.
        # 4. Based on the computed o, o_cm, z, z_cm, fill J_p and J_o matrices up until joint 'up_to_joint'. Apply equations at slide 15, Lecture 9.
        # 5. Fill the remaining part with zeroes and return the Jacobian at CoM.

        # Your code starts here ----------------------------

        z_pre = np.array([0, 0, 1]).reshape(-1, 1)[:, -1]
        o_pre = np.zeros([3, 1])[:, -1]
        jacobian = np.zeros([6, 7])
        T_cm = self.forward_kinematics_centre_of_mass(joint_readings, up_to_joint)
        o_cm = T_cm[:3,3]          
        for i in range(up_to_joint):
            T = self.forward_kinematics(joint_readings, i + 1)
            z = T[:3,2]
            o = T[:3,3]
            Jp = np.cross(z_pre, o_cm - o_pre)
            Jo = z_pre
            z_pre, o_pre = z, o
            jacobian[:, i] = np.r_[Jp, Jo]

        # Your code ends here ------------------------------

        assert jacobian.shape == (6, 7)
        return jacobian

    def forward_kinematics_centre_of_mass(self, joints_readings, up_to_joint=7):
        """This function computes the forward kinematics up to the centre of mass for the given joint frame.
        Reference - Lecture 9 slide 14.
        Args:
            joints_readings (list): the state of the robot joints.
            up_to_joint (int, optional): Specify up to what frame you want to compute forward kinematicks.
                Defaults to 5.
        Returns:
            np.ndarray: A 4x4 homogeneous transformation matrix describing the pose of frame_{up_to_joint} for the
            centre of mass w.r.t the base of the robot.
        """
        T= np.identity(4)
        T[2, 3] = 0.1575

        T = self.forward_kinematics(joints_readings, up_to_joint-1)
        T = T.dot(self.T_rotationZ(joints_readings[up_to_joint-1]))
        T = T.dot(self.T_translation(self.link_cm[up_to_joint-1, :]))

        return T

    def get_B(self, joint_readings):
        """Given the joint positions of the robot, compute inertia matrix B.
        Args:
            joint_readings (list): The positions of the robot joints.

        Returns:
            B (numpy.ndarray): The output is a numpy 7*7 matrix describing the inertia matrix B.
        """
        B = np.zeros((7, 7))
        # Some useful steps:
        # 1. Compute the jacobian at the centre of mass from second joint to last joint
        # 2. Compute forward kinematics at centre of mass from second to last joint
        # 3. Extract the J_p and J_o matrices from the Jacobian centre of mass matrices
        # 4. Calculate the inertia tensor using the rotation part of the FK centre of masses you have calculated
        # 5. Apply the the equation from slide 16 lecture 9        
	    # Your code starts here ------------------------------

        for i in range(7):
            jacobian = self.get_jacobian_centre_of_mass(joint_readings, i + 1)
            T_cm = self.forward_kinematics_centre_of_mass(joint_readings, i + 1)
            Jp = jacobian[:3, :]
            Jo = jacobian[3:, :]
            I = self.Ixyz[i, :]
            R = T_cm[:3, :3]
            tensor = R * I.T @ R.T
            m = self.mass[i]
            B = B + m * Jp.T @ Jp + Jo.T @ tensor @ Jo
        
        # Your code ends here ------------------------------
        
        return B

    def get_C_times_qdot(self, joint_readings, joint_velocities):
        """Given the joint positions and velocities of the robot, compute Coriolis terms C.
        Args:
            joint_readings (list): The positions of the robot joints.
            joint_velocities (list): The velocities of the robot joints.

        Returns:
            C (numpy.ndarray): The output is a numpy 7*1 matrix describing the Coriolis terms C times joint velocities.
        """
        assert isinstance(joint_readings, list)
        assert len(joint_readings) == 7
        assert isinstance(joint_velocities, list)
        assert len(joint_velocities) == 7
        # Some useful steps:
        # 1. Create a h_ijk matrix (a matrix containing the Christoffel symbols) and a C matrix.
        # 2. Compute the derivative of B components for the given configuration w.r.t. joint values q. Apply equations at slide 19, Lecture 9.
        # 3. Based on the previously obtained values, fill h_ijk. Apply equations at slide 19, Lecture 9.
        # 4. Based on h_ijk, fill C. Apply equations at slide 19, Lecture 9.

        # Your code starts here ------------------------------  

        h_ijk = np.zeros([7, 7, 7])
        velovities_ijk = np.zeros([7, 7, 7])
        c_ij = np.zeros([7, 7])
        velovities_ij = np.zeros([7, 7])
        C = np.zeros(7)
        B_pre = self.get_B(joint_readings)
        interval = 1e-10
        for i in range(7):
            for j in range(7):
                for k in range(7):
                    qk = joint_readings.copy()
                    qi = joint_readings.copy()
                    qk[k] = joint_readings[k] + interval
                    qi[i] = joint_readings[i] + interval
                    B_ij = self.get_B(qk)
                    B_jk = self.get_B(qi)
                    bij = B_ij[i, j] - B_pre[i, j]
                    bjk = B_jk[j, k] - B_pre[j, k]
                    h_ijk[i, j, k] = bij / interval - 0.5 * (bjk / interval)
                    velovities_ijk[i, j, k] = h_ijk[i, j, k] * joint_velocities[k]
                c_ij[i, j] = np.sum(velovities_ijk[i, j, :])
                velovities_ij[i, j] = c_ij[i, j] * joint_velocities[j]
            C[i] = np.sum(velovities_ij[i, :])

        # Your code ends here ------------------------------

        assert isinstance(C, np.ndarray)
        assert C.shape == (7,)
        return C

    def get_G(self, joint_readings):
        """Given the joint positions of the robot, compute the gravity matrix g.
        Args:
            joint_readings (list): The positions of the robot joints.

        Returns:
            g (numpy.ndarray): The output is a numpy 7*1 numpy array describing the gravity matrix g.
        """
        assert isinstance(joint_readings, list)
        assert len(joint_readings) == 7
        # Some useful steps:
        # 1. Compute the Jacobian at CoM for all joints.
        # 2. Use the computed J_cm to fill the G matrix. This method is actually different from what seen in the lectures.
        # 3. Alternatvely, you can compute the P matrix and use it to fill the G matrix based on formulas presented at slides 17 and 22, Lecture 9.
        # Your code starts here ------------------------------

        g0 = np.array([0, 0, -self.g])
        jacobian = []
        for i in range(7):
            jacobian.append(self.get_jacobian_centre_of_mass(joint_readings, i + 1))
        
        g = np.zeros(7)
        for i in range(7):
            g_i = np.zeros(7)
            for j in range(7):
                m = self.mass[j]
                Jp = jacobian[j][:3, i]
                g_i[j] = -m * g0 @ Jp
            g[i] = np.sum(g_i)

        # Your code ends here ------------------------------

        assert isinstance(g, np.ndarray)
        assert g.shape == (7,)
        return g
