source ~/vimrc/plugins/.vimrc

" syntax duh
syntax on

set background=light
colorscheme solarized

" keep track of old commands
set history=200

" search with space
map <space> /

set noexpandtab
set smarttab

" Highlight search results
" set hls

" No one wants to skip the whole multi-line line
map j gj
map k gk

" line numbers
set nu

" moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" tab spacing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set ai " auto indent
set si " smart indent

" Syntastic
let g:syntastic_objc_checkers = []
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_html_checkers = []
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=1
"let g:syntastic_check_on_open=1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
    \ 'file': ".pyc"
    \}

set backspace=indent,eol,start

set hls
