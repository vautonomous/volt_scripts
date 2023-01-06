#!/usr/bin/env bash

source /opt/ros/humble/setup.bash &&
source ~/projects/autoware/install/setup.bash &&
cd /home/volt/bags/locatization/ &&

ros2 bag record /applanix/lvx_client/autoware_orientation /applanix/lvx_client/imu_raw /applanix/lvx_client/gnss/fix /applanix/lvx_client/twist_with_covariance /applanix/lvx_client/gsof/ins_solution_49 /applanix/lvx_client/gsof/ins_solution_rms_50 /sensing/lidar/front/velodyne_packets /sensing/lidar/left/velodyne_packets /sensing/lidar/right/velodyne_packets /vehicle/status/velocity_status /vehicle/status/steering_status /clock

