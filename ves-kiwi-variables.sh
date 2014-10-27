# Modify these values to suit your environment
export CC=/usr/bin/clang
export CXX=/usr/bin/clang++
export ANDROID_NDK=/usr/local/opt/android-ndk
export ANDROID_HOME=${HOME}/Development/android-sdk-macosx
export ANT_EXECUTABLE=`which ant`

### You probably don't need to modify anything below

#set -x 

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Repositories
VES_OFFICIAL_REPO=git://vtk.org/VES.git

# Environment variables
export CMAKE_C_COMPILER=${CC}
export CMAKE_CXX_COMPILER=${CXX}
export ANDROID_NATIVE_API_LEVEL=14
export ANDROID_EXECUTABLE=${ANDROID_HOME}/tools/android
export ADB_EXECUTABLE=${ANDROID_HOME}/platform-tools/adb
export GNU_AR_EXECUTABLE=`${ANDROID_NDK}/ndk-which ar`

# Directories
VES_KIWI_BASE=${PWD}/VES-Kiwi
VES_SOURCE_DIR=${VES_KIWI_BASE}/VES
VES_BUILD_DIR=${VES_KIWI_BASE}/VES-build
VES_INSTALL_DIR=${VES_BUILD_DIR}/CMakeExternals/Install
VES_BUILD_BUILD_DIR=${VES_BUILD_DIR}/CMakeExternals/Build
VES_ANDROID_SOURCE_DIR=${VES_SOURCE_DIR}/Apps/Android
KIWI_SOURCE_DIR=${VES_ANDROID_SOURCE_DIR}/Kiwi
KIWI_BUILD_DIR=${VES_KIWI_BASE}/Kiwi-build
KIWI_JNI_DIR=${KIWI_BUILD_DIR}/jni
LIBVTK_DIR=${VES_KIWI_BASE}/vtk-android
LIBVTK_FILE=libvtk-android.a

TOOLCHAIN=${VES_SOURCE_DIR}/CMake/toolchains/android.toolchain.cmake
VTK_DIR=${VES_BUILD_DIR}/CMakeExternals/Build/vtk-android
VES_DIR=${VES_BUILD_DIR}/CMakeExternals/Build/ves-android

