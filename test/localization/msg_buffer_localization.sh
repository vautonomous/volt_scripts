#!/usr/bin/env bash

source /opt/ros/galactic/setup.bash && 
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp &&
source /home/volt/projects/gnss_ins_localizer_ws/install/setup.bash && 
ros2 launch gnss_ins_msg_buffer gnss_ins_msg_buffer_launch.py 
