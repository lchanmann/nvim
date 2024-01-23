return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      plugins = { spelling = true },
      defaults = {
        mode = { "n", "v" },
        ["<leader>C"] = { name = "+ChatGPT" },
      },
    },
  },

  -- {
  --   "nvim-neo-tree/neo-tree.nvim",
  --   keys = {
  --     { "<leader>a", "<cmd>:Neotree<cr>", desc = "Explorer NeoTree" },
  --   },
  -- },

  -- "h" to goto parent directory, https://github.com/nvim-neo-tree/neo-tree.nvim/issues/531
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        mappings = {
          ["h"] = function(state)
            local node = state.tree:get_node()
            require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
          end,
        },
      },
    },
  },

  -- gitsigns
  {
    "lewis6991/gitsigns.nvim",
    event = "LazyFile",
    opts = {
      signs = {
        changedelete = { text = "~" },
        untacked = { text = "┆" },
      },
      signcolumn = true,
      numhl = true,
      current_line_blame = true,
    },
  },
}
