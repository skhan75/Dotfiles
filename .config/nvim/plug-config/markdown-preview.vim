" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 1 

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 0

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" specify browser to open preview page
" default: ''
" let g:mkdp_browser = 'chrome'

nnoremap <C-s> :MarkdownPreview<CR>
nnoremap <M-s> :MarkdownPreviewStop<CR>
nnoremap <M-p> :MarkdownPreviewToggle<CR>
