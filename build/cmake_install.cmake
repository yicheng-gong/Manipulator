# Install script for directory: /home/yicheng/catkin_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/yicheng/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/yicheng/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/yicheng/catkin_ws/install" TYPE PROGRAM FILES "/home/yicheng/catkin_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/yicheng/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/yicheng/catkin_ws/install" TYPE PROGRAM FILES "/home/yicheng/catkin_ws/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/yicheng/catkin_ws/install/setup.bash;/home/yicheng/catkin_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/yicheng/catkin_ws/install" TYPE FILE FILES
    "/home/yicheng/catkin_ws/build/catkin_generated/installspace/setup.bash"
    "/home/yicheng/catkin_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/yicheng/catkin_ws/install/setup.sh;/home/yicheng/catkin_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/yicheng/catkin_ws/install" TYPE FILE FILES
    "/home/yicheng/catkin_ws/build/catkin_generated/installspace/setup.sh"
    "/home/yicheng/catkin_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/yicheng/catkin_ws/install/setup.zsh;/home/yicheng/catkin_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/yicheng/catkin_ws/install" TYPE FILE FILES
    "/home/yicheng/catkin_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/yicheng/catkin_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/yicheng/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/yicheng/catkin_ws/install" TYPE FILE FILES "/home/yicheng/catkin_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/yicheng/catkin_ws/build/gtest/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/iiwa_control/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/iiwa_description/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/iiwa_gazebo/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/robot_description/open_manipulator_description/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0129_s22_robot/src/panda_description/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/urdf_parser_py/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/lab02/lab02_example/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/lab02/lab02_task03/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/lab03/lab03_example/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/lab03/lab03_example_msg/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/lab03/lab03_example_srv/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/lab03/lab03_task/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/lab08/lab08_example/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/kdl_parser_py/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0129_s22_robot/src/rpl_panda_with_rs/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/lab07/lab07task01/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/lab02/lab02_task01/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/lab02/lab02_task02/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/lab09/lab09task01/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/cw2/cw2q4/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/cw2/cw2q6/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/cw3/cw3q2/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/cw3/cw3q5/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/lab04/lab04_example/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/lab05/lab05_example/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/lab06/lab06_example/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0129_s22_robot/src/realsense_gazebo_plugin/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0129_s22_robot/src/panda_moveit_config/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/robot_description/youbot_description/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/lab01/youbot_rviz_example/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/youbot_simulator/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/cw2/youbot_trail_rviz_cw2/cmake_install.cmake")
  include("/home/yicheng/catkin_ws/build/comp0127_lab/lab01/youbot_traj_example/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/yicheng/catkin_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
