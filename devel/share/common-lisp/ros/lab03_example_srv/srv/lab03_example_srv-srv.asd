
(cl:in-package :asdf)

(defsystem "lab03_example_srv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "point_rot" :depends-on ("_package_point_rot"))
    (:file "_package_point_rot" :depends-on ("_package"))
  ))