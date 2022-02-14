
local cmd = vim.cmd
cmd [[packadd packer.nvim]]


local packer = require 'packer'

-- Add packages
packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- packer can manage itself

  use 'b3nj5m1n/kommentary'
  use 'mhartington/formatter.nvim'

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
        'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
        'nvim-telescope/telescope-file-browser.nvim',
    },
  }

  -- Add indentation guides even on blank lines
  use {
    'lukas-reineke/indent-blankline.nvim',
  }

  -- Autopair
  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup() end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    requires = { 'nvim-treesitter/nvim-treesitter-textobjects' },
  }

  -- Color schemes
  use 'junegunn/seoul256.vim'

  use {
    'neovim/nvim-lspconfig',
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      'saadparwaiz1/cmp_luasnip',
    },
  }

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
  }

  -- Add git related info in the signs columns and popups
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }

end)

require('setup/telescope')
require('setup/indent-blankline')
require('setup/nvim-treesitter')
require('setup/nvim-lspconfig')
require('setup/nvim-cmp')
require('setup/lualine')
require('setup/gitsigns')

