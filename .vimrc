

" detect file changes automatically
set autoread

" show the position of the cursor
set ruler

" syntax duh
syntax on

" search with space
map <space> /

" Highlight search results
" set hls

" No one wants to skip the whole multi-line line
map j gj
map k gk

" line numbers
set nu
highlight LineNr ctermfg=blue

" moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" press q to find cursor
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
map q :set cursorline! cursorcolumn!<CR>


" tab spacing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ai " auto indent
set si " smart indent


""" Plugins and stuff """

" Pathogen
execute pathogen#infect()
filetype plugin indent on

" Syntastic
let g:syntastic_objc_checkers = []
let g:syntastic_python_checkers = ['flake8']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=0
"let g:syntastic_check_on_open=1


