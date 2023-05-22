#!/usr/bin/env bash
# 
# Development Environment Installer for Ubunt 20.04
#
if [[ ! -f /etc/os-release ]]; then
  echo "UndefinedOSError: Unable to determine the OS version."
  exit 2
fi

source /etc/os-release

if [[ "$ID" -ne "ubuntu" ]]; then 
    echo "UnsupportedOSDistributionError: Unsopported Linux distribution $ID, must be ubuntu."
    exit 3
fi

source components/shared.sh
source components/python.sh
source components/php.sh
source components/nodejs.sh
source components/jetbrains.sh
source components/postman.sh
source components/connect.sh

