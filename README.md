## VES-Kiwi Basic Build Scripts

This is the basic VES-Kiwi compile using cmake. The variables file needs to be adjusted to suit your environment.

The bash scripts serve to document the compile of VES-Kiwi on a Mac targeting Android.

   * Built on Yosemite
   * Cmake 3.0.2 (Installed via Brew)
   * Android NDK r9d (Installed via Brew)
   * Ant 1.9.4 (Installed via Brew)
   * Python 2.7.8 (Installed via Brew)

Build process:

1. Update `ves-kiwi-variables.sh`
2. `./ves-base-android-prepare.sh`
3. `./ves-base-android-compile.sh`
4. `./kiwi-app-android-compile.sh`
5. `./kiwi-app-android-install.sh`

This will kick off the checkout of VES from git. Once that has happened cmake is called to create a SUPERBUILD for Android. This downloads Eigen and VTK 6.0 and compiles VTK, then moves on to VES, Shaders, and Kiwi. The shaders are intrestingly processed by python scripts and converted into C++. Output of the ves-base scripts is a `libKiwiNative.so` which is the heart of the app.

The Kiwi app script calls cmake again against the source in Apps/Android/Kiwi and creates an Android pre-gradle project wrapper. The `libKiwiNative.so` gets dropped into `libs/` and that is it.

At this point you can install the app on the device using `adb`. The APK is in `Kiwi-build/bin/`.
