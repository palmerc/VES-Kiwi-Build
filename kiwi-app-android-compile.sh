#!/bin/bash 

. ./ves-kiwi-variables.sh

mkdir -p "${KIWI_BUILD_DIR}"
cd "${KIWI_BUILD_DIR}"
cmake \
      -DANDROID_EXECUTABLE="${ANDROID_EXECUTABLE}" \
      -DANT_EXECUTABLE="${ANT_EXECUTABLE}" \
      -DCMAKE_TOOLCHAIN_FILE="${TOOLCHAIN}" \
      -DANDROID_NATIVE_API_LEVEL=${ANDROID_NATIVE_API_LEVEL} \
      -DVTK_DIR="${VTK_DIR}" \
      -DVES_DIR="${VES_DIR}" \
      "${KIWI_SOURCE_DIR}" 
make -j8
