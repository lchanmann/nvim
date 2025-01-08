return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      plugins = { spelling = true },
      spec = {
        { "<leader>C", group = "ChatGPT", mode = { "n", "v" } }
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

  -- vim-fugitive for git blame and file history
  {
    "tpope/vim-fugitive",
    keys = {
      { "<leader>gl", "<cmd>:Git log -p -- %<cr>", desc = "Show history" },
      { "<leader>gb", "<cmd>:Git blame<cr>", desc = "Git Blame" },
    },
  },

  -- zen-mode + twillight
  {
    "folke/zen-mode.nvim",
    event = "BufRead",
    keys = {
      { "<leader>z", "<cmd>:ZenMode<cr>", desc = "Zen Mode" },
    },
  },
  { "folke/twilight.nvim" },

  -- Harpoon2: files jumper
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    keys = function()
      local keys = {
        {
          "<leader>H",
          function()
            require("harpoon"):list():add()
          end,
          desc = "Harpoon File",
        },
        {
          "<leader>h",
          function()
            local harpoon = require("harpoon")
            harpoon.ui:toggle_quick_menu(harpoon:list())
          end,
          desc = "Harpoon Quick Menu",
        },
      }

      for i = 1, 6 do
        table.insert(keys, {
          "<leader>" .. i,
          function()
            require("harpoon"):list():select(i)
          end,
          desc = "Harpoon to File " .. i,
        })
      end
      return keys
    end,
  },
}
