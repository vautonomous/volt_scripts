#!/usr/bin/env bash

source /opt/ros/humble/setup.bash &&
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp &&
source /home/volt/projects/gnss_ins_localizer_ws/install/setup.bash && 
ros2 launch gnss_ins_localization_nodes gnss_ins_localization_launch.py

