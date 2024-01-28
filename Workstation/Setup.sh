#!/bin/sh
# This contains one time SetUp
source $(dirname -- "${BASH_SOURCE[0]}")/.env

# Primary SSH Key
cp $SSH_PRIVATE_KEY $HOME/.ssh/id_rsa
cp $SSH_PUBLIC_KEY $HOME/.ssh/id_rsa.pub
cp $SSH_CONFIG $HOME/.ssh/config
sudo chmod 600 $HOME/.ssh/id_rsa
sudo chmod 600 $HOME/.ssh/id_rsa.pub
eval $(ssh-agent -s)
ssh-add $HOME/.ssh/id_rsa

# Inital etablishment of in-use config
./Apply.sh