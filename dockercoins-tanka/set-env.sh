#!/bin/bash

set -o pipefail

echo "Waiting to complete"; while [ ! -f /opt/.backgroundfinished ] ; do sleep 2; done; echo "Done"

echo "Installing packages"
echo "Sponge"
apt install -y moreutils
echo "tasks"
curl -sL https://taskfile.dev/install.sh | sh
echo "tanka"
curl -L -o "$HOME/bin/tk" https://github.com/grafana/tanka/releases/download/v0.10.0/tk-linux-amd64
chmod a+rx "$HOME/bin/tk"
echo "jsonnet"
pip install jsonnet
echo "export PATH=\$PATH:\$HOME/bin" >> "$HOME/.bashrc"

source "$HOME/.bashrc"
