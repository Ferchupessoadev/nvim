local opt = vim.o
local g = vim.g

--- global variables
g.mapleader = " " -- change leader to a comma o other letter

-- neovim UI
opt.mouse = ""
opt.number = true
opt.relativenumber = true
opt.hidden = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.smartindent = true
opt.errorbells = false
opt.wrap = true
opt.swapfile = true
opt.undofile = true
opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.showmode = false
opt.clipboard = "unnamedplus"
opt.splitbelow = true
opt.splitright = true
opt.autowrite = true
opt.laststatus = 2
opt.signcolumn = "yes"
