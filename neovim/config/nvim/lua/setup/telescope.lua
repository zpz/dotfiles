-- Telescope
require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
        "__pycache__",
        "%.ipynb",
        "archive/*",
    },
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
  }
}

-- Enable telescope fzf native
require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')

local map = function(key, func)
    vim.api.nvim_set_keymap('n', key, func, { noremap = true, silent = true })
end

-- find buffer
map('fb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]])

-- find file (in current and sub directories)
map('ff', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]])

-- find file in project (under git root)
map('fp', [[<cmd>lua require('telescope.builtin').git_files()<CR>]])

-- find old file (previously opened files
map('fo', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]])

-- file "explorer"
map('fe', ":Telescope file_browser<CR>")

-- grep buffer: search in current buffer
map('gb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]])

-- grep file: search in files in current and sub directories
map('gf', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]])

-- search buffer: search the current word in current buffer
-- not working

-- search file: search the current word in files in current and sub directories
map('sf', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]])

--map('sh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]])
--map('st', [[<cmd>lua require('telescope.builtin').tags()<CR>]])
--map('so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]])


