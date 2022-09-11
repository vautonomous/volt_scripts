#!/bin/bash

source /opt/ros/galactic/setup.bash
source ~/projects/autoware/install/setup.bash
ros2 launch ui_process_manager ui_process_manager.launch.xml
