syntax on

" Enable Syntax Highlighting
syntax enable

" Set 'nocompatible' to ward off unexpected things that your distro might have
" made, as well as sanely reset options when resourcing .vimrc
set nocompatible

" Helps force plugins to loead correctly when it is turned back on below
filetype off

" Vim with default settings does not allow easy switching between multiple files
" in the same editor window. Users can use multiple split windows or multiple
" tab pages to edit multiple files, but it is still best to enable an option to
" allow easier switching between files.
"
" One such option is the 'hidden' option, which allows you to re-use the same
" window and switch from an unsaved buffer without saving it first. Also allows
" you to keep an undo history for multiple files when re-using the same window
" in this way. Note that using persistent undo also lets you undo in multiple
" files even in the same window, but is less efficient and is actually designed
" for keeping undo history after closing Vim entirely. Vim will complain if you
" try to quit without saving, and swap files will keep you safe if your computer
" crashes
set hidden
set guicursor=
set mouse=a

" Sets the relative number ordering relative to current position for faster j
" and k jumps
set relativenumber

set nohlsearch

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Use visual bell instead of beeping when doing something wrong
set visualbell

"Display the line numbers on the left
set number

set encoding=utf-8

" Ignore case when searching
set ignorecase

" Show matching brackets when text indicator is over them
set magic

set noerrorbells
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set smartindent
set nu

set showmode
" Automatically wraps text that extends beyond the screen length
set wrap

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set showmatch
set laststatus=2
set cursorline
set signcolumn=yes
set colorcolumn=80

" Give more space for displaying messages
set cmdheight=2

" Having longer updatetime (default is 400ms = 4 s) leads to noticeable delays
" and poor user experience
set updatetime=50

" Enable auto completion menu after pressing TAB
set wildmenu

" Sets page scroll when you are n number away from end of screen
set scrolloff=8

if (has("termguicolors"))
    set termguicolors
endif

set omnifunc=syntaxcomplete#Complete

" Lightline configurations
set noshowmode

filetype plugin on

highlight ColorColumn ctermbg=0 guibg=lightgrey

let lightline = {}
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

call plug#begin('~/.vim/plugged')
    Plug 'mhartington/oceanic-next'
    Plug 'tribela/vim-transparent'
    Plug 'jacoborus/tender.vim'
    Plug 'altercation/vim-colors-solarized'
    Plug 'HenryNewcomer/vim-theme-papaya'
    Plug 'morhetz/gruvbox'
    Plug 'scrooloose/nerdtree'
    Plug 'scrooloose/syntastic'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'git@github.com:moll/vim-node.git'
    Plug 'jremmen/vim-ripgrep'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-airline/vim-airline'
    Plug 'mbbill/undotree'
    Plug 'lyuts/vim-rtags'
    Plug 'vim-utils/vim-man'
    Plug 'Valloric/YouCompleteMe'
    Plug 'git@github.com:kien/ctrlp.vim.git'
    Plug 'itchyny/lightline.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'kristijanhusak/vim-hybrid-material'
call plug#end()

"let g:ycm_global_ycm_extra_conf = '/home/khansa/.vim/pluggedYouCompleteMe/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf = '$USER/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:netrw_browse_split = 2
let g:netrw_banner = 0 
let mapleader = " "
let g:ctrlp_use_caching = 0

" Theme
colorscheme OceanicNext
set background=dark

" Access colors present in 256 colorspace
let base16colorspace=256


if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

if !has('gui_running')
  set t_Co=256
endif

if executable('rg')
    let g:rg_derive_root='true'
endif

" Set mapleader key
let mapleader = " "

" Resize vertical split windows
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" Automatically closing braces
inoremap {<CR> {<CR>}<Esc>ko<tab>
inoremap [<CR> [<CR>]<Esc>ko<tab>
inoremap (<CR> (<CR>)<Esc>ko<tab>

" changes the keymaping for Esc while in insert mode to jk  
inoremap jk <Esc>

" YCM Configuration
nnoremap <silent><Leader>gd :YcmCompleter GoTo<CR>
nnoremap <silent><Leader>gf :YcmCompleter FixIt<CR>

" Syntastic Recommended Configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['flake8', 'python3']
" Taken from https://github.com/rust-lang/rust.vim/issues/130
let g:syntastic_rust_rustc_exe = 'cargo check'
let g:syntastic_rust_rustc_fname = ''
let g:syntastic_rust_rustc_args = '--'
let g:syntastic_rust_checkers = ['rustc']


" NERDTree Configuration
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

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

" Function to get the content of selected text
"nmap <C-r>g :call
"vnoremap <C-r>g :call GetSelectedText()
func! GetSelectedText()
  normal gv"xy
  let result = getreg("x")
  normal gv
  return result
endfunc
