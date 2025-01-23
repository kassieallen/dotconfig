return {
  'nvim-treesitter/nvim-treesitter',
  event = { "BufReadPost", "BufNewFile" },
  cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
  build = ":TSUpdate",
  opts = {
    ensure_installed = { 
      "lua", 
      "luadoc", 
      "printf", 
      "vim", 
      "vimdoc",
      "nix",
      "rust",
      "c"
    },
    highlight = { enable = true },
    indent = { enable = true }
  }
}
