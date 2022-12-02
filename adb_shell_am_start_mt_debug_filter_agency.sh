#!/bin/bash
if [[ -z "${ANDROID_HOME}" ]]; then
    echo "ANDROID_HOME not set!";
    exit 1;
fi
$ANDROID_HOME/platform-tools/adb shell am start \
-n org.mtransit.android.debug/org.mtransit.android.ui.SplashScreenActivity \
--es "filter_screen" "home" \
--es "force_lang" "en-US" \
--es "filter_agency_authority" $@ \
;