#!/bin/bash

echo "Downloading golang... (version: $1)"

cd ~

curl -O https://storage.googleapis.com/golang/go$1.linux-amd64.tar.gz

echo Extracting...

tar -xzf go$1.linux-amd64.tar.gz

rm -rf go$1.linux-amd64.tar.gz

echo Setting up...

sudo mv go /usr/local

echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bash_profile
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.zshrc

go version

echo Done!