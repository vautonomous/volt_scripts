#!/usr/bin/env bash

source /opt/ros/humble/setup.bash
source $HOME/projects/autoware/install/setup.bash
ros2 launch autoware_launch pointcloud_container.launch.py use_multithread:=true container_name:=pointcloud_container
