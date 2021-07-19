#!/bin/bash
PRE_SCRIPT_PWD="$( pwd )"
INSTALL_DIR="$HOME/.os_setup_install_${whoami}"

mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR"

git clone https://github.com/Brian3647/os_setup .

sudo bash main.sh

cd "$PRE_SCRIPT_PWD"
rm -rf "$INSTALL_DIR"
