local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    -- Have packer manage itself
    use "wbthomason/packer.nvim"
    use "mhartington/oceanic-next"
    use "folke/which-key.nvim"
    use "kyazdani42/nvim-web-devicons"
    use "kyazdani42/nvim-tree.lua"
    use "EdenEast/nightfox.nvim"
    use "lukas-reineke/indent-blankline.nvim"
    use "karb94/neoscroll.nvim"
    use "lewis6991/gitsigns.nvim"
    use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
    use "ahmedkhalf/project.nvim"
    use "lukas-reineke/lsp-format.nvim"

    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate "
    }

    -- Telescope
    use {
        "nvim-telescope/telescope.nvim",
        requires = { {"nvim-lua/plenary.nvim"} },
    }

    use {
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true }
    }
    use {
        "romgrk/barbar.nvim",
        requires = {"kyazdani42/nvim-web-devicons"}
    }

    -- LSP
    use "neovim/nvim-lspconfig"
    use "williamboman/nvim-lsp-installer"
    use("jose-elias-alvarez/null-ls.nvim") --> inject lsp diagnistocs, formattings, code actions, and more ...

    -- CMP Plugins
    use("hrsh7th/nvim-cmp") --> Autocompletion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use("hrsh7th/cmp-nvim-lsp") --> LSP source for nvim-cmp

    -- Snippets
    use("L3MON4D3/LuaSnip") --> Snippets plugin
    use("saadparwaiz1/cmp_luasnip") --> Snippets source for nvim-cmp
end)
