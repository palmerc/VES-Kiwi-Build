#!/bin/bash 

. ./ves-kiwi-variables.sh

cd "${VES_ANDROID_SOURCE_DIR}/CMakeBuild"
SYMBOLIC_BUILD_DIR=${VES_ANDROID_SOURCE_DIR}/CMakeBuild/build
echo "Going to symbolically link ${VES_BUILD_DIR} to ${SYMBOLIC_BUILD_DIR}"
rm "${SYMBOLIC_BUILD_DIR}"
ln -s "${VES_BUILD_DIR}" "${SYMBOLIC_BUILD_DIR}"
cmake -P configure.cmake
cd build
make -j8
