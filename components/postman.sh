#!/usr/bin/env bash
#
# References:
#    
#
echo -e "\n===== \e[1m\e[97mInstalling Postman\e[0m ====="
POSTMAN_INSTALL_DIR="/opt/postman"
POSTMAN_INSTALLER_FILE="/tmp/postman.tar.gz"
if [[ ! -f $POSTMAN_INSTALLER_FILE ]]; then
    echo "> Downloading lastest Postman version..."
    curl -L -o "$POSTMAN_INSTALLER_FILE" "https://dl.pstmn.io/download/latest/linux64"
fi
echo "> Installing Postman..."
sudo mkdir -p "$POSTMAN_INSTALL_DIR"
sudo tar -xzf "$POSTMAN_INSTALLER_FILE" -C "$POSTMAN_INSTALL_DIR/"
rm -rf "$POSTMAN_INSTALLER_FILE"
if [[ ! -f /usr/bin/postman ]]; then
    sudo ln -s /opt/postman/Postman/Postman /usr/bin/postman
fi