local keymaps = vim.api.nvim_buf_set_keymap
local opts = { noremap = true, silent = true }

keymaps(0, "n", "vc", ":VimtexCompile<cr>", opts)
keymaps(0, "n", "vr", ":VimtexClean<cr>", opts)
keymaps(0, "n", "vs", ":VimtexStopAll<cr>", opts)

vim.opt_local.wrap = true
vim.opt_local.linebreak = true

vim.opt_local.shiftwidth = 2
vim.opt_local.tabstop = 2
vim.opt_local.softtabstop = 2
