# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lab03_task: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lab03_task_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_task/srv/rotmat2quat.srv" NAME_WE)
add_custom_target(_lab03_task_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lab03_task" "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_task/srv/rotmat2quat.srv" "geometry_msgs/Quaternion:std_msgs/MultiArrayDimension:std_msgs/Float64MultiArray:std_msgs/MultiArrayLayout"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(lab03_task
  "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_task/srv/rotmat2quat.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab03_task
)

### Generating Module File
_generate_module_cpp(lab03_task
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab03_task
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lab03_task_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lab03_task_generate_messages lab03_task_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_task/srv/rotmat2quat.srv" NAME_WE)
add_dependencies(lab03_task_generate_messages_cpp _lab03_task_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab03_task_gencpp)
add_dependencies(lab03_task_gencpp lab03_task_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab03_task_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(lab03_task
  "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_task/srv/rotmat2quat.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab03_task
)

### Generating Module File
_generate_module_eus(lab03_task
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab03_task
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lab03_task_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lab03_task_generate_messages lab03_task_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_task/srv/rotmat2quat.srv" NAME_WE)
add_dependencies(lab03_task_generate_messages_eus _lab03_task_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab03_task_geneus)
add_dependencies(lab03_task_geneus lab03_task_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab03_task_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(lab03_task
  "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_task/srv/rotmat2quat.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab03_task
)

### Generating Module File
_generate_module_lisp(lab03_task
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab03_task
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lab03_task_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lab03_task_generate_messages lab03_task_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_task/srv/rotmat2quat.srv" NAME_WE)
add_dependencies(lab03_task_generate_messages_lisp _lab03_task_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab03_task_genlisp)
add_dependencies(lab03_task_genlisp lab03_task_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab03_task_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(lab03_task
  "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_task/srv/rotmat2quat.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab03_task
)

### Generating Module File
_generate_module_nodejs(lab03_task
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab03_task
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lab03_task_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lab03_task_generate_messages lab03_task_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_task/srv/rotmat2quat.srv" NAME_WE)
add_dependencies(lab03_task_generate_messages_nodejs _lab03_task_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab03_task_gennodejs)
add_dependencies(lab03_task_gennodejs lab03_task_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab03_task_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(lab03_task
  "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_task/srv/rotmat2quat.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab03_task
)

### Generating Module File
_generate_module_py(lab03_task
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab03_task
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lab03_task_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lab03_task_generate_messages lab03_task_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_task/srv/rotmat2quat.srv" NAME_WE)
add_dependencies(lab03_task_generate_messages_py _lab03_task_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab03_task_genpy)
add_dependencies(lab03_task_genpy lab03_task_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab03_task_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab03_task)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab03_task
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(lab03_task_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(lab03_task_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab03_task)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab03_task
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(lab03_task_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(lab03_task_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab03_task)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab03_task
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(lab03_task_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(lab03_task_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab03_task)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab03_task
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(lab03_task_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(lab03_task_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab03_task)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab03_task\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab03_task
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(lab03_task_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(lab03_task_generate_messages_py std_msgs_generate_messages_py)
endif()
