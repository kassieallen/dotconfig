return {
  "jay-babu/mason-nvim-dap.nvim",
  cmd = { "Mason", "MasonInstall", "MasonUpdate" },
  ft = { "cpp", "c" },
  dependencies = {
    "williamboman/mason.nvim",
    "mfussenegger/nvim-dap",
  },
  opts = {
    handlers = {},
  },
}
