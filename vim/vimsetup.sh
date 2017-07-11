#!/bin/bash

# to downgrade do...
sudo apt install ppa-purge && sudo ppa-purge ppa:jonathonf/vim -y

# uninstall vim
sudo apt-get update -y
sudo apt-get remove --purge vim -y
sudo apt-get remove --purge vim-common -y
sudo apt-get remove --purge vim-runtime -y

# delete old stuff
rm -rf .vim
rm .vimrc

# upgrade to the latest versions
sudo add-apt-repository ppa:jonathonf/vim -y
sudo apt-get update -y
sudo apt-get install vim -y

# downgrade to vim 7
sudo add-apt-repository --remove ppa:jonathonf/vim -y

git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/bundle/vim-airline-themes
git clone https://github.com/tomasr/molokai  ~/.vim/bundle/molokai
git clone https://github.com/vim-syntastic/syntastic ~/.vim/bundle/syntastic
git clone https://github.com/xolox/vim-misc ~/.vim/bundle/vim-misc
git clone https://github.com/xolox/vim-easytags ~/.vim/bundle/vim-easytags
git clone https://github.com/majutsushi/tagbar ~/.vim/bundle/tagbar
git clone https://github.com/kien/ctrlp.vim ~/.vim/bundle/ctrlp.vim
git clone https://github.com/vim-scripts/a.vim ~/.vim/bundle/a.vim
git clone https://github.com/Raimondi/delimitMate ~/.vim/bundle/deliMate
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
git clone https://github.com/airblade/vim-gitgutter ~/.vim/bundle/vim-gitgutter
git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle/vim-fugitive
git clone https://github.com/scrooloose/nerdtree ~/.vim/bundle/nerdtree
