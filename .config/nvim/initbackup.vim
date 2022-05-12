" Plugins
source $HOME/.config/nvim/plugins/plugins.vim
source $HOME/.config/nvim/plugins/colorscheme.vim

" Sets and Global configurations
source $HOME/.config/nvim/plugins/sets.vim
source $HOME/.config/nvim/settings/globals.vim

" Plug Configs
source $HOME/.config/nvim/plug-config/syntastic.vim
source $HOME/.config/nvim/plug-config/coc.vim 
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/comfortable-motion.vim
source $HOME/.config/nvim/plug-config/lightline.vim
source $HOME/.config/nvim/plug-config/treesitter.vim
source $HOME/.config/nvim/plug-config/ultisnips.vim
source $HOME/.config/nvim/plug-config/markdown-syntax.vim
source $HOME/.config/nvim/plug-config/markdown-preview.vim
source $HOME/.config/nvim/plug-config/pandoc.vim
source $HOME/.config/nvim/plug-config/nerdtree-commenter.vim

" Key Mappings
source $HOME/.config/nvim/settings/keymaps.vim


"autocmd FileType markdown nnoremap <buffer> <tab> :UltiSnipsExpandTrigger<CR>

" Function to do multi line batch replace with list of words
function! SelectAndReplace(replacer, ...)
    let args = a:000
    let selectStart = line("'<") 
    let selectEnd= line("'>")
    if (len(args) != (selectEnd - selectStart + 1))
        throw "Invalid combination"
    endif
    let l:starter = selectStart
    for a in args
        execute l:starter . 's/' . a:replacer . '/' . a . '/g'  
        let l:starter += 1
    endfor
endfunction
