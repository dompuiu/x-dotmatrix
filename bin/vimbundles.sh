#!/usr/bin/env bash

remove_bundle() {
  (
    echo "Removing bundle $1"
    rm -rf $1
  )
}

dotmatrix_vimbundles=~/dotmatrix/bin/vimbundles.sh
if [ -f $dotmatrix_vimbundles ];
then
    $dotmatrix_vimbundles
fi

cd ~/.vim/bundle/
remove_bundle bufexplorer.zip
remove_bundle ack.vim
remove_bundle supertab
remove_bundle bufkill.vim
remove_bundle vim-javascript
remove_bundle vim-vividchalk
remove_bundle vim-hashrocket
cd -

vim -c 'call pathogen#helptags()|q'

cd ~/.vim/bundle/vimproc.vim
make -f make_mac.mak
cd -

cd ~/.vim/bundle/tern_for_vim
npm install
cd -
