#!/usr/bin/env bash

source /opt/ros/humble/setup.bash &&
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp &&
source /home/volt/projects/volt_drivers_ws/install/setup.bash
ros2 launch velodyne volt_velodyne-all-nodes-all-lidars.launch.py
