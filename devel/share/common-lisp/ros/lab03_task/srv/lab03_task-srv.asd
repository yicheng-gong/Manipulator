
(cl:in-package :asdf)

(defsystem "lab03_task-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "rotmat2quat" :depends-on ("_package_rotmat2quat"))
    (:file "_package_rotmat2quat" :depends-on ("_package"))
  ))