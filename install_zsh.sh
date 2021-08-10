#!/bin/bash

echo Downloading ZSH...

cd ~

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo ZSH installed!