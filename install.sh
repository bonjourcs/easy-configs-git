#!/bin/bash
GIT_CONFIG_FILE=~/.gitconfig
MODULE_DIR=gitconf

git clone https://github.com/bonjourcs/easy-configs-git $MODULE
if [ -e $GIT_CONFIG_FILE ]; then
	mv $GIT_CONFIG_FILE $GIT_CONFIG_FILE.bak
fi
cd $MODULE_DIR && cp .gitconfig ~/
rm -rf $MODULE_DIR

echo "Done!"
