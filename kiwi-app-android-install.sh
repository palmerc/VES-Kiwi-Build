#!/bin/bash 

. ./ves-kiwi-variables.sh

# Check to make sure ADB is running as root
echo "Check to make sure ADB is running as root"
PID=`ps -A | grep -m1 adb | awk '{print $1}'`
PS_RESULT=`ps ${PID} -o pid,uid | sed 1d | sed 's/  */ /g'`
ADB_PID=`echo ${PS_RESULT} | cut -d ' ' -f 1`
ADB_UID=`echo ${PS_RESULT} | cut -d ' ' -f 2`
if [ "${ADB_UID}" != "0" ]; then 
   sudo ${ADB_EXECUTABLE} kill-server
   sudo ${ADB_EXECUTABLE} start-server
fi

# Install the app
${ADB_EXECUTABLE} install -r ${KIWI_BUILD_DIR}/bin/KiwiViewer-debug.apk
