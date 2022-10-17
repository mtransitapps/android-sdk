#!/bin/bash
if [[ -z "${ANDROID_HOME}" ]]; then
    echo "ANDROID_HOME not set!";
    exit 1;
fi

MT_PACKAGES=$($ANDROID_HOME/platform-tools/adb shell pm list packages -u | grep "org.mtransit.android" | grep ".debug" | sort);

PREFIX="package:";

for PKG in $MT_PACKAGES ; do
    PKG_=${PKG#"$PREFIX"}
    echo "> Package: $PKG_ > clearing...";
    $ANDROID_HOME/platform-tools/adb shell pm clear $PKG_;
    RESULT=$?;
    if [[ ${RESULT} != 0 ]]; then
		echo "> FAILED, AGAIN AND AGAIN, FAILED, AGAIN AND AGAIN, FAILED, AGAIN AND AGAIN";
		exit ${RESULT};
    fi
    echo "> Package: $PKG_ > clearing... DONE";
done
