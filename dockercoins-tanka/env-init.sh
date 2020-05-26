#!/bin/bash -x

#echo "Waiting to complete"; while [ ! -f /opt/.backgroundfinished ] ; do sleep 2; done; echo "Done"

echo "Installing packages"
echo "Sponge"
apt-get install -y moreutils gettext

echo "tasks"
curl -sL https://taskfile.dev/install.sh -o install.sh
bash install.sh

echo "tanka"
curl -Ls -o "$HOME/go/bin/tk" https://github.com/grafana/tanka/releases/download/v0.10.0/tk-linux-amd64
chmod a+rx "$HOME/go/bin/tk"

echo "jsonnet"
pip install jsonnet

echo "export PATH=\$PATH:\$HOME/go/bin" >> "$HOME/.bashrc"

source "$HOME/.bashrc"
