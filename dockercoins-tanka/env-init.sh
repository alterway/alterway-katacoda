#!/bin/bash -x

echo "export PATH=\$PATH:\$HOME/go/bin" >> "$HOME/.bashrc"

source "$HOME/.bashrc"

mkdir -p ~/templates/default
mkdir -p ~/templates/dev
mkdir -p ~/templates/qa
mkdir -p ~/templates/prod

#echo "Waiting to complete"; while [ ! -f /opt/.backgroundfinished ] ; do sleep 2; done; echo "Done"

echo "tasks"
curl -sL https://taskfile.dev/install.sh -o install.sh
bash install.sh

echo "tanka"
curl -Ls -o "$HOME/go/bin/tk" https://github.com/grafana/tanka/releases/download/v0.10.0/tk-linux-amd64
chmod a+rx "$HOME/go/bin/tk"

echo "jsonnet"
pip install jsonnet

echo "Installing packages"
echo "Sponge"
#apt-get  autoremove -qy || echo "OK"
apt-get install -qy moreutils gettext || echo "Done"
