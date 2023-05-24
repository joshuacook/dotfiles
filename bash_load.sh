#!/bin/bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
sed -i 's/\[\[ -z ${AG_NO_CONTEXT+x} \]\] \&\& prompt_context/# &/' ~/.oh-my-bash/themes/agnoster/agnoster.theme.sh
sed -i 's/^# OSH_THEME.*/OSH_THEME="agnoster"/; s/^OSH_THEME.*/OSH_THEME="agnoster"/' ~/.bashrc
cp .bash_profile ~/.bash_profile
cp .vimrc ~/.vimrc
rm -rf ~/.vim
apt install curl -y
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle
git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet-vim
git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/tpope/vim-sensible.git
git clone https://github.com/dense-analysis/ale.git
source ~/.bash_profile
cd -                                                                                                                                    
