;; Auto-generated. Do not edit!


(when (boundp 'lab03_example_msg::test_msg)
  (if (not (find-package "LAB03_EXAMPLE_MSG"))
    (make-package "LAB03_EXAMPLE_MSG"))
  (shadow 'test_msg (find-package "LAB03_EXAMPLE_MSG")))
(unless (find-package "LAB03_EXAMPLE_MSG::TEST_MSG")
  (make-package "LAB03_EXAMPLE_MSG::TEST_MSG"))

(in-package "ROS")
;;//! \htmlinclude test_msg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lab03_example_msg::test_msg
  :super ros::object
  :slots (_rotx _roty _rotz ))

(defmethod lab03_example_msg::test_msg
  (:init
   (&key
    ((:rotx __rotx) (instance std_msgs::Float64 :init))
    ((:roty __roty) (instance std_msgs::Float64 :init))
    ((:rotz __rotz) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _rotx __rotx)
   (setq _roty __roty)
   (setq _rotz __rotz)
   self)
  (:rotx
   (&rest __rotx)
   (if (keywordp (car __rotx))
       (send* _rotx __rotx)
     (progn
       (if __rotx (setq _rotx (car __rotx)))
       _rotx)))
  (:roty
   (&rest __roty)
   (if (keywordp (car __roty))
       (send* _roty __roty)
     (progn
       (if __roty (setq _roty (car __roty)))
       _roty)))
  (:rotz
   (&rest __rotz)
   (if (keywordp (car __rotz))
       (send* _rotz __rotz)
     (progn
       (if __rotz (setq _rotz (car __rotz)))
       _rotz)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _rotx
    (send _rotx :serialization-length)
    ;; std_msgs/Float64 _roty
    (send _roty :serialization-length)
    ;; std_msgs/Float64 _rotz
    (send _rotz :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _rotx
       (send _rotx :serialize s)
     ;; std_msgs/Float64 _roty
       (send _roty :serialize s)
     ;; std_msgs/Float64 _rotz
       (send _rotz :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _rotx
     (send _rotx :deserialize buf ptr-) (incf ptr- (send _rotx :serialization-length))
   ;; std_msgs/Float64 _roty
     (send _roty :deserialize buf ptr-) (incf ptr- (send _roty :serialization-length))
   ;; std_msgs/Float64 _rotz
     (send _rotz :deserialize buf ptr-) (incf ptr- (send _rotz :serialization-length))
   ;;
   self)
  )

(setf (get lab03_example_msg::test_msg :md5sum-) "1a848a7384d8bb575b0a921bed0b0de3")
(setf (get lab03_example_msg::test_msg :datatype-) "lab03_example_msg/test_msg")
(setf (get lab03_example_msg::test_msg :definition-)
      "std_msgs/Float64 rotx
std_msgs/Float64 roty
std_msgs/Float64 rotz

================================================================================
MSG: std_msgs/Float64
float64 data
")



(provide :lab03_example_msg/test_msg "1a848a7384d8bb575b0a921bed0b0de3")


