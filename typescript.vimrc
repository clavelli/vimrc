setlocal re=0
setlocal tabstop=2
setlocal shiftwidth=2
setlocal softtabstop=2
setlocal expandtab

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <C-g>rn <Plug>(coc-rename)
imap <silent><expr> <C-g>h coc#refresh()
nmap <silent><expr> <C-g>h "hea\<C-g>h"

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nnoremap <silent> <c-g>k :call <SID>show_documentation()<CR>
nmap <silent> <c-g>j <Plug>(coc-definition)
nmap <silent> <c-g>t :vs<CR><c-w>T<Plug>(coc-definition)
nmap <silent> <c-g>v :vs<CR><Plug>(coc-definition)

" sometime the LSP randomly derps, so do :KILLTS to restart it
command! -nargs=0 KILLTS :call CocActionAsync('runCommand', 'tsserver.restart')
