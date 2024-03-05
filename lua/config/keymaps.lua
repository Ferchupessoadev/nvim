--navegation in mode insert
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "move left" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "move down" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "move up" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "move right" })

-- relaod config neovim
vim.keymap.set("n", "<F6>", ":source ~/.config/nvim/init.lua<cr>", { desc = "Source the current file" })

-- save and quit current file
vim.keymap.set({"n","i","s"} , "<C-s>", "<cmd>w<cr>", { desc = "save file" })
vim.keymap.set("n", "<C-q>", ":q<cr>", { desc = "Quit file" })
vim.keymap.set("n", "<A-S-q>", ":q!<cr>", { desc = "Quit file" })

-- clear highlight
vim.keymap.set("n", "<ESC>", ":nohl<CR>", { desc = "Clear highlight" })

-- split window
vim.keymap.set("n", "<leader>h", ":split<cr>", { desc = "Split window" })
vim.keymap.set("n", "<leader>v", ":vsplit<cr>", { desc = "Split window vertical" })

-- scape of mode terminal
vim.keymap.set("t", "<C-x>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- open new terminal
vim.keymap.set("n", "<C-t>", ":term<cr>", { desc = "open new terminal" })

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
vim.keymap.set("n", "<leader>d", ":bd!<cr>", { desc = "Close current buffer" })
vim.keymap.set("n", "<tab>", ":bn<cr>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-tab>", ":bp<cr>", { desc = "Prev buffer" })

-- redimencinar paneles
vim.keymap.set("n", "<leader>=", "<C-w>=", { desc = "Equal window" })
vim.keymap.set("n", "<leader>-", "<C-w>5-", { desc = "Equal window" })
vim.keymap.set("n", "<leader>+", "<C-w>5+", { desc = "Equal window" })
vim.keymap.set("n", "<leader><", "<C-w>5<", { desc = "Equal window" })
vim.keymap.set("n", "<leader>>", "<C-w>5>", { desc = "Equal window" })

-- nvim-tree keymaps
vim.keymap.set("n","<C-n>", ":NvimTreeFindFileToggle <CR>", { desc = "Toggle NvimTree" })
