return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  cmd = "Neotree",
  opts = {
    filesystem = {
      use_libuv_file_watcher = true,
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      commands = {
        open_and_close_neotree = function(state)
          require("neo-tree.sources.filesystem.commands").open(state)
          local tree = state.tree
          local success, node = pcall(tree.get_node, tree)

          if not success then
            return
          end

          if node.type == "file" then
            require("neo-tree.command").execute({ action = "close" })
          end
        end
      },
      window = {
        mappings = {
          ["<CR>"] = "open_and_close_neotree",
          ["<S-CR>"] = "open"
        },
      },
    },
    vim.keymap.set('n', '<C-n>', '<cmd>Neotree toggle reveal float<CR>', {})
  }
}

