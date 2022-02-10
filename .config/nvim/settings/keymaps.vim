" Remap leader key
let mapleader = " "

" Resize vertical split windows
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" changes the keymaping for Esc while in insert mode to jk  
inoremap jk <Esc>

" YCM Configuration
"nnoremap <silent><Leader>gd :YcmCompleter GoTo<CR>
"nnoremap <silent><Leader>gf :YcmCompleter FixIt<CR>

" Move visually selected lines up or down in various modes
nnoremap K :m .-2<CR>==
nnoremap J :m .+1<CR>==
vnoremap K :m '<-2<CR>gv=gv
vnoremap J :m '>+1<CR>gv=gv

" Telescope Configuration
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({search = vim.fn.input(" Grep for > ")})<CR>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Remapping source $MYVIMRC
nnoremap <Leader>ss :source $MYVIMRC<CR>

" Ctrl-S for saving the file only when there are changes to update
noremap <silent> <C-S> :update<CR>

" Ctrl-Q for quiting the file 
noremap <silent> <C-Q> :q!<CR>

" Open File Tree 
nnoremap <leader>pv :vs \| :Ex \| vertical resize -30<CR>
