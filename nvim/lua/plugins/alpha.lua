local function configure()
  local theme = require('alpha.themes.theta')
  local dashboard = require('alpha.themes.dashboard')
  local buttons = {
    type = "group",
    val = {
      { type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
      { type = "padding", val = 1 },
      dashboard.button("e", "  New File", "<cmd>ene<CR>"),
      dashboard.button("SPC f f", "  Find Files"),
      dashboard.button("SPC f g", "  Live Grep"),
      dashboard.button("u", "󱐥  Update Plugins", "<cmd>Lazy sync<CR>"),
      dashboard.button("t", "  Install Language Tools", "<cmd>Mason<CR>"),
      dashboard.button("q", "󰩈  Quit", "<cmd>qa<CR>"),
    },
    position = "center",
  }

  theme.config.layout[6] = buttons
  return theme.config
end

return {
  'goolord/alpha-nvim',
  dependencies = {
    'echasnovski/mini.icons',
    'nvim-lua/plenary.nvim',
  },
  config = function()
    require'alpha'.setup(configure())
  end
}
