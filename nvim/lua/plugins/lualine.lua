return {
  "nvim-lualine/lualine.nvim",
  event = "BufRead",
    opts = {
      options = {
        component_separators = { left = '|', right = '|'},
        section_separators = { left = '▓', right = '▓'},
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      tabline = {
        lualine_a = {'filename'},
        lualine_y = {'branch', {'diff', symbols = { added = ' ', modified = ' ', removed = ' ' },}},
        lualine_z = {'tabs'}
      }
    }
}
