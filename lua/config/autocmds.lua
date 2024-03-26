-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

--  https://www.youtube.com/watch?v=qN6BuJpsFbQ
vim.api.nvim_create_augroup("custom_buffer", { clear = true })

-- open terminal with :term
vim.api.nvim_create_autocmd("TermOpen", {
  group = "custom_buffer",
  pattern = "*",
  command = "startinsert | set winfixheight"
})

-- -- no swpfile for gopass edit - https://github.com/gopasspw/gopass/blob/master/docs/setup.md#optional-post-installation-steps
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  group = "custom_buffer",
  pattern = { "/dev/shm/gopass*", "/private/**/gopass**" },
  command = 'setlocal noswapfile nobackup noundofile shada=""'
})
