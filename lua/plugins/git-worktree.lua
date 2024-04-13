return {
  "ThePrimeagen/git-worktree.nvim",
  config = function()
    local Job       = require("plenary.job")
    local Path      = require("plenary.path")
    local Worktree  = require("git-worktree")

    local function has_submodule(path)
      local gitmodules = Path:new(path, ".gitmodules")
      local result = Job:new({ command = "ls", args = { gitmodules:absolute() } }):sync()
      return #result == 1
    end

    Worktree.on_tree_change(function(op, metadata)
      print("git-worktree", op, metadata.path)
      if op == Worktree.Operations.Create and has_submodule(metadata.path) then
        Job:new({
          command = "git",
          args = { "-C", metadata.path, "submodule", "update", "--init" },
        }):start()
      end
    end)
  end,
}
