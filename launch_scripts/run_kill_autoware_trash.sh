#!/usr/bin/bash

PID=`ps -eaf | grep leo_vcu_driver | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  kill -9 $PID
fi

PID=`ps -eaf | grep component_conta | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  kill -9 $PID
fi