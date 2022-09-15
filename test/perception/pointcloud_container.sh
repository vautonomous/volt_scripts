#!/usr/bin/env bash

#source /opt/ros/galactic/setup.bash && 
#export RMW_IMPLEMENTATION=rmw_fastrtps_cpp &&
source /home/volt/projects/autoware/install/setup.bash && 
ros2 launch autoware_launch pointcloud_container.launch.py use_multithread:=true container_name:=pointcloud_container
