-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Motion keymaps
-- center <C-d> and <C-u>
vim.api.nvim_set_keymap('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true })
-- move along <C-e> and <C-y>
vim.api.nvim_set_keymap('n', '<C-e>', '<C-e>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-y>', '<C-y>k', { noremap = true, silent = true })

-- ChatGPT keymaps
vim.keymap.set({ "n", "v" }, "<leader>Cc", "<cmd>ChatGPT<CR>", { desc = "ChatGPT" })
vim.keymap.set({ "n", "v" }, "<leader>Ce", "<cmd>ChatGPTEditWithInstruction<CR>", { desc = "Edit with instruction" })
vim.keymap.set({ "n", "v" }, "<leader>Cg", "<cmd>ChatGPTRun grammar_correction<CR>", { desc = "Grammar Correction" })
vim.keymap.set({ "n", "v" }, "<leader>Ct", "<cmd>ChatGPTRun translate<CR>", { desc = "Translate" })
vim.keymap.set({ "n", "v" }, "<leader>Ck", "<cmd>ChatGPTRun keywords<CR>", { desc = "Keywords" })
vim.keymap.set({ "n", "v" }, "<leader>Cd", "<cmd>ChatGPTRun docstring<CR>", { desc = "Docstring" })
vim.keymap.set({ "n", "v" }, "<leader>Ca", "<cmd>ChatGPTRun add_tests<CR>", { desc = "Add Tests" })
vim.keymap.set({ "n", "v" }, "<leader>Co", "<cmd>ChatGPTRun optimize_code<CR>", { desc = "Optimize Code" })
vim.keymap.set({ "n", "v" }, "<leader>Cs", "<cmd>ChatGPTRun summarize<CR>", { desc = "Summarize" })
vim.keymap.set({ "n", "v" }, "<leader>Cf", "<cmd>ChatGPTRun fix_bugs<CR>", { desc = "Fix Bugs" })
vim.keymap.set({ "n", "v" }, "<leader>Cx", "<cmd>ChatGPTRun explain_code<CR>", { desc = "Explain Code" })
vim.keymap.set({ "n", "v" }, "<leader>Cr", "<cmd>ChatGPTRun roxygen_edit<CR>", { desc = "Roxygen Edit" })
vim.keymap.set(
  { "n", "v" },
  "<leader>Cl",
  "<cmd>ChatGPTRun code_readability_analysis<CR>",
  { desc = "Code Readability Analysis" }
)

-- Telescope keymaps
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>fd", builtin.find_files, { desc = "Find Files (*)" })

vim.keymap.set(
  { "n", "v" },
  "<leader>fg",
  "<cmd>Telescope find_files search_dirs={'build'}<CR>",
  { desc = "Find Generated Files" }
)
vim.keymap.set(
  { "n", "v" },
  "<leader>fm",
  "<cmd>Telescope media_files<CR>",
  { desc = "Find Media Files" }
)

-- Resume telescope search, use fzflua resume instead (https://github.com/LazyVim/LazyVim/pull/5138)
vim.keymap.set("n", "<leader>fx", builtin.resume, { noremap = true, silent = true, desc = "Resume Telescope Search" })

-- Twilight keymaps
vim.keymap.set({ "n", "v" }, "<leader>t", "<cmd>Twilight<CR>", { desc = "Twilight" })

-- NOTE: "Terminal (cwd)" below prevents it from cd-ing into new git worktree branch (not desirable)
--
-- -- Floating terminal on always cwd instead of opening terminal of project in git submodule
-- local Util = require("lazyvim.util")
-- vim.keymap.set("n", "<c-_>", function() Util.terminal() end, { desc = "Terminal (cwd)" })

-- git-worktree keymaps
vim.keymap.set("n", "<leader>gw", "<CMD>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", { silent = true, desc = "Git worktrees" })
vim.keymap.set("n", "<leader>gW", "<CMD>lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>", { silent = true, desc = "Git worktree (add)" })

-- gitsigns hunk preview
vim.keymap.set("n", "<leader>ghP", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Preview Hunk" })
