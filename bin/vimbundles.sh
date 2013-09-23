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

dotmatrix_vimbundles=~/dotmatrix/bin/vimbundles.sh
if [ -f $dotmatrix_vimbundles ];
then
    $dotmatrix_vimbundles
fi


get_bundle nanotech jellybeans.vim
get_bundle editorconfig editorconfig-vim
get_bundle kien ctrlp.vim
get_bundle nathanaelkane vim-indent-guides
get_bundle scrooloose nerdtree
get_bundle jistr vim-nerdtree-tabs
get_bundle bling vim-airline
get_bundle Lokaltog vim-easymotion
get_bundle scrooloose syntastic
get_bundle majutsushi tagbar
get_bundle sjl vitality.vim
get_bundle DAddYE html5.vim
get_bundle hail2u vim-css3-syntax
get_bundle evanmiller nginx-vim-syntax
get_bundle terryma vim-multiple-cursors
get_bundle vim-scripts Emmet.vim
get_bundle Shougo neocomplcache
#get_bundle vim-scripts YankRing.vim

vim -c 'call pathogen#helptags()|q'
