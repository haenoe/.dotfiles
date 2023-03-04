-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    -- General plugins
    use("nvim-lua/plenary.nvim")
    use("nvim-lualine/lualine.nvim", {
        requires = { "kyazdani/nvim-web-devicons", opt = true }
    })
    use("lukas-reineke/indent-blankline.nvim")

    -- Colorschemes
    use("ellisonleao/gruvbox.nvim")
    use("folke/tokyonight.nvim")
    use("catppuccin/nvim", { as = "catppuccin" })

    -- Pretty LSP diagnostics
    use("folke/trouble.nvim", {
        requires = "nvim-tree/nvim-web-devicons",
        config = function ()
            require("trouble").setup()
        end
    })
    use("folke/lsp-colors.nvim")

    -- Completion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-nvim-lsp")

    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

    -- LSP
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use("neovim/nvim-lspconfig")

    -- Fuzzyfinder
    use("nvim-telescope/telescope.nvim")

    -- Formatting etc.
    use("jose-elias-alvarez/null-ls.nvim")

    -- Treesitter
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate",
    })

    -- Game
    use("ThePrimeagen/vim-be-good")
end)
