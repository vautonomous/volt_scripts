#!/usr/bin/env bash

source /opt/ros/galactic/setup.bash && 
source ~/projects/autoware/install/setup.bash &&
cd /home/volt/bags/perception/ &&

ros2 bag record /lucid_vision/camera_0/camera_info /lucid_vision/camera_0/raw_image /lucid_vision/camera_1/camera_info /lucid_vision/camera_1/raw_image /lucid_vision/camera_2/camera_info /lucid_vision/camera_2/raw_image /applanix/lvx_client/autoware_orientation /applanix/lvx_client/imu_raw /applanix/lvx_client/gnss/fix /applanix/lvx_client/twist_with_covariance /applanix/lvx_client/gsof/ins_solution_49 /applanix/lvx_client/gsof/ins_solution_rms_50 /vehicle/status/velocity_status /vehicle/status/steering_status /sensing/lidar/concatenated/pointcloud


