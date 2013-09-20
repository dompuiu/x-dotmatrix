#!/usr/bin/env bash

mkdir -p ~/.vimbundles
cd ~/.vimbundles

get_bundle() {
  (
  if [ -d "$2" ]; then
    echo "Updating $1's $2"
    cd "$2"
    git pull --rebase
  else
    git clone "git://github.com/$1/$2.git"
  fi
  )
}

#dotmatrix_vimbundles=~/dotmatrix/bin/vimbundles.sh
#if [ -f $dotmatrix_vimbundles ];
#then
#    $dotmatrix_vimbundles
#fi


get_bundle nanotech jellybeans.vim
get_bundle editorconfig editorconfig-vim
get_bundle kien ctrlp.vim
get_bundle nathanaelkane vim-indent-guides
get_bundle scrooloose nerdtree
get_bundle jistr vim-nerdtree-tabs
get_bundle bling vim-airline

vim -c 'call pathogen#helptags()|q'
