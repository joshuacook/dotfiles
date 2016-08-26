#!/bin/bash
git pull
cp .bash_profile ~/.bash_profile
rm -rf ~/.bash
cp -R .bash ~/.bash
cp .vimrc ~/.vimrc
rm -rf ~/.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone git@github.com:ctrlpvim/ctrlp.vim.git
git clone git@github.com:ervandew/supertab.git
git clone git@github.com:majutsushi/tagbar.git
git clone git@github.com:vim-airline/vim-airline.git
git clone git@github.com:tpope/vim-sensible.git
source ~/.bash_profile
cd -                                                                                                                                    
