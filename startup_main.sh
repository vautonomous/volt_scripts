#!/bin/bash

# Orchestration:
# startup_multi_launcher.sh
# rviz, mission_control, mission_observation, navbar_i3, mert_ui_process_manager, rosbridge
# rviz, mission_control, mission_observation, navbar_i3 are tied to ws1 from the i3 config.
# Then, we sleep and apply the layout to ws1.

DIR_MAIN=~/projects/volt_scripts

i3-msg 'workspace 1; append_layout /home/volt/projects/volt_scripts/config/workspace-1.json'

i3-msg workspace 10; exec mate-terminal -- bash -c $DIR_MAIN/startup_multi_launcher.sh &

sleep 3

i3-msg workspace 1

i3-msg '[class="Mission_Control" instance="mission_control"] focus'

while true;
do
sleep 5
done













