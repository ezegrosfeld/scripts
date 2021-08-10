#!/bin/bash

echo "Creating ssh for github user: $1"

ssh-keygen -t rsa -b 4096 -C "$1"

eval "$(ssh-agent -s)"

ssh-add

echo "Your public key is: \n"
cat ~/.ssh/id_rsa.pub