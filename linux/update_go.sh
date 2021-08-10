#!/bin/bash

echo "Updating golang... (version: $1)"

cd ~

curl -O https://storage.googleapis.com/golang/go$1.linux-amd64.tar.gz

echo Extracting...

tar -xzf go$1.linux-amd64.tar.gz

rm -rf go$1.linux-amd64.tar.gz

echo Updating...

sudo rm -rf /usr/local/go

sudo mv go /usr/local

go version

echo Done!