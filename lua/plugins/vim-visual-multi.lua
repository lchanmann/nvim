return {
  -- https://www.youtube.com/watch?v=N-X_zjU5INs
  "mg979/vim-visual-multi",
  branch = "master",
  config = function()
    vim.g.VM_maps = {
      ["Find Under"] = "<C-n>"
    }
  end,
}
