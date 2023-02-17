#!/bin/bash

source /opt/ros/humble/setup.bash
source ~/projects/autoware/install/setup.bash
ros2 launch ui_process_manager ui_process_manager_prime.launch.xml
