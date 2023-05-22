#!/usr/bin/env bash
#
# References:
#    
#
echo -e "\n===== \e[1m\e[97mInstalling Shared Tools\e[0m ====="
sudo apt install \
    ca-certificates curl apt-transport-https lsb-release gnupg mlocate tree sqlite3 libfuse2 \
    rsync zip unzip dos2unix cowsay gcc g++ make git software-properties-common build-essential