local opt = vim.opt
local cmd = vim.cmd

-- opt.completeopt = { "menuone", "noselect" }
opt.mouse = "a"

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true

-- cursor line
opt.cursorline = true
opt.cursorcolumn = true

-- appearance
opt.termguicolors = true            
opt.signcolumn = "auto"           -- only show signcolumn when there are signs

-- backspace
opt.backspace = "indent,eol,start"

-- cliboard
opt.clipboard = "unnamedplus"       -- ensure copy to system clipbard

-- splitwindows
opt.splitright = true
opt.splitbelow = true

-- scrolloff
opt.scrolloff = 8
opt.sidescrolloff = 8

cmd [[ set iskeyword+=- ]]          -- make hyphenated words into 1 word, e.g., "one-word"
cmd "set whichwrap+=<,>,[,],h,l"    -- wrap when using arrow keys to move left and right
