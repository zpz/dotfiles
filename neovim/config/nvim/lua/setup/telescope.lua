-- Telescope
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
  extensions = {
      fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter= true,
          case_mode = 'smart_case',
      },
      file_browser = {
          theme = 'ivy',
      },
  }
}

-- Enable telescope fzf native
require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')

local map = function(key, func)
    vim.api.nvim_set_keymap('n', '<leader>' .. key, func, { noremap = true, silent = true })
end

--Add leader shortcuts
-- buffers
map('<space>', [[<cmd>lua require('telescope.builtin').buffers()<CR>]])
map('b', [[<cmd>lua require('telescope.builtin').buffers()<CR>]])

-- files in current and sub directories
map('f', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]])

-- files in current git "project"
map('p', [[<cmd>lua require('telescope.builtin').git_files()<CR>]])

--map('fb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]])
map('sh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]])
map('st', [[<cmd>lua require('telescope.builtin').tags()<CR>]])
map('sd', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]])
map('sp', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]])
map('so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]])
map('?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]])

-- file "explorer"
map('e', ":Telescope file_browser<CR>")

