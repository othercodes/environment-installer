#!/usr/bin/env bash
#
# References: 
#   - https://www.zsh.org/
#   - https://ohmyz.sh/#install
#
echo -e "\n===== \e[1m\e[97mInstalling Oh My ZSH\e[0m ====="
sudo apt install zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



