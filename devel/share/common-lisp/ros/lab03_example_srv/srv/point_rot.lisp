; Auto-generated. Do not edit!


(cl:in-package lab03_example_srv-srv)


;//! \htmlinclude point_rot-request.msg.html

(cl:defclass <point_rot-request> (roslisp-msg-protocol:ros-message)
  ((q
    :reader q
    :initarg :q
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (p
    :reader p
    :initarg :p
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass point_rot-request (<point_rot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <point_rot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'point_rot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab03_example_srv-srv:<point_rot-request> is deprecated: use lab03_example_srv-srv:point_rot-request instead.")))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <point_rot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab03_example_srv-srv:q-val is deprecated.  Use lab03_example_srv-srv:q instead.")
  (q m))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <point_rot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab03_example_srv-srv:p-val is deprecated.  Use lab03_example_srv-srv:p instead.")
  (p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <point_rot-request>) ostream)
  "Serializes a message object of type '<point_rot-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'q) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'p) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <point_rot-request>) istream)
  "Deserializes a message object of type '<point_rot-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'q) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'p) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<point_rot-request>)))
  "Returns string type for a service object of type '<point_rot-request>"
  "lab03_example_srv/point_rotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'point_rot-request)))
  "Returns string type for a service object of type 'point_rot-request"
  "lab03_example_srv/point_rotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<point_rot-request>)))
  "Returns md5sum for a message object of type '<point_rot-request>"
  "ba189fd216bf80200d5f8fd950cfe767")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'point_rot-request)))
  "Returns md5sum for a message object of type 'point_rot-request"
  "ba189fd216bf80200d5f8fd950cfe767")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<point_rot-request>)))
  "Returns full string definition for message of type '<point_rot-request>"
  (cl:format cl:nil "geometry_msgs/Quaternion q~%geometry_msgs/Point p~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'point_rot-request)))
  "Returns full string definition for message of type 'point_rot-request"
  (cl:format cl:nil "geometry_msgs/Quaternion q~%geometry_msgs/Point p~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <point_rot-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'q))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'p))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <point_rot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'point_rot-request
    (cl:cons ':q (q msg))
    (cl:cons ':p (p msg))
))
;//! \htmlinclude point_rot-response.msg.html

(cl:defclass <point_rot-response> (roslisp-msg-protocol:ros-message)
  ((out_p
    :reader out_p
    :initarg :out_p
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass point_rot-response (<point_rot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <point_rot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'point_rot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab03_example_srv-srv:<point_rot-response> is deprecated: use lab03_example_srv-srv:point_rot-response instead.")))

(cl:ensure-generic-function 'out_p-val :lambda-list '(m))
(cl:defmethod out_p-val ((m <point_rot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab03_example_srv-srv:out_p-val is deprecated.  Use lab03_example_srv-srv:out_p instead.")
  (out_p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <point_rot-response>) ostream)
  "Serializes a message object of type '<point_rot-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'out_p) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <point_rot-response>) istream)
  "Deserializes a message object of type '<point_rot-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'out_p) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<point_rot-response>)))
  "Returns string type for a service object of type '<point_rot-response>"
  "lab03_example_srv/point_rotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'point_rot-response)))
  "Returns string type for a service object of type 'point_rot-response"
  "lab03_example_srv/point_rotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<point_rot-response>)))
  "Returns md5sum for a message object of type '<point_rot-response>"
  "ba189fd216bf80200d5f8fd950cfe767")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'point_rot-response)))
  "Returns md5sum for a message object of type 'point_rot-response"
  "ba189fd216bf80200d5f8fd950cfe767")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<point_rot-response>)))
  "Returns full string definition for message of type '<point_rot-response>"
  (cl:format cl:nil "geometry_msgs/Point out_p~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'point_rot-response)))
  "Returns full string definition for message of type 'point_rot-response"
  (cl:format cl:nil "geometry_msgs/Point out_p~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <point_rot-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'out_p))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <point_rot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'point_rot-response
    (cl:cons ':out_p (out_p msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'point_rot)))
  'point_rot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'point_rot)))
  'point_rot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'point_rot)))
  "Returns string type for a service object of type '<point_rot>"
  "lab03_example_srv/point_rot")