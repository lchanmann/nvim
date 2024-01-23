return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          always_show = {
            ".github",
            ".gitignore",
            "build",
          },
          never_show = {
            ".DS_Store",
            "thumbs.db",
            "classes",
          },
        },
      },
    },
  },
}
