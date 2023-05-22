#!/usr/bin/env bash
#
# References:
#   - https://www.jetbrains.com/es-es/lp/mono/
#   - https://www.jetbrains.com/toolbox-app/
#
echo -e "\n===== \e[1m\e[97mInstalling JetBrains Toolbox App and Fonts\e[0m ====="
TOOLBOX_INSTALL_DIR="/opt/jetbrains"
TOOLBOX_BIN_FILE="$TOOLBOX_INSTALL_DIR/jetbrains-toolbox"
if [[ ! -f $TOOLBOX_BIN_FILE ]]; then
    TOOLBOX_INSTALLER_FILE="/tmp/jetbrains-toolbox.tar.gz"
    echo "> Downloading latest Jetbrains Toolbox App verison..."
    curl -L -o "$TOOLBOX_INSTALLER_FILE" "https://data.services.jetbrains.com/products/download?platform=linux&code=TBA"
    echo "> Installing Jetbrains Toolbox App..."
    sudo mkdir -p "$TOOLBOX_INSTALL_DIR"
    sudo tar -xzf "$TOOLBOX_INSTALLER_FILE" -C "$TOOLBOX_INSTALL_DIR/" --strip-components=1
    rm -rf "$TOOLBOX_INSTALLER_FILE"
else
    echo "> JetBrains Toolbox App already installed."
fi

MONO_INSTALL_DIR='/usr/share/fonts'
MONO_FONT_FILE="$MONO_INSTALL_DIR/ttf/JetBrainsMono-Regular.ttf"
if [[ ! -f $MONO_FONT_FILE ]]; then
    MONO_TMP_DIR='/tmp/jetbrains-mono'
    MONO_INSTALLER_FILE="$MONO_TMP_DIR/jetbrains-mono.zip"
    mkdir -p $MONO_TMP_DIR
    curl -L -o "$MONO_INSTALLER_FILE" "https://data.services.jetbrains.com/products/download?platform=zip&code=MF"
    unzip $MONO_INSTALLER_FILE fonts/* -d $MONO_TMP_DIR
    sudo mv $MONO_TMP_DIR/fonts/* $MONO_INSTALL_DIR
    rm -rf $MONO_TMP_DIR
else
    echo "> JetBrains Mono already installed."
fi
