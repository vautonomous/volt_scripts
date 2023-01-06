#!/usr/bin/env bash

source /opt/ros/humble/setup.bash &&
source ~/projects/autoware/install/setup.bash &&
cd /home/volt/bags/all-topics/ &&
ros2 bag record -a
