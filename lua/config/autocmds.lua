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
        vim.notify("Compilación completada", vim.log.levels.INFO, { timeout = 2000 })
    end)
end, {})

vim.keymap.set("n", "<leader>ua", ":UploadArduino<cr>", { desc = "Upload arduino" })
