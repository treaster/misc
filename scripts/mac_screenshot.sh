#!/bin/bash

# for testing, replace 'adb' with 'echo'
screenshot() {
  if [ -z $1+x ];
  then SCREENSHOTBASE=screen;
  else SCREENSHOTBASE=$1;
  fi;
  if [ -z ${SCREENSHOTCOUNTER+x} ];
  then SCREENSHOTCOUNTER=1;
  fi;

  export SCREENSHOTNAME=$SCREENSHOTBASE$(printf "%05d.png" $SCREENSHOTCOUNTER);
  adb shell screencap -p /sdcard/${SCREENSHOTNAME} && \
    adb pull /sdcard/${SCREENSHOTNAME} && \
    adb shell rm /sdcard/${SCREENSHOTNAME} && \
    ((SCREENSHOTCOUNTER+=1));
}

resetscreenshot() {
  SCREENSHOTCOUNTER=1;
}

