#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

if [ $(whoami) != "root" ]; then
	echo "This script needs sudo."
	sudo echo ''
fi

bash "$SCRIPT_DIR/utils/update_all.sh"
bash "$SCRIPT_DIR/tools/install_git.sh"
bash "$SCRIPT_DIR/tools/install_node.sh"
bash "$SCRIPT_DIR/tools/install_python.sh"
bash "$SCRIPT_DIR/tools/install_snap.sh"
bash "$SCRIPT_DIR/tools/install_vscode.sh"
bash "$SCRIPT_DIR/tools/install_discord.sh"
