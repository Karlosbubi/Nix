#!/usr/bin/bash

# Copy Files
mkdir ~/.gpg
cp ./data/gpg/* ~/.gpg/

# Import
gpg --import ~/.gpg/privatekey.asc
gpg --import ~/.gpg/publickey.asc