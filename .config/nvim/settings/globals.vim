" highlight ColorColumn ctermbg=0
hi Normal guibg=NONE ctermbg=NONE

let g:netrw_browse_split = 2
let g:netrw_banner = 0 
let base16colorspace=256
let g:ctrlp_use_caching = 0

if executable('rg')
    let g:rg_derive_root='true'
endif

