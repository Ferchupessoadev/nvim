---@diagnostic disable: undefined-global
--navegation in mode insert
vim.keymap.set("i", "<A-j>", "<Down>", { desc = "move down" })
vim.keymap.set("i", "<A-h>", "<Left>", { desc = "move left" })
vim.keymap.set("i", "<A-k>", "<Up>", { desc = "move up" })
vim.keymap.set("i", "<A-l>", "<Right>", { desc = "move right" })

-- relaod config neovim
vim.keymap.set("n", "<F6>", "<cmd>source ~/.config/nvim/init.lua<cr>", { desc = "Source the current file" })

-- save and quit current file
vim.keymap.set({ "n", "i", "s" }, "<C-s>", "<cmd>w<cr>", { desc = "save file" })
vim.keymap.set("n", "<C-q>", ":q<cr>", { desc = "Quit file" })
vim.keymap.set("n", "<A-S-q>", ":q!<cr>", { desc = "Quit file" })
-- clear highlight
vim.keymap.set("n", "<ESC>", "<cmd>nohl<CR>", { desc = "Clear highlight" })

-- split window
vim.keymap.set("n", "<leader>h", ":split<cr>", { desc = "Split window" })
vim.keymap.set("n", "<leader>v", ":vsplit<cr>", { desc = "Split window vertical" })

-- scape of mode terminal
vim.keymap.set("t", "<C-x>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- create new terminal with toggleterm
vim.keymap.set("n", "<C-t>", ":ToggleTerm<cr>", { desc = "open new terminal" })

-- load source config %
vim.keymap.set("n", "<F7>", ":source %<cr>", { desc = "Reload config" })

-- toggle number
vim.keymap.set("n", "<leader><leader>n", ":set relativenumber!<cr>", { desc = "Toggle line number" })

-- switch bentween window
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Switch to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Switch to down window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Switch to up window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Switch to right window" })

-- buffers keymaps
vim.keymap.set("n", "<leader>d", "<cmd>bd!<cr>", { desc = "Close current buffer" })
vim.keymap.set("n", "<tab>", "<cmd>bn<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-tab>", "<cmd>bp<cr>", { desc = "Prev buffer" })

-- redimencinar paneles
vim.keymap.set("n", "<leader>=", "<C-w>=", { desc = "Equal window" })
-- vim.keymap.set("n", "<A-j>", "<C-w>5-", { desc = "Equal window" })
-- vim.keymap.set("n", "<A-k>", "<C-w>5+", { desc = "Equal window" })
vim.keymap.set("n", "<A-h>", "<C-w>5<", { desc = "Equal window" })
vim.keymap.set("n", "<A-l>", "<C-w>6>", { desc = "Equal window" })

-- Map the 'y' key to execute :put
vim.keymap.set("n", "<C-A-v>", ":put<CR>", { desc = "Map the 'y' key to execute :put" })

-- Colorizer toggle
vim.keymap.set("n", "<C-A-c>", "<cmd>ColorizerToggle<CR>", { desc = "Colorizer Toggle" })

-- alpha nvim
vim.keymap.set("n", "<C-A-a>", "<cmd>Alpha<CR>", { desc = "Alpha nvim" })

-- mode paste
vim.keymap.set("n", "<C-A-p>", "<cmd>set paste<CR>", { desc = "Mode paste on" })

-- mode no paste
vim.keymap.set("n", "<C-A-n>", "<cmd>set nopaste<CR>", { desc = "Mode paste off" })

-- move lines
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<Return>==", { desc = "Move line up" })
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<Return>==", { desc = "Move line down" })
vim.keymap.set("v", "<A-j>", ":m '>+1<Return>gv=gv", { desc = "Move line down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<Return>gv=gv", { desc = "Move line up" })
