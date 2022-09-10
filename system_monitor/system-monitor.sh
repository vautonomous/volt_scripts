#!/bin/bash

dir_main="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"

su_setcap_path=("${dir_main}/su_setcap.sh")
install_reader_path=("${dir_main}/install_reader.sh")

$su_setcap_path

sleep 2

sudo -u volt_sm $install_reader_path

sleep 1

$launch_path &

sleep 2

$rqt_path
