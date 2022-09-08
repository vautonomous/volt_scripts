#!/bin/bash

source /opt/ros/galactic/setup.bash
source /home/sena/projects/autoware_new/autoware/install/setup.bash
ros2 run rqt_runtime_monitor rqt_runtime_monitor --ros-args -r /cpu_monitor/cpu_usage:=/diagnostics_err
