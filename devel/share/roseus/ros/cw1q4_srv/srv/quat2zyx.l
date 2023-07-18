;; Auto-generated. Do not edit!


(when (boundp 'cw1q4_srv::quat2zyx)
  (if (not (find-package "CW1Q4_SRV"))
    (make-package "CW1Q4_SRV"))
  (shadow 'quat2zyx (find-package "CW1Q4_SRV")))
(unless (find-package "CW1Q4_SRV::QUAT2ZYX")
  (make-package "CW1Q4_SRV::QUAT2ZYX"))
(unless (find-package "CW1Q4_SRV::QUAT2ZYXREQUEST")
  (make-package "CW1Q4_SRV::QUAT2ZYXREQUEST"))
(unless (find-package "CW1Q4_SRV::QUAT2ZYXRESPONSE")
  (make-package "CW1Q4_SRV::QUAT2ZYXRESPONSE"))

(in-package "ROS")





(defclass cw1q4_srv::quat2zyxRequest
  :super ros::object
  :slots ())

(defmethod cw1q4_srv::quat2zyxRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass cw1q4_srv::quat2zyxResponse
  :super ros::object
  :slots ())

(defmethod cw1q4_srv::quat2zyxResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass cw1q4_srv::quat2zyx
  :super ros::object
  :slots ())

(setf (get cw1q4_srv::quat2zyx :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get cw1q4_srv::quat2zyx :datatype-) "cw1q4_srv/quat2zyx")
(setf (get cw1q4_srv::quat2zyx :request) cw1q4_srv::quat2zyxRequest)
(setf (get cw1q4_srv::quat2zyx :response) cw1q4_srv::quat2zyxResponse)

(defmethod cw1q4_srv::quat2zyxRequest
  (:response () (instance cw1q4_srv::quat2zyxResponse :init)))

(setf (get cw1q4_srv::quat2zyxRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get cw1q4_srv::quat2zyxRequest :datatype-) "cw1q4_srv/quat2zyxRequest")
(setf (get cw1q4_srv::quat2zyxRequest :definition-)
      "
---


")

(setf (get cw1q4_srv::quat2zyxResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get cw1q4_srv::quat2zyxResponse :datatype-) "cw1q4_srv/quat2zyxResponse")
(setf (get cw1q4_srv::quat2zyxResponse :definition-)
      "
---


")



(provide :cw1q4_srv/quat2zyx "d41d8cd98f00b204e9800998ecf8427e")


