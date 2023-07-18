; Auto-generated. Do not edit!


(cl:in-package cw1q4_srv-srv)


;//! \htmlinclude quat2zyx-request.msg.html

(cl:defclass <quat2zyx-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass quat2zyx-request (<quat2zyx-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <quat2zyx-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'quat2zyx-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cw1q4_srv-srv:<quat2zyx-request> is deprecated: use cw1q4_srv-srv:quat2zyx-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <quat2zyx-request>) ostream)
  "Serializes a message object of type '<quat2zyx-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <quat2zyx-request>) istream)
  "Deserializes a message object of type '<quat2zyx-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<quat2zyx-request>)))
  "Returns string type for a service object of type '<quat2zyx-request>"
  "cw1q4_srv/quat2zyxRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2zyx-request)))
  "Returns string type for a service object of type 'quat2zyx-request"
  "cw1q4_srv/quat2zyxRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<quat2zyx-request>)))
  "Returns md5sum for a message object of type '<quat2zyx-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'quat2zyx-request)))
  "Returns md5sum for a message object of type 'quat2zyx-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<quat2zyx-request>)))
  "Returns full string definition for message of type '<quat2zyx-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'quat2zyx-request)))
  "Returns full string definition for message of type 'quat2zyx-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <quat2zyx-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <quat2zyx-request>))
  "Converts a ROS message object to a list"
  (cl:list 'quat2zyx-request
))
;//! \htmlinclude quat2zyx-response.msg.html

(cl:defclass <quat2zyx-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass quat2zyx-response (<quat2zyx-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <quat2zyx-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'quat2zyx-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cw1q4_srv-srv:<quat2zyx-response> is deprecated: use cw1q4_srv-srv:quat2zyx-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <quat2zyx-response>) ostream)
  "Serializes a message object of type '<quat2zyx-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <quat2zyx-response>) istream)
  "Deserializes a message object of type '<quat2zyx-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<quat2zyx-response>)))
  "Returns string type for a service object of type '<quat2zyx-response>"
  "cw1q4_srv/quat2zyxResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2zyx-response)))
  "Returns string type for a service object of type 'quat2zyx-response"
  "cw1q4_srv/quat2zyxResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<quat2zyx-response>)))
  "Returns md5sum for a message object of type '<quat2zyx-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'quat2zyx-response)))
  "Returns md5sum for a message object of type 'quat2zyx-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<quat2zyx-response>)))
  "Returns full string definition for message of type '<quat2zyx-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'quat2zyx-response)))
  "Returns full string definition for message of type 'quat2zyx-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <quat2zyx-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <quat2zyx-response>))
  "Converts a ROS message object to a list"
  (cl:list 'quat2zyx-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'quat2zyx)))
  'quat2zyx-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'quat2zyx)))
  'quat2zyx-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'quat2zyx)))
  "Returns string type for a service object of type '<quat2zyx>"
  "cw1q4_srv/quat2zyx")