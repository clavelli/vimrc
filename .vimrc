source ~/brogramming/vimrc/plugins/.vimrc

" syntax duh
syntax on

set background=light
" colorscheme solarized

" keep track of old commands
set history=200

" Show column number
set ruler

" search with space
noremap <space> /

set noexpandtab
set smarttab

" No one wants to skip the whole multi-line line
noremap j gj
noremap k gk

" line numbers
" set nu
nnoremap <C-n> :set invnu<CR>

" moving between windows
noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l

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
" ctrl-s to close error window
nnoremap <C-i> :SyntasticReset<CR>

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
    \ 'file': ".pyc"
    \}
let g:ctrlp_max_height = 8

" Go
let g:go_fmt_command = "goimports"

set backspace=indent,eol,start

" Highlight search results
set hls

" Grep
nnoremap gr :!grep -rn --exclude="*/tests/*" --exclude="*.swp" --exclude="*.pyc" --exclude="*\.min\.*" <cword> *<CR>

" Fix commenting derp in python files
au! FileType python setl nosmartindent

au BufNewFile,BufRead *.json set filetype=json

set visualbell

source ~/brogramming/vimrc/abbreviations

let mapleader = "q"
nnoremap <leader>ev :vsplit ~/brogramming/vimrc/.vimrc<cr>
nnoremap <leader>sv :source ~/brogramming/vimrc/.vimrc<cr>
