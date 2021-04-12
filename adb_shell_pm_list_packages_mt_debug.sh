#!/bin/bash
CURRENT_DIR=$(dirname "$0");
$CURRENT_DIR/adb_shell_pm_list_packages_mt.sh | grep --color -i ".debug";