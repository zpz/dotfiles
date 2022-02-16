require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
    component_separators = '|',
    section_separators = '',
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'buffers'},
    lualine_c = {},
    lualine_x = {'branch'},
    lualine_y = {'progress'},
    lualine_z = {'location'},
  },
}
