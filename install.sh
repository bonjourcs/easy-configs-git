#!/bin/bash
GIT_REPOSITORY_URL=https://github.com/bonjourcs/easy-configs-git
GIT_CONFIG_FILE=.gitconfig
MODULE_DIR=gitconf

timestamp=$(date +%s)

if [ -d $MODULE_DIR ] || [ -f $MODULE_DIR ]; then
	mv $MODULE_DIR $MODULE_DIR.$timestamp
fi

if [ -e ~/$GIT_CONFIG_FILE ]; then
	mv $GIT_CONFIG_FILE $GIT_CONFIG_FILE.$timestamp
fi

git clone $GIT_REPOSITORY_URL ./$MODULE_DIR

cp $MODULE_DIR/$GIT_CONFIG_FILE ~/

rm -rf $MODULE_DIR

echo "DONE!"