;; Auto-generated. Do not edit!


(when (boundp 'lab03_task::rotmat2quat)
  (if (not (find-package "LAB03_TASK"))
    (make-package "LAB03_TASK"))
  (shadow 'rotmat2quat (find-package "LAB03_TASK")))
(unless (find-package "LAB03_TASK::ROTMAT2QUAT")
  (make-package "LAB03_TASK::ROTMAT2QUAT"))
(unless (find-package "LAB03_TASK::ROTMAT2QUATREQUEST")
  (make-package "LAB03_TASK::ROTMAT2QUATREQUEST"))
(unless (find-package "LAB03_TASK::ROTMAT2QUATRESPONSE")
  (make-package "LAB03_TASK::ROTMAT2QUATRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass lab03_task::rotmat2quatRequest
  :super ros::object
  :slots (_R ))

(defmethod lab03_task::rotmat2quatRequest
  (:init
   (&key
    ((:R __R) (instance std_msgs::Float64MultiArray :init))
    )
   (send-super :init)
   (setq _R __R)
   self)
  (:R
   (&rest __R)
   (if (keywordp (car __R))
       (send* _R __R)
     (progn
       (if __R (setq _R (car __R)))
       _R)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64MultiArray _R
    (send _R :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64MultiArray _R
       (send _R :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64MultiArray _R
     (send _R :deserialize buf ptr-) (incf ptr- (send _R :serialization-length))
   ;;
   self)
  )

(defclass lab03_task::rotmat2quatResponse
  :super ros::object
  :slots (_q ))

(defmethod lab03_task::rotmat2quatResponse
  (:init
   (&key
    ((:q __q) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _q __q)
   self)
  (:q
   (&rest __q)
   (if (keywordp (car __q))
       (send* _q __q)
     (progn
       (if __q (setq _q (car __q)))
       _q)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Quaternion _q
    (send _q :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Quaternion _q
       (send _q :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Quaternion _q
     (send _q :deserialize buf ptr-) (incf ptr- (send _q :serialization-length))
   ;;
   self)
  )

(defclass lab03_task::rotmat2quat
  :super ros::object
  :slots ())

(setf (get lab03_task::rotmat2quat :md5sum-) "ba65a11ccca794afa870de4e5dad99f0")
(setf (get lab03_task::rotmat2quat :datatype-) "lab03_task/rotmat2quat")
(setf (get lab03_task::rotmat2quat :request) lab03_task::rotmat2quatRequest)
(setf (get lab03_task::rotmat2quat :response) lab03_task::rotmat2quatResponse)

(defmethod lab03_task::rotmat2quatRequest
  (:response () (instance lab03_task::rotmat2quatResponse :init)))

(setf (get lab03_task::rotmat2quatRequest :md5sum-) "ba65a11ccca794afa870de4e5dad99f0")
(setf (get lab03_task::rotmat2quatRequest :datatype-) "lab03_task/rotmat2quatRequest")
(setf (get lab03_task::rotmat2quatRequest :definition-)
      "std_msgs/Float64MultiArray R

================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
---
geometry_msgs/Quaternion q


================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get lab03_task::rotmat2quatResponse :md5sum-) "ba65a11ccca794afa870de4e5dad99f0")
(setf (get lab03_task::rotmat2quatResponse :datatype-) "lab03_task/rotmat2quatResponse")
(setf (get lab03_task::rotmat2quatResponse :definition-)
      "std_msgs/Float64MultiArray R

================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = \"height\"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = \"width\"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = \"channel\"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
---
geometry_msgs/Quaternion q


================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :lab03_task/rotmat2quat "ba65a11ccca794afa870de4e5dad99f0")


