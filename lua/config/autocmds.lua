-- compile dwmblocks
vim.cmd(
    [[autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid dwmblocks & ]]
)

vim.api.nvim_create_user_command("UploadArduino", function()
    -- Mostrar notificación inicial
    vim.notify("Compilando...", vim.log.levels.INFO, { timeout = 3000 })
    -- Ejecutar la tarea externa
    vim.fn.system("make upload")

    -- Usar `vim.schedule` para mostrar una nueva notificación
    vim.schedule(function()
        vim.notify("Compilación y subida completada", vim.log.levels.INFO, { timeout = 2000 })
    end)
end, {})

-- tab stop for the file extension
vim.keymap.set("n", "<leader>ua", ":UploadArduino<cr>", { desc = "Upload arduino" })

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "html", "css" },
    callback = function()
        vim.opt_local.tabstop = 2
        vim.opt_local.softtabstop = 2
        vim.opt_local.shiftwidth = 2
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "php", "javascript", "typescript", "typescriptreact", "javascriptreact", "astro", "python" },
    callback = function()
        vim.opt_local.tabstop = 4
        vim.opt_local.softtabstop = 4
        vim.opt_local.shiftwidth = 4
    end,
})
