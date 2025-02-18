return {
  "williamboman/mason-lspconfig.nvim",
  cmd = { "Mason", "MasonInstall", "MasonUpdate" },
  opts = {
    ensure_installed = {
      "bashls",
      "clangd",
      "clang-format",
      "codelldb",
      "ts_ls",
      "eslint",
    },
    handlers = {
      function(server)
        require('lspconfig')[server].setup{}
      end
    },
  },
}
