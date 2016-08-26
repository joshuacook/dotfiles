#!/bin/bash
cp ~/.bash_profile .bash_profile
rm -rf .bash 
cp -R ~/.bash .bash
cp ~/.vimrc .vimrc

git add -A 
git commit -m 'update dotfiles'
git push
