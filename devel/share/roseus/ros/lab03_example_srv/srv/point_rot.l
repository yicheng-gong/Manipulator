;; Auto-generated. Do not edit!


(when (boundp 'lab03_example_srv::point_rot)
  (if (not (find-package "LAB03_EXAMPLE_SRV"))
    (make-package "LAB03_EXAMPLE_SRV"))
  (shadow 'point_rot (find-package "LAB03_EXAMPLE_SRV")))
(unless (find-package "LAB03_EXAMPLE_SRV::POINT_ROT")
  (make-package "LAB03_EXAMPLE_SRV::POINT_ROT"))
(unless (find-package "LAB03_EXAMPLE_SRV::POINT_ROTREQUEST")
  (make-package "LAB03_EXAMPLE_SRV::POINT_ROTREQUEST"))
(unless (find-package "LAB03_EXAMPLE_SRV::POINT_ROTRESPONSE")
  (make-package "LAB03_EXAMPLE_SRV::POINT_ROTRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass lab03_example_srv::point_rotRequest
  :super ros::object
  :slots (_q _p ))

(defmethod lab03_example_srv::point_rotRequest
  (:init
   (&key
    ((:q __q) (instance geometry_msgs::Quaternion :init))
    ((:p __p) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _q __q)
   (setq _p __p)
   self)
  (:q
   (&rest __q)
   (if (keywordp (car __q))
       (send* _q __q)
     (progn
       (if __q (setq _q (car __q)))
       _q)))
  (:p
   (&rest __p)
   (if (keywordp (car __p))
       (send* _p __p)
     (progn
       (if __p (setq _p (car __p)))
       _p)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Quaternion _q
    (send _q :serialization-length)
    ;; geometry_msgs/Point _p
    (send _p :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Quaternion _q
       (send _q :serialize s)
     ;; geometry_msgs/Point _p
       (send _p :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Quaternion _q
     (send _q :deserialize buf ptr-) (incf ptr- (send _q :serialization-length))
   ;; geometry_msgs/Point _p
     (send _p :deserialize buf ptr-) (incf ptr- (send _p :serialization-length))
   ;;
   self)
  )

(defclass lab03_example_srv::point_rotResponse
  :super ros::object
  :slots (_out_p ))

(defmethod lab03_example_srv::point_rotResponse
  (:init
   (&key
    ((:out_p __out_p) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _out_p __out_p)
   self)
  (:out_p
   (&rest __out_p)
   (if (keywordp (car __out_p))
       (send* _out_p __out_p)
     (progn
       (if __out_p (setq _out_p (car __out_p)))
       _out_p)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _out_p
    (send _out_p :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _out_p
       (send _out_p :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _out_p
     (send _out_p :deserialize buf ptr-) (incf ptr- (send _out_p :serialization-length))
   ;;
   self)
  )

(defclass lab03_example_srv::point_rot
  :super ros::object
  :slots ())

(setf (get lab03_example_srv::point_rot :md5sum-) "ba189fd216bf80200d5f8fd950cfe767")
(setf (get lab03_example_srv::point_rot :datatype-) "lab03_example_srv/point_rot")
(setf (get lab03_example_srv::point_rot :request) lab03_example_srv::point_rotRequest)
(setf (get lab03_example_srv::point_rot :response) lab03_example_srv::point_rotResponse)

(defmethod lab03_example_srv::point_rotRequest
  (:response () (instance lab03_example_srv::point_rotResponse :init)))

(setf (get lab03_example_srv::point_rotRequest :md5sum-) "ba189fd216bf80200d5f8fd950cfe767")
(setf (get lab03_example_srv::point_rotRequest :datatype-) "lab03_example_srv/point_rotRequest")
(setf (get lab03_example_srv::point_rotRequest :definition-)
      "geometry_msgs/Quaternion q
geometry_msgs/Point p

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/Point out_p

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get lab03_example_srv::point_rotResponse :md5sum-) "ba189fd216bf80200d5f8fd950cfe767")
(setf (get lab03_example_srv::point_rotResponse :datatype-) "lab03_example_srv/point_rotResponse")
(setf (get lab03_example_srv::point_rotResponse :definition-)
      "geometry_msgs/Quaternion q
geometry_msgs/Point p

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/Point out_p

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :lab03_example_srv/point_rot "ba189fd216bf80200d5f8fd950cfe767")


