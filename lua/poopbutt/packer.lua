-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'rebelot/kanagawa.nvim'
    use 'folke/tokyonight.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
--  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
--  use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use 'nvim-tree/nvim-web-devicons'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
     use({
         "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
         config = function()
             require("lsp_lines").setup()
         end,
     })
     -- init.lua
     use "lukas-reineke/lsp-format.nvim"
     -- Lua
     use {
         "folke/trouble.nvim",
         requires = "nvim-tree/nvim-web-devicons",
         config = function()
             require("trouble").setup {
                 -- your configuration comes here
                 -- or leave it empty to use the default settings
                 -- refer to the configuration section below
             }
         end
    } 
    use("jiangmiao/auto-pairs")
end)
