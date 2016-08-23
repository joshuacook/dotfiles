#!/bin/bash
git pull
cp .bash_profile ~/.bash_profile
rm -rf ~/.bash
cp -R .bash ~/.bash
cp .vimrc ~/.vimrc
rm -rf ~/.vim
cp -R .vim ~/.vim
source ~/.bash_profile
cd
