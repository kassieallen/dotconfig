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

    map('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    map('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    map('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    map('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
  end
}
