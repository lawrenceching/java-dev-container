#!/bin/bash

cp /tmp/.bashrc ~/.bashrc

apt update
apt install -y ca-certificates

bash /tmp/use-source.sh /tmp/source.list.mainland-china

apt update
apt install -y openssh-server neovim htop tmux wget curl jq

bash /tmp/install-java.sh