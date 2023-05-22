#!/usr/bin/env bash
#
# References:
#    
#
echo -e "\n===== \e[1m\e[97mInstalling NodeJS Interpreter and Yarn\e[0m ====="
echo "> Download and install the Yarn signing key."
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | 
  gpg --dearmor | 
  sudo tee /usr/share/keyrings/yarnkey.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | 
  sudo tee /etc/apt/sources.list.d/yarn.list
echo "> Installin NodeJS v18 Repository."
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
echo "> Installing NodeJS and Yarn."
sudo apt install nodejs yarn
