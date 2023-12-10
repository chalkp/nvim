-- from https://github.com/wbthomason/packer.nvim
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- from https://github.com/nvim-telescope/telescope.nvim
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- trouble.nvim
  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
      }
      end
  })

  -- color scheme
  
  use({
    "folke/tokyonight.nvim",
    as = "tokyonight"
  })

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local TSUpdate = require('nvim-treesitter.install').update({ with_sync = true })
      TSUpdate()
    end,
  }
  use("nvim-treesitter/playground")

  -- copilot (microsoft branded rat)
  use("github/copilot.vim")

  -- these shits made my life easier
  use("mbbill/undotree")
  use("tpope/vim-fugitive")


  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment these if you want to manage LSP servers from neovim
      -- {'williamboman/mason.nvim'},
      -- {'williamboman/mason-lspconfig.nvim'},

      -- LSP Support
      {'neovim/nvim-lspconfig'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }

end)

