#!/usr/bin/env bash
#
# References: 
#   - https://docs.docker.com/engine/install/ubuntu/#installation-methods
#
echo -e "\n===== \e[1m\e[97mInstalling Docker\e[0m ====="
if [[ ! -f /etc/apt/keyrings/docker.gpg ]]; then
echo "> Download and install the Docker signing key."
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
fi
echo "> Installing Docker and Docker Compose."
sudo apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin
