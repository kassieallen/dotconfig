return {
  "stevearc/conform.nvim",
  event = "BufRead",
  opts = {
    formatters_by_ft = { lua = { "stylua" } },
  },
}
