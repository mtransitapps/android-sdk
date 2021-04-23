#!/bin/bash
if [[ -z "${ANDROID_HOME}" ]]; then
    echo "ANDROID_HOME not set!";
    exit 1;
fi
PIDCAT="pidcat.py";
if [[ ! -f "$ANDROID_HOME/$PIDCAT" ]]; then
    echo "'$PIDCAT' does not exist in '$ANDROID_HOME'!"
    exit 1;
fi
$ANDROID_HOME/$PIDCAT -t "MT" org.mtransit.android