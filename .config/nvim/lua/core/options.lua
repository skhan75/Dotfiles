local opt = vim.opt
local cmd = vim.cmd

local options = {
    -- General
    mouse = 'a',                         -- Enable mouse support
    clipboard = 'unnamedplus',           -- Copy/paste to show on system board
    swapfile = false,                    -- Creates a swapfile
    completeopt = 'menuone,noselect',    -- Autocomplete options
    relativenumber = true,               -- Set relative number lines
    ruler = true,                        -- Always show cursor position
    laststatus = 2,                      -- Always display the status bar
    incsearch = true,                    -- Incremental search that shows partial matches
    showmatch = true,
    visualbell = true,                   -- Flash the screen instead of beeping on errors
    scrolloff = 8,
    conceallevel = 0,                    -- So that `` is visible in markdown files
    -- Set the behavior of tab
    tabstop = 2,
    shiftwidth = 2,
    softtabstop = 2,
    expandtab = true,
    smartindent = true,
    -- Neovim UI
    number = true,                      -- Show line number
    foldmethod = 'marker',              -- Enable folding
    colorcolumn = '80',                 -- Line length marker
    cmdheight = 2,
    splitright = true,                  -- Force all vertical splits to go to the right of current window
    splitbelow = true,                  -- Force all horizontal splits to go below current window
    cursorline = true,
    ignorecase = true,                  -- Ignore case letters when search
    smartcase = true,                   -- Ignore lowercase for the whole pattern
    linebreak = true,                   -- Wrap on word boundary
    termguicolors = true,               -- Enable 24-bit RGB colors
    wrap = true,
    background = 'dark',
    -- Memory, CPU
    hidden = true,
    history = 100,                     -- Remember N lines in history
    lazyredraw = true,                 -- Faster scrolling
    synmaxcol = 240,                   -- Max column for syntax highlight
    updatetime = 300,                  -- ms to wait for trigger 'document_highlight'
}


opt.shortmess:append "c"

for k,v in pairs(options) do
    vim.opt[k] = v
end


cmd "set whichwrap+=<,>,[,],h,l"
cmd [[set iskeyword+=-]]
cmd ':set nohlsearch'

