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

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter', run = function()
    local TSUpdate = require('nvim-treesitter.install').update({ with_sync = true })
    TSUpdate()
  end
  }

  use('nvim-treesitter/playground')

  -- tokyonight colour scheme  

  use({
    'folke/tokyonight.nvim',
    as = 'tokyonight',
    config = function()
      vim.cmd('colorscheme tokyonight-storm')
    end
  })



  -- copilot (microsoft branded rat)
  use("github/copilot.vim")

end)
