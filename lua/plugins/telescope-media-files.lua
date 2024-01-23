return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-media-files.nvim",
      config = function()
        require("telescope").setup({
          extensions = {
            media_files = {
              filetypes = { "png", "webp", "jpg", "jpeg", "svg", "gif" },
            },
          }
        })
        require("telescope").load_extension("media_files")
      end,
    },
  },
}
