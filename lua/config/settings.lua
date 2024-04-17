local opt = vim.o
local g = vim.g

--- global variables
g.mapleader = " " -- change leader to a comma o other letter

-- neovim UI
opt.mouse = ""
opt.number = true
opt.relativenumber = true
opt.hidden = true
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
opt.errorbells = false
opt.wrap = false
opt.swapfile = false
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
opt.laststatus = 3
opt.signcolumn = "yes"
