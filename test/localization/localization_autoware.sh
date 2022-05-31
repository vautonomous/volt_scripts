#!/usr/bin/env bash

source /opt/ros/galactic/setup.bash && 
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp &&
source /home/volt/projects/autoware/install/setup.bash &&
ros2 launch tier4_localization_launch pose_twist_fusion_filter.launch.xml
