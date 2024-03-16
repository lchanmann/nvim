return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    local user = vim.fn.expand("$LOGNAME")
    require("chatgpt").setup({
      -- api_key_cmd = "/usr/bin/security find-generic-password -w -a " .. user .. " -s ChatGPT.nvim",
      api_key_cmd = "bw get password ChatGPT.nvim",
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
