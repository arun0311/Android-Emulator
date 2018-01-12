#!/bin/bash
 
ANDROID_HOME=/home/user/Android/Sdk
AVD_NAME=Pixel_2_XL_API_22
 
if [ $# -gt 0 ]; then
        AVD_NAME=$1
        shift
fi
 
pushd ${ANDROID_HOME}/tools
./emulator -avd ${AVD_NAME} $* &
popd
