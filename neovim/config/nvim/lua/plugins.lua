
local cmd = vim.cmd
cmd [[packadd packer.nvim]]


function get_setup(name)
  return require("setup/" .. name)
end



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
    config = get_setup('telescope'),
  }

  -- Add indentation guides even on blank lines
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = get_setup('indent-blankline'),
  }

  -- Autopair
  use {
    'windwp/nvim-autopairs',
    config = function() require('nvim-autopairs').setup() end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    requires = { 'nvim-treesitter/nvim-treesitter-textobjects' },
    config = get_setup('nvim-treesitter'),
  }

  -- Color schemes
  use 'junegunn/seoul256.vim'

  use {
    'neovim/nvim-lspconfig',
    config = get_setup('nvim-lspconfig'),
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
    config = get_setup('nvim-cmp'),
  }

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    config = get_setup('lualine'),
  }

  -- Add git related info in the signs columns and popups
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = get_setup('gitsigns'),
  }

end)

