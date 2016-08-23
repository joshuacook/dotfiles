#!/bin/bash
cp ~/.bash_profile .bash_profile
rm -rf .bash 
cp -R ~/.bash .bash
cp ~/.vimrc .vimrc
rm -rf .vim
cp -R ~/.vim .vim

if [ "$1" == "" ]; then
  git add .
  git commit -m 'update dotfiles'
  git push
fi  


while [ "$1" != "" ] ; do
  case "$1" in
    aliases)
       git add .bash/.bash_a*
       git commit -m 'update aliases'
       git push
       ;;
    functions)
       git add .bash/.bash_f*
       git commit -m 'update functions'
       git push
       ;;
    vim)
       git add .vim .vimrc
       git commit -m 'update vim'
       git push
       ;;
    *)
       error $1
       exit -1
       ;;
  esac
  shift
done
