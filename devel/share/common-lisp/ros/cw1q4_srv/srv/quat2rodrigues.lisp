; Auto-generated. Do not edit!


(cl:in-package cw1q4_srv-srv)


;//! \htmlinclude quat2rodrigues-request.msg.html

(cl:defclass <quat2rodrigues-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass quat2rodrigues-request (<quat2rodrigues-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <quat2rodrigues-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'quat2rodrigues-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cw1q4_srv-srv:<quat2rodrigues-request> is deprecated: use cw1q4_srv-srv:quat2rodrigues-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <quat2rodrigues-request>) ostream)
  "Serializes a message object of type '<quat2rodrigues-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <quat2rodrigues-request>) istream)
  "Deserializes a message object of type '<quat2rodrigues-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<quat2rodrigues-request>)))
  "Returns string type for a service object of type '<quat2rodrigues-request>"
  "cw1q4_srv/quat2rodriguesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2rodrigues-request)))
  "Returns string type for a service object of type 'quat2rodrigues-request"
  "cw1q4_srv/quat2rodriguesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<quat2rodrigues-request>)))
  "Returns md5sum for a message object of type '<quat2rodrigues-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'quat2rodrigues-request)))
  "Returns md5sum for a message object of type 'quat2rodrigues-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<quat2rodrigues-request>)))
  "Returns full string definition for message of type '<quat2rodrigues-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'quat2rodrigues-request)))
  "Returns full string definition for message of type 'quat2rodrigues-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <quat2rodrigues-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <quat2rodrigues-request>))
  "Converts a ROS message object to a list"
  (cl:list 'quat2rodrigues-request
))
;//! \htmlinclude quat2rodrigues-response.msg.html

(cl:defclass <quat2rodrigues-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass quat2rodrigues-response (<quat2rodrigues-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <quat2rodrigues-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'quat2rodrigues-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cw1q4_srv-srv:<quat2rodrigues-response> is deprecated: use cw1q4_srv-srv:quat2rodrigues-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <quat2rodrigues-response>) ostream)
  "Serializes a message object of type '<quat2rodrigues-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <quat2rodrigues-response>) istream)
  "Deserializes a message object of type '<quat2rodrigues-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<quat2rodrigues-response>)))
  "Returns string type for a service object of type '<quat2rodrigues-response>"
  "cw1q4_srv/quat2rodriguesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2rodrigues-response)))
  "Returns string type for a service object of type 'quat2rodrigues-response"
  "cw1q4_srv/quat2rodriguesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<quat2rodrigues-response>)))
  "Returns md5sum for a message object of type '<quat2rodrigues-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'quat2rodrigues-response)))
  "Returns md5sum for a message object of type 'quat2rodrigues-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<quat2rodrigues-response>)))
  "Returns full string definition for message of type '<quat2rodrigues-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'quat2rodrigues-response)))
  "Returns full string definition for message of type 'quat2rodrigues-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <quat2rodrigues-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <quat2rodrigues-response>))
  "Converts a ROS message object to a list"
  (cl:list 'quat2rodrigues-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'quat2rodrigues)))
  'quat2rodrigues-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'quat2rodrigues)))
  'quat2rodrigues-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2rodrigues)))
  "Returns string type for a service object of type '<quat2rodrigues>"
  "cw1q4_srv/quat2rodrigues")