#!/usr/bin/bash

git config --global user.name $GIT_NAME
git config --global user.email $GIT_MAIL
git config --global user.signingkey $GIT_KEY

git config --global commit.gpgsign true
git config --global tag.gpgSign true
