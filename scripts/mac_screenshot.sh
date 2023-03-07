#!/bin/bash

set -euo pipefail

# for testing, replace 'adb' with 'echo'
# cmd=adb
cmd=echo  # uncomment for testing

screenshot_base=screen
if [ $# -gt 1 ]; then
    screenshot_base=$1; shift;
fi

last=$(find . -name "${screenshot_base}.*" | tail -n 1)
counter=1
if [ "${last}" != "" ]; then
    counter=10
fi

screenshot_name="${screenshot_base}.$(printf "%05d.png" ${counter})"

"${cmd}" shell screencap -p "/sdcard/${screenshot_name}"
"${cmd}" pull "/sdcard/${screenshot_name}"
"${cmd}" shell rm "/sdcard/${screenshot_name}"

if [ "${cmd}" == "echo" ]; then
    touch "${screenshot_name}"
fi
