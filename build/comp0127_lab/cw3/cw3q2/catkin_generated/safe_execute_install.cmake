execute_process(COMMAND "/home/yicheng/catkin_ws/build/comp0127_lab/cw3/cw3q2/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/yicheng/catkin_ws/build/comp0127_lab/cw3/cw3q2/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
