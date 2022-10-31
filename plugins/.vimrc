" vundle stuff
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'cespare/vim-toml'
Plugin 'tpope/vim-surround'

call vundle#end()

filetype plugin indent on
