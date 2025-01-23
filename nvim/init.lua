-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local out = vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    "https://github.com/folke/lazy.nvim.git",
    lazypath
  })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "mellow" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- vim.cmd("highlight Normal ctermbg=NONE")
-- vim.cmd("highlight nonText ctermbg=NONE")
-- vim.cmd("filetype plugin indent on")
vim.diagnostic.config({ update_in_insert = true })
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.autoindent = true
vim.o.number = true
vim.o.termguicolors = true
vim.o.expandtab = true
vim.opt.wrap = false

-- QOL keybinds
-- vim.keymap.set('n', '<leader>sv', '<C-w>v', {}) -- split window vertically
-- vim.keymap.set('n', '<leader>sh', '<C-w>s', {}) -- split window horizontally
-- vim.keymap.set('n', '<leader>se', '<C-w>=', {}) -- make split windows equal size
-- vim.keymap.set('n', '<leader>sx', '<cmd>close<CR>', {}) -- close current split window
vim.keymap.set({'n', 'v', 'i'}, '<C-s>', '<cmd>w<CR>', {}) -- Ctrl + S saves
