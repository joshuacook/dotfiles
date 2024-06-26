#!/bin/zsh

zsh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sed -i 's/\[\[ -z ${AG_NO_CONTEXT+x} \]\] \&\& prompt_context/# &/' ~/.oh-my-zsh/themes/agnoster/agnoster.zsh-theme
sed -i 's/^# ZSH_THEME.*/ZSH_THEME="agnoster"/; s/^ZSH_THEME.*/ZSH_THEME="agnoster"/' ~/.zshrc

cp .vimrc ~/.vimrc
cp .sh_aliases ~/.sh_aliases
echo 'source ~/.sh_aliases' >> ~/.zshrc

rm -rf ~/.vim
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle

git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet-vim
git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone https://github.com/ervandew/supertab.git
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/tpope/vim-sensible.git
git clone https://github.com/dense-analysis/ale.git


# Return to the original directory
cd -
