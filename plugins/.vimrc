" vundle stuff
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
" Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
" Plugin 'cespare/vim-toml'
Plugin 'tpope/vim-surround'
Plugin 'hashivim/vim-terraform'
" Plugin 'Quramy/tsuquyomi'
" Plugin 'tenfyzhong/autoflake.vim'
Plugin 'jremmen/vim-ripgrep'
Plugin 'neoclide/coc.nvim'
Plugin 'returntocorp/semgrep.vim'
Plugin 'dense-analysis/ale'
Plugin 'alexkuz/eslint-plugin-jinja'

call vundle#end()

filetype plugin indent on
