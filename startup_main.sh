#!/bin/bash

# Orchestration:
# startup_multi_launcher.sh
# rviz, mission_control, mission_observation, navbar_i3, mert_ui_process_manager, rosbridge
# rviz, mission_control, mission_observation, navbar_i3 are tied to ws1 from the i3 config.
# Then, we sleep and apply the layout to ws1.


dir_main="~/projects/volt_scripts"

# Launch Backend Scripts and Autonomous Driving Screen
sleep 3

i3-msg 'workspace 10; exec mate-terminal -- bash -c '$dir_main/startup_multi_launcher.sh' --name startup_multi_launcher &'

sleep 11

i3-msg "workspace 1; append_layout ~/aa.json"

# Launch Detections Screen
###
# WM_CLASS(STRING) = "a", "b"
sleep 1

i3-msg [class="aaa" instance="bbb"] focus

while true;
do
sleep 5
done













