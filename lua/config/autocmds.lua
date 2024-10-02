---@diagnostic disable: undefined-global
vim.api.nvim_create_user_command("UploadArduino", function()
    vim.notify("Compilando...", vim.log.levels.INFO, { timeout = 3000 })
    vim.system("make upload")

    vim.schedule(function()
        vim.notify("Compilación y subida completada", vim.log.levels.INFO, { timeout = 2000 })
    end)
end, {})

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

-- Php serve
local phpserve = nil

vim.api.nvim_create_user_command("PhpServeStart", function(params)
    local port = params.args

    vim.notify("Iniciando servidor PHP en el puerto " .. port, vim.log.levels.INFO, { timeout = 2000 })
    phpserve = vim.system(
        { "php", "-S", "127.0.0.1:" .. port },
        {},
        vim.schedule_wrap(function()
            vim.notify("Servidor PHP detenido en el puerto " .. port, vim.log.levels.INFO, { timeout = 2000 })
        end)
    )
end, { nargs = 1 })

vim.api.nvim_create_user_command("PhpServeStop", function()
    if phpserve then
        phpserve:kill(15)
    end
end, {})

-- npm serve
local npmserve = nil

vim.api.nvim_create_user_command("NpmServeStart", function()
    vim.notify("Iniciando servidor NPM", vim.log.levels.INFO, { timeout = 2000 })
    npmserve = vim.system(
        { "npm", "run", "dev" },
        {},
        vim.schedule_wrap(function()
            vim.notify("Servidor NPM detenido", vim.log.levels.INFO, { timeout = 2000 })
        end)
    )
end, {})

vim.api.nvim_create_user_command("NpmServeStop", function()
    if npmserve then
        npmserve:kill(15)
    end
end, {})

vim.api.nvim_create_autocmd({ "vimLeavePre" }, {
    callback = function()
        if phpserve then
            phpserve:kill(15)
        end

        if npmserve then
            npmserve:kill(15)
        end
    end,
})

-- composer
vim.api.nvim_create_user_command("ComposerReloadAutoload", function()
    vim.notify("Recargando autoload", vim.log.levels.INFO, { timeout = 500 })
    vim.system({ "composer", "dump-autoload", "-o" })
end, {})
