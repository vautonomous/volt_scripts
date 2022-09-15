#!/usr/bin/env bash

source /opt/ros/galactic/setup.bash && 
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp && 
source /home/volt/projects/volt_drivers_ws/install/setup.bash
ros2 launch applanix_driver lvx_client.py
