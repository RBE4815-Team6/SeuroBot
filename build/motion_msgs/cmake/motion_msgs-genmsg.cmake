# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "motion_msgs: 7 messages, 0 services")

set(MSG_I_FLAGS "-Imotion_msgs:/home/avrs/seurobot_ws/devel/share/motion_msgs/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(motion_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg" NAME_WE)
add_custom_target(_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motion_msgs" "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:motion_msgs/MoveRobotGoal"
)

get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg" NAME_WE)
add_custom_target(_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motion_msgs" "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotAction.msg" NAME_WE)
add_custom_target(_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motion_msgs" "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotAction.msg" "motion_msgs/MoveRobotActionFeedback:geometry_msgs/PoseStamped:motion_msgs/MoveRobotFeedback:actionlib_msgs/GoalStatus:motion_msgs/MoveRobotResult:geometry_msgs/Point:motion_msgs/MoveRobotGoal:geometry_msgs/Pose:motion_msgs/MoveRobotActionResult:geometry_msgs/Quaternion:motion_msgs/MoveRobotActionGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg" NAME_WE)
add_custom_target(_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motion_msgs" "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg" "geometry_msgs/PoseStamped:actionlib_msgs/GoalID:motion_msgs/MoveRobotFeedback:geometry_msgs/Quaternion:geometry_msgs/Point:actionlib_msgs/GoalStatus:geometry_msgs/Pose:std_msgs/Header"
)

get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg" NAME_WE)
add_custom_target(_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motion_msgs" "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:motion_msgs/MoveRobotResult:geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:geometry_msgs/Pose:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg" NAME_WE)
add_custom_target(_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motion_msgs" "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg" ""
)

get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg" NAME_WE)
add_custom_target(_motion_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "motion_msgs" "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_msgs
)
_generate_msg_cpp(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_msgs
)
_generate_msg_cpp(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_msgs
)
_generate_msg_cpp(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotAction.msg"
  "${MSG_I_FLAGS}"
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_msgs
)
_generate_msg_cpp(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_msgs
)
_generate_msg_cpp(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_msgs
)
_generate_msg_cpp(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(motion_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(motion_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(motion_msgs_generate_messages motion_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_cpp _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_cpp _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotAction.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_cpp _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_cpp _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_cpp _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_cpp _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_cpp _motion_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motion_msgs_gencpp)
add_dependencies(motion_msgs_gencpp motion_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motion_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motion_msgs
)
_generate_msg_eus(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motion_msgs
)
_generate_msg_eus(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motion_msgs
)
_generate_msg_eus(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotAction.msg"
  "${MSG_I_FLAGS}"
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motion_msgs
)
_generate_msg_eus(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motion_msgs
)
_generate_msg_eus(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motion_msgs
)
_generate_msg_eus(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motion_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(motion_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motion_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(motion_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(motion_msgs_generate_messages motion_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_eus _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_eus _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotAction.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_eus _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_eus _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_eus _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_eus _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_eus _motion_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motion_msgs_geneus)
add_dependencies(motion_msgs_geneus motion_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motion_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_msgs
)
_generate_msg_lisp(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_msgs
)
_generate_msg_lisp(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_msgs
)
_generate_msg_lisp(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotAction.msg"
  "${MSG_I_FLAGS}"
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_msgs
)
_generate_msg_lisp(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_msgs
)
_generate_msg_lisp(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_msgs
)
_generate_msg_lisp(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(motion_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(motion_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(motion_msgs_generate_messages motion_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_lisp _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_lisp _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotAction.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_lisp _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_lisp _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_lisp _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_lisp _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_lisp _motion_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motion_msgs_genlisp)
add_dependencies(motion_msgs_genlisp motion_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motion_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motion_msgs
)
_generate_msg_nodejs(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motion_msgs
)
_generate_msg_nodejs(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motion_msgs
)
_generate_msg_nodejs(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotAction.msg"
  "${MSG_I_FLAGS}"
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motion_msgs
)
_generate_msg_nodejs(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motion_msgs
)
_generate_msg_nodejs(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motion_msgs
)
_generate_msg_nodejs(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motion_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(motion_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motion_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(motion_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(motion_msgs_generate_messages motion_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_nodejs _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_nodejs _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotAction.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_nodejs _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_nodejs _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_nodejs _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_nodejs _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_nodejs _motion_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motion_msgs_gennodejs)
add_dependencies(motion_msgs_gennodejs motion_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motion_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_msgs
)
_generate_msg_py(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_msgs
)
_generate_msg_py(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_msgs
)
_generate_msg_py(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotAction.msg"
  "${MSG_I_FLAGS}"
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_msgs
)
_generate_msg_py(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_msgs
)
_generate_msg_py(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_msgs
)
_generate_msg_py(motion_msgs
  "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(motion_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(motion_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(motion_msgs_generate_messages motion_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionGoal.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_py _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotFeedback.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_py _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotAction.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_py _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionFeedback.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_py _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotActionResult.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_py _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotGoal.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_py _motion_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/avrs/seurobot_ws/devel/share/motion_msgs/msg/MoveRobotResult.msg" NAME_WE)
add_dependencies(motion_msgs_generate_messages_py _motion_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(motion_msgs_genpy)
add_dependencies(motion_msgs_genpy motion_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS motion_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/motion_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(motion_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(motion_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(motion_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motion_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/motion_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(motion_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(motion_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(motion_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/motion_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(motion_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(motion_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(motion_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motion_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/motion_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(motion_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(motion_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(motion_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/motion_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(motion_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(motion_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(motion_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
