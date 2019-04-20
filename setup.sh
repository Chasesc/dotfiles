#!/bin/sh

echo "backing up"
mv ~/.vimrc ~/.vimrc.bk

echo "making symlinks"
ln -sf "$(pwd -P)/vimrc" ~/.vimrc

echo "done"
