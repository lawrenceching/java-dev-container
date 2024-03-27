#!/bin/bash

# Check if the script is run as root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "root:changeme" | chpasswd

cp /tmp/.bashrc ~/.bashrc

apt update

#apt install -y ca-certificates
#bash /tmp/use-source.sh /tmp/source.list.mainland-china
#apt update

apt install -y openssh-server git neovim htop tmux wget curl jq

chmod +x /tmp/*.sh
bash /tmp/install-java.sh "$JDK_VERSION"

cp /tmp/sshd_config /etc/ssh/sshd_config

mkdir -p ~/.ssh
cp /tmp/authorized_keys ~/.ssh/authorized_keys

mv /tmp/entry.sh /entry.sh
rm -rf /tmp/*