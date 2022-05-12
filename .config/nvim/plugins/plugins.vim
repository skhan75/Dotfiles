call plug#begin('~/.vim/plugged')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/playground'
    Plug 'jacoborus/tender.vim'
    Plug 'preservim/nerdcommenter'

    " Smart Bracket Matching
    Plug 'tmsvg/pear-tree'

    " Color schemes
    Plug 'mhartington/oceanic-next'
    Plug 'morhetz/gruvbox'
    Plug 'glepnir/oceanic-material'
    Plug 'w0ng/vim-hybrid'

    " Syntax
    Plug 'godlygeek/tabular'                 " tabular plugin is used to format tables
    Plug 'elzr/vim-json'                     " JSON front matter highlight plugin
    Plug 'plasticboy/vim-markdown'
    Plug 'vim-pandoc/vim-pandoc'
    Plug 'vim-pandoc/vim-pandoc-syntax'

    " Snippets
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

    " Markdown (needs nodejs and yarn pre installed)
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

    " Nerdtree
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'preservim/nerdtree' |
        \ Plug 'Xuyuanp/nerdtree-git-plugin' |
        \ Plug 'ryanoasis/vim-devicons'
    Plug 'git@github.com:moll/vim-node.git'
    Plug 'scrooloose/syntastic'
    Plug 'jremmen/vim-ripgrep'
    Plug 'tpope/vim-fugitive'
    Plug 'vim-airline/vim-airline'
    Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'mbbill/undotree'
    Plug 'lyuts/vim-rtags'
    Plug 'git@github.com:kien/ctrlp.vim.git'
    Plug 'itchyny/lightline.vim'

    " Navigation / Controls
    Plug 'yuttie/comfortable-motion.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
call plug#end()


