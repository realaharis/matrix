#!/bin/bash
set -e

REPO_URL="https://github.com/realaharis/matrix.git"
INSTALL_DIR="/opt/matrix"

echo "[i] Downloading Matrix One-Command installer..."

if [ ! -d "$INSTALL_DIR" ]; then
  git clone "$REPO_URL" "$INSTALL_DIR"
fi

cd "$INSTALL_DIR"

chmod +x install.sh scripts/*.sh

./install.sh
