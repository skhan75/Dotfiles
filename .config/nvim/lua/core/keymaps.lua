local cmd = vim.cmd

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
   if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map Esc to jk in Insert Mode
map('i', 'jk', '<Esc>')

-- Set leader to Space
map(
    "",
    "<Space>",
    "<Nop>",
    { noremap = true, silent = true }
)
vim.g.maplocalleader = " "
vim.g.mapleader = " "

-- Move text up and down
map("n", "J", ":m .+1<CR>==")
map("n", "K", ":m .-2<CR>==")
map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "J", ":m '>+1<CR>gv=gv")

-- Telescope Keybindings
--map("n", "<leader>sf", "<cmd>lua require('telescope.builtin').find_files()<cr>")
--map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
--map("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")


