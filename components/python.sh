#!/usr/bin/env bash
#
# References:
#    
#
echo -e "\n===== \e[1m\e[97mInstalling Python Interpreter and Poetry\e[0m ====="
sudo apt install python{3.8,3.9} python{3.8,3.9}-venv
curl -sSL https://install.python-poetry.org | python3 -
# add the path to bashrc (by default)
echo 'export PATH="$HOME/.local/bin:$PATH"' >> .bashrc