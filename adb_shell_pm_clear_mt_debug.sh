#!/bin/bash
if [[ -z "${ANDROID_HOME}" ]]; then
    echo "ANDROID_HOME not set!";
    exit 1;
fi
$ANDROID_HOME/platform-tools/adb shell pm clear org.mtransit.android.debug