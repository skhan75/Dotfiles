syntax on
filetype plugin indent on 

set nocompatible
set hidden
set mouse=a
set guicursor=
set nohlsearch
set relativenumber
set ruler
set laststatus=2
set visualbell
set number
set encoding=utf-8
set ignorecase
set magic
set noerrorbells
set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set smartindent
set nu
set showmode
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
set cmdheight=2
set updatetime=300 
set scrolloff=10
set noshowmode
set omnifunc=syntaxcomplete#Complete
set background=dark

" incremental substitution (neovim)
if has('nvim')
    set inccommand=split
end

set termguicolors

set t_Co=256

if !has('gui_running')
  set t_Co=256
endif
