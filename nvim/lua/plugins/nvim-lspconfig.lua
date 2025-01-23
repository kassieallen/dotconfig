return {
  "neovim/nvim-lspconfig",
  event = "BufRead",
  config = function()
    require("config.lspconfig").defaults()
  end
}
