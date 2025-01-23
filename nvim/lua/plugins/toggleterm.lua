return {
  'akinsho/toggleterm.nvim',
  keys = { [[<C-\>]] },
  opts = {
    size = 15,
    open_mapping = [[<C-\>]],
    auto_scroll = true,
    hide_numbers = true,
    start_in_insert = true,
    direction = "horizontal",
    close_on_exit = true,
    shell = vim.o.shell,
  }
}
