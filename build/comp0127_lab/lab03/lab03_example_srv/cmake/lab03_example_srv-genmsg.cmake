# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lab03_example_srv: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lab03_example_srv_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_example_srv/srv/point_rot.srv" NAME_WE)
add_custom_target(_lab03_example_srv_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lab03_example_srv" "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_example_srv/srv/point_rot.srv" "geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(lab03_example_srv
  "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_example_srv/srv/point_rot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab03_example_srv
)

### Generating Module File
_generate_module_cpp(lab03_example_srv
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab03_example_srv
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lab03_example_srv_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lab03_example_srv_generate_messages lab03_example_srv_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_example_srv/srv/point_rot.srv" NAME_WE)
add_dependencies(lab03_example_srv_generate_messages_cpp _lab03_example_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab03_example_srv_gencpp)
add_dependencies(lab03_example_srv_gencpp lab03_example_srv_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab03_example_srv_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(lab03_example_srv
  "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_example_srv/srv/point_rot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab03_example_srv
)

### Generating Module File
_generate_module_eus(lab03_example_srv
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab03_example_srv
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lab03_example_srv_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lab03_example_srv_generate_messages lab03_example_srv_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_example_srv/srv/point_rot.srv" NAME_WE)
add_dependencies(lab03_example_srv_generate_messages_eus _lab03_example_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab03_example_srv_geneus)
add_dependencies(lab03_example_srv_geneus lab03_example_srv_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab03_example_srv_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(lab03_example_srv
  "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_example_srv/srv/point_rot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab03_example_srv
)

### Generating Module File
_generate_module_lisp(lab03_example_srv
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab03_example_srv
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lab03_example_srv_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lab03_example_srv_generate_messages lab03_example_srv_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_example_srv/srv/point_rot.srv" NAME_WE)
add_dependencies(lab03_example_srv_generate_messages_lisp _lab03_example_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab03_example_srv_genlisp)
add_dependencies(lab03_example_srv_genlisp lab03_example_srv_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab03_example_srv_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(lab03_example_srv
  "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_example_srv/srv/point_rot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab03_example_srv
)

### Generating Module File
_generate_module_nodejs(lab03_example_srv
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab03_example_srv
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lab03_example_srv_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lab03_example_srv_generate_messages lab03_example_srv_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_example_srv/srv/point_rot.srv" NAME_WE)
add_dependencies(lab03_example_srv_generate_messages_nodejs _lab03_example_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab03_example_srv_gennodejs)
add_dependencies(lab03_example_srv_gennodejs lab03_example_srv_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab03_example_srv_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(lab03_example_srv
  "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_example_srv/srv/point_rot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab03_example_srv
)

### Generating Module File
_generate_module_py(lab03_example_srv
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab03_example_srv
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lab03_example_srv_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lab03_example_srv_generate_messages lab03_example_srv_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/lab03/lab03_example_srv/srv/point_rot.srv" NAME_WE)
add_dependencies(lab03_example_srv_generate_messages_py _lab03_example_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lab03_example_srv_genpy)
add_dependencies(lab03_example_srv_genpy lab03_example_srv_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lab03_example_srv_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab03_example_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lab03_example_srv
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(lab03_example_srv_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab03_example_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lab03_example_srv
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(lab03_example_srv_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab03_example_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lab03_example_srv
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(lab03_example_srv_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab03_example_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lab03_example_srv
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(lab03_example_srv_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab03_example_srv)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab03_example_srv\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lab03_example_srv
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(lab03_example_srv_generate_messages_py geometry_msgs_generate_messages_py)
endif()
