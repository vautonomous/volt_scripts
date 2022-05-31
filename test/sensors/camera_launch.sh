#!/usr/bin/env bash

source /opt/ros/galactic/setup.bash && 
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp &&
source /home/volt/projects/volt_drivers_ws/install/setup.bash
ros2 run arena_camera arena_camera_node_exe --ros-args --params-file /home/volt/projects/volt_drivers_ws/src/arena_camera/param/volt_multi_camera.param.yaml

