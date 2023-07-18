;; Auto-generated. Do not edit!


(when (boundp 'cw1q4_srv::quat2rodrigues)
  (if (not (find-package "CW1Q4_SRV"))
    (make-package "CW1Q4_SRV"))
  (shadow 'quat2rodrigues (find-package "CW1Q4_SRV")))
(unless (find-package "CW1Q4_SRV::QUAT2RODRIGUES")
  (make-package "CW1Q4_SRV::QUAT2RODRIGUES"))
(unless (find-package "CW1Q4_SRV::QUAT2RODRIGUESREQUEST")
  (make-package "CW1Q4_SRV::QUAT2RODRIGUESREQUEST"))
(unless (find-package "CW1Q4_SRV::QUAT2RODRIGUESRESPONSE")
  (make-package "CW1Q4_SRV::QUAT2RODRIGUESRESPONSE"))

(in-package "ROS")





(defclass cw1q4_srv::quat2rodriguesRequest
  :super ros::object
  :slots ())

(defmethod cw1q4_srv::quat2rodriguesRequest
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

(defclass cw1q4_srv::quat2rodriguesResponse
  :super ros::object
  :slots ())

(defmethod cw1q4_srv::quat2rodriguesResponse
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

(defclass cw1q4_srv::quat2rodrigues
  :super ros::object
  :slots ())

(setf (get cw1q4_srv::quat2rodrigues :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get cw1q4_srv::quat2rodrigues :datatype-) "cw1q4_srv/quat2rodrigues")
(setf (get cw1q4_srv::quat2rodrigues :request) cw1q4_srv::quat2rodriguesRequest)
(setf (get cw1q4_srv::quat2rodrigues :response) cw1q4_srv::quat2rodriguesResponse)

(defmethod cw1q4_srv::quat2rodriguesRequest
  (:response () (instance cw1q4_srv::quat2rodriguesResponse :init)))

(setf (get cw1q4_srv::quat2rodriguesRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get cw1q4_srv::quat2rodriguesRequest :datatype-) "cw1q4_srv/quat2rodriguesRequest")
(setf (get cw1q4_srv::quat2rodriguesRequest :definition-)
      "
---


")

(setf (get cw1q4_srv::quat2rodriguesResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get cw1q4_srv::quat2rodriguesResponse :datatype-) "cw1q4_srv/quat2rodriguesResponse")
(setf (get cw1q4_srv::quat2rodriguesResponse :definition-)
      "
---


")



(provide :cw1q4_srv/quat2rodrigues "d41d8cd98f00b204e9800998ecf8427e")


