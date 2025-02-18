return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  cmd = "Telescope",
  keys = { [[<leader>ff]], [[<leader>fg]], [[<leader>fb]], [[<leader>fh]] },
  opts = function()
    return require "config.telescope"
  end,
  config = function()
    local builtin = require('telescope.builtin')
    local map = vim.keymap.set
  end
}
