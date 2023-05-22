#!/usr/bin/env bash
#
# References:
#    
#
echo -e "\n===== \e[1m\e[97mInstalling Microsoft Azure Tools\e[0m ====="
echo "> Installing Azure CLI."
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
echo "> Installing Azure Function Core Tools."
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/microsoft-ubuntu-$(lsb_release -cs)-prod $(lsb_release -cs) main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-get install azure-functions-core-tools-4
