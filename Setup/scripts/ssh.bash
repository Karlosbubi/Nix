#!/usr/bin/bash

# copy files
mkdir ~/.ssh
cp ./data/ssh/* ~/.ssh/
# change permissions on file
sudo chmod 700 ~/.ssh
sudo chmod 600 ~/.ssh/*
# start the ssh-agent in the background
eval $(ssh-agent -s)
# make ssh agent to actually use copied key
ssh-add ~/.ssh/id_rsa
