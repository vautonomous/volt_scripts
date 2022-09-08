#!/bin/bash

dir_main="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

su_setcap_path=("${dir_main}/su_setcap.sh")
install_reader_path=("${dir_main}/install_reader.sh")
launch_path=("${dir_main}/launch.sh")
rqt_path=("${dir_main}/rqt.sh")


#array_path_scripts=()
# array_path_scripts+=("${dir_main}/change_user.sh")
#array_path_scripts+=("${dir_main}/launch.sh")
#array_path_scripts+=("${dir_main}/rqt.sh")


function run_in_tab() {
cmd1="bash -c $1"
mate-terminal --tab --command="bash -ic 'echo $cmd1 >> $HOME/.bash_history; trap bash SIGINT; $cmd1 ; bash'"
}

$su_setcap_path

sleep 2

sudo -u volt_sm $install_reader_path

sleep 1

$launch_path &

sleep 2

$rqt_path


#for path_script in "${array_path_scripts[@]}"; do
#    run_in_tab "${path_script}"
#    sleep 2
#done 

