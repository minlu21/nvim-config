local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Normal Mode
keymap("n", "<leader>b", ":bnext<CR>", opts) -- navigate buffers
keymap("n", "<leader>sx", ":close<CR>", opts)
keymap("n", "<leader>sv", "<C-w>v", opts)
keymap("n", "<leader>sh", "<C-w>s", opts)

keymap(
    "n",
    "<leader>t",
    "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>",
    opts
)
keymap("n", "<leader>g", ":Telescope live_grep<cr>", opts)

-- Filetree
keymap("n", "<leader>f", ":NvimTreeToggle<cr>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Automatic formatting
keymap("n", "<C-f>", "<cmd>lua vim.lsp.buf.format()<cr>", opts)

-- todo shortcuts
keymap("n", "<C-t>", ":TodoQuickFix<cr>", opts)

-- Insert

-- Visual
-- keymap("v", "<up>", ":m .+1<CR>==", opts)
-- keymap("v", "<down>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP"', opts)
