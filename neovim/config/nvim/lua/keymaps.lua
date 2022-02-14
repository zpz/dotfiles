local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Change leader
-- Default leader key is backslash, '\'
vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- Map leader key
--map('', '<Space>', '<Nop>', default_opts)
--map('', ',', '<Nop>', default_opts)

-- Clear search highlighting with <leader> and c
map('n', '<leader>c', ':nohl<CR>', default_opts)

-- Map Esc to kk
-- map('i', 'kk', '<Esc>', {noremap = true})

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>', default_opts)
map('i', '<leader>s', '<C-c>:w<CR>', default_opts)

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<C-j>', '<C-w>j', default_opts)
map('n', '<C-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- Close all windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':qa!<CR>', default_opts)

