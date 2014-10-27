#!/bin/bash 

. ./ves-kiwi-variables.sh

### Build VES/VTK
if [ ! -d ${VES_SOURCE_DIR} ]; then
   mkdir -p ${VES_SOURCE_DIR} ${VES_BUILD_DIR}
   git clone ${VES_OFFICIAL_REPO} ${VES_SOURCE_DIR} 
else
   echo "VES source directory exists at ${VES_SOURCE_DIR}."
fi
