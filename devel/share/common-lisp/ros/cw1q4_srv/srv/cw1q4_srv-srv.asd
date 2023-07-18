
(cl:in-package :asdf)

(defsystem "cw1q4_srv-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "quat2rodrigues" :depends-on ("_package_quat2rodrigues"))
    (:file "_package_quat2rodrigues" :depends-on ("_package"))
    (:file "quat2zyx" :depends-on ("_package_quat2zyx"))
    (:file "_package_quat2zyx" :depends-on ("_package"))
  ))