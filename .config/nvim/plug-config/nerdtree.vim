let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ 'Untracked' :'✭',
    \ 'Staged'    :'✚',
    \ 'Modified'  :'✹',
    \ 'Renamed'   :'➜',
    \ 'Unmerged'  :'═',
    \ 'Deleted'   :'✖',
    \ 'Dirty'     :'✗',
    \ 'Ignored'   :'☒',
    \ 'Clean'     :'✔︎',
    \ 'Unknown'   :'?',
\ }

let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusWithFlags = 1

nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p
