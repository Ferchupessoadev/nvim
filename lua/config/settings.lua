local opt = vim.o
local g = vim.g

--- global variables
g.mapleader = " " -- change leader to a comma o other letter

vim.cmd.colorscheme("slate")

-- neovim UI
opt.number = true
opt.clipboard = "unnamedplus"
opt.syntax = "on"
opt.mouse = "" -- enable mouse support
opt.showmatch = true -- highlight matching parenthesis
opt.numberwidth = 1 -- line number width
opt.autowrite = true




