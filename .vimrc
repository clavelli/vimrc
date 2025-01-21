source ~/brogramming/vimrc/plugins/.vimrc

" syntax duh
syntax on

set background=light
colorscheme evening

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
let g:ale_linters = { "python": ["ruff"] }
let g:ale_fixers = { "python": ["ruff", "ruff_format"], "typescript": ["prettier"], "typescriptreact": ["prettier"], "html": ["eslint-plugin-jinja"] }
let g:ale_python_ruff_options = "--config /Users/jasonclavelli/brogramming/model/ruff.toml"
let g:ale_python_ruff_format_options = "--config /Users/jasonclavelli/brogramming/model/ruff.toml"
" let g:ale_python_black_options = "-l 89"
" let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
" let g:syntastic_objc_checkers = []
" let g:syntastic_python_checkers = ['flake8', 'semgrep']
" let g:syntastic_python_semgrep_args = '--config=/Users/jason/beam/cinderblock/semgrep.yaml --severity=ERROR'
" let g:syntastic_python_flake8_args='--ignore=F541,E741,W504,W503,Q003,E127'
" " let g:syntastic_javascript_checkers=['tsc']
" " let g:syntastic_typescriptreact_checkers=['tsc']
" let g:syntastic_html_checkers = []
" let g:syntastic_auto_loc_list=1
" let g:syntastic_enable_signs=1
" let g:syntastic_check_on_wq=1
" "let g:syntastic_check_on_open=1
" " ctrl-s to close error window
" nnoremap <C-i> :SyntasticReset<CR>

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
    \ 'file': '\v(\.pyc|\.gitignore|\.DS_Store|\.swp)',
    \ 'dir': '\v(node_modules|\.git|\.next)'
    \}
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_height = 8

nnoremap <C-z> :CtrlPClearAllCaches<CR>

set backspace=indent,eol,start

" Highlight search results
set hls

" Grep
" replaced with :Rg
" nnoremap gr :!grep -rn --exclude="*/.terraform/*" --exclude="*/tests/*" --exclude="node_modules/*" --exclude="*.swp" --exclude="*.pyc" --exclude="*\.min\.*" --exclude="*/\.next/*" --exclude="tsconfig.tsbuildinfo" <cword> *<CR>

nnoremap gn :w <CR> :exe "!tmux send -t cb:test 'pytest -n0 " . expand('%') .  " ' Enter" <CR><CR> :exe "!tmux select-window -t cb:test" <CR><CR>
nnoremap gb :w <CR> :exe "!tmux send -t cb:test 'pytest " . expand('%') .  " ' Enter" <CR><CR> :exe "!tmux select-window -t cb:test" <CR><CR>
nnoremap gp Oprint(0)<esc>h

" Fix commenting derp in python files
au! FileType python setl nosmartindent

au BufNewFile,BufRead *.json set filetype=json

set visualbell

source ~/brogramming/vimrc/abbreviations

" TODO I don't think mapleader works the way I think it does
let mapleader = "g"
nnoremap <leader>sc mxvis"*y'x

nnoremap <leader>ev :vsplit ~/brogramming/vimrc/.vimrc<cr>
nnoremap <leader>sv :source ~/brogramming/vimrc/.vimrc<cr>
nnoremap <silent> <leader>fn :let @+ = expand("%")<cr>
" open quickfix in new pane
autocmd! FileType qf nnoremap <buffer> <leader><Enter> <C-w><Enter><C-w>L

hi Search cterm=NONE ctermfg=white ctermbg=blue

set rtp^="/Users/jasonclavelli/.opam/default/share/ocp-indent/vim"

function! StartOfBlock(count) abort
    let l:target_indent = a:count ? 4 * (a:count - 1) : 0
    let l:start = line('.')
    while l:start > 1 && (getline(l:start) == '' || indent(l:start) > l:target_indent)
        let l:start -= 1
    endwhile
    while l:start >= 1 && getline(l:start) != '' && indent(l:start) == l:target_indent
        let l:start -= 1
    endwhile
	let l:start += 1
	return l:start
endfunction

function! EndOfBlock(count) abort
    let l:target_indent = a:count ? 4 * (a:count - 1) : 0
    let l:cursor = line('.')
    let l:end = l:cursor
    while l:end <= line('$') && (getline(l:end) == '' || indent(l:end) > l:target_indent)
        let l:end += 1
    endwhile
	let l:end -= 1
    while getline(l:end) == ''
        let l:end -= 1
    endwhile
	return l:end
endfunction


function! IndentBlock(count) abort
	let l:start = StartOfBlock(count)
	let l:end = EndOfBlock(count)
    execute 'normal! ' . l:start . 'G0V' . l:end . 'G$'
endfunction

onoremap <silent>ib :<c-u>call IndentBlock(v:count1)<cr>
onoremap <silent>ab :<c-u>call IndentBlock(v:count1)<cr>
xnoremap <silent>ib :<c-u>call IndentBlock(v:count1)<cr>
xnoremap <silent>ab :<c-u>call IndentBlock(v:count1)<cr>


" source ~/beam/vim-plugins/beamai.vim
