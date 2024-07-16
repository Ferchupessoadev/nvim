vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
    "nvim-tree/nvim-tree.lua",
    config = true,
    opts = {
        actions = {
            open_file = {
                quit_on_open = true,
            },
        },
    },
}
