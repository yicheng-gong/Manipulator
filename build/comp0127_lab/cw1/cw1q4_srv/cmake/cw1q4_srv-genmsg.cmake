# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cw1q4_srv: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cw1q4_srv_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2zyx.srv" NAME_WE)
add_custom_target(_cw1q4_srv_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cw1q4_srv" "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2zyx.srv" ""
)

get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2rodrigues.srv" NAME_WE)
add_custom_target(_cw1q4_srv_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cw1q4_srv" "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2rodrigues.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(cw1q4_srv
  "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2zyx.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cw1q4_srv
)
_generate_srv_cpp(cw1q4_srv
  "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2rodrigues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cw1q4_srv
)

### Generating Module File
_generate_module_cpp(cw1q4_srv
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cw1q4_srv
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cw1q4_srv_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cw1q4_srv_generate_messages cw1q4_srv_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2zyx.srv" NAME_WE)
add_dependencies(cw1q4_srv_generate_messages_cpp _cw1q4_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2rodrigues.srv" NAME_WE)
add_dependencies(cw1q4_srv_generate_messages_cpp _cw1q4_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cw1q4_srv_gencpp)
add_dependencies(cw1q4_srv_gencpp cw1q4_srv_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cw1q4_srv_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(cw1q4_srv
  "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2zyx.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cw1q4_srv
)
_generate_srv_eus(cw1q4_srv
  "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2rodrigues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cw1q4_srv
)

### Generating Module File
_generate_module_eus(cw1q4_srv
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cw1q4_srv
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cw1q4_srv_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cw1q4_srv_generate_messages cw1q4_srv_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2zyx.srv" NAME_WE)
add_dependencies(cw1q4_srv_generate_messages_eus _cw1q4_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2rodrigues.srv" NAME_WE)
add_dependencies(cw1q4_srv_generate_messages_eus _cw1q4_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cw1q4_srv_geneus)
add_dependencies(cw1q4_srv_geneus cw1q4_srv_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cw1q4_srv_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(cw1q4_srv
  "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2zyx.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cw1q4_srv
)
_generate_srv_lisp(cw1q4_srv
  "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2rodrigues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cw1q4_srv
)

### Generating Module File
_generate_module_lisp(cw1q4_srv
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cw1q4_srv
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cw1q4_srv_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cw1q4_srv_generate_messages cw1q4_srv_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2zyx.srv" NAME_WE)
add_dependencies(cw1q4_srv_generate_messages_lisp _cw1q4_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2rodrigues.srv" NAME_WE)
add_dependencies(cw1q4_srv_generate_messages_lisp _cw1q4_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cw1q4_srv_genlisp)
add_dependencies(cw1q4_srv_genlisp cw1q4_srv_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cw1q4_srv_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(cw1q4_srv
  "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2zyx.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cw1q4_srv
)
_generate_srv_nodejs(cw1q4_srv
  "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2rodrigues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cw1q4_srv
)

### Generating Module File
_generate_module_nodejs(cw1q4_srv
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cw1q4_srv
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cw1q4_srv_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cw1q4_srv_generate_messages cw1q4_srv_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2zyx.srv" NAME_WE)
add_dependencies(cw1q4_srv_generate_messages_nodejs _cw1q4_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2rodrigues.srv" NAME_WE)
add_dependencies(cw1q4_srv_generate_messages_nodejs _cw1q4_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cw1q4_srv_gennodejs)
add_dependencies(cw1q4_srv_gennodejs cw1q4_srv_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cw1q4_srv_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(cw1q4_srv
  "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2zyx.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cw1q4_srv
)
_generate_srv_py(cw1q4_srv
  "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2rodrigues.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cw1q4_srv
)

### Generating Module File
_generate_module_py(cw1q4_srv
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cw1q4_srv
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cw1q4_srv_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cw1q4_srv_generate_messages cw1q4_srv_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2zyx.srv" NAME_WE)
add_dependencies(cw1q4_srv_generate_messages_py _cw1q4_srv_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yicheng/catkin_ws/src/comp0127_lab/cw1/cw1q4_srv/srv/quat2rodrigues.srv" NAME_WE)
add_dependencies(cw1q4_srv_generate_messages_py _cw1q4_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cw1q4_srv_genpy)
add_dependencies(cw1q4_srv_genpy cw1q4_srv_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cw1q4_srv_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cw1q4_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cw1q4_srv
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cw1q4_srv_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(cw1q4_srv_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cw1q4_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cw1q4_srv
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cw1q4_srv_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(cw1q4_srv_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cw1q4_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cw1q4_srv
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cw1q4_srv_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(cw1q4_srv_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cw1q4_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cw1q4_srv
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cw1q4_srv_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(cw1q4_srv_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cw1q4_srv)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cw1q4_srv\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cw1q4_srv
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cw1q4_srv_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(cw1q4_srv_generate_messages_py geometry_msgs_generate_messages_py)
endif()
