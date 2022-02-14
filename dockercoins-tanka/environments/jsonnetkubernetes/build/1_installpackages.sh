#!/bin/bash

echo "tasks"
mkdir /tmp/task
curl -Ls -o "/tmp/task/task_linux_amd64.tar.gz" https://github.com/go-task/task/releases/download/v3.10.0/task_linux_amd64.tar.gz
cd "/tmp/task" || echo "fail to cd"
tar -xzf task_linux_amd64.tar.gz
mv task "$HOME/go/bin/task"
chmod a+rx "$HOME/go/bin/task"
rm -rf "/tmp/task"

cd -

echo "jb"
GO111MODULE="on" go get github.com/jsonnet-bundler/jsonnet-bundler/cmd/jb

echo "Tanka"
curl -Ls -o "$HOME/go/bin/tk" https://github.com/grafana/tanka/releases/download/v0.10.0/tk-linux-amd64
chmod a+rx "$HOME/go/bin/tk"

echo "jsonnet"
pip install jsonnet

echo "Installing packages"
echo "Sponge"
#apt-get  autoremove -qy || echo "OK"
apt-get install -qy moreutils gettext || echo "Done"

echo "ready to go !!!"