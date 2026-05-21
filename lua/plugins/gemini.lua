return {
    "kiddos/gemini.nvim",
    opts = {},
    config = function(_, opts)
        require("gemini").setup({
            model_config = {
                model_id = "gemini-3.5-flash",
                temperature = 0.10,
            },

            -- Desactivamos los módulos que "disparan solos" al tipear para cuidar el Rate Limit
            hints = {
                enabled = false,
            },
            completion = {
                enabled = false,
            },

            -- Mantenemos activos los menús e interacciones manuales
            chat_config = {
                enabled = true,
            },
            instruction = {
                enabled = true,
                -- El atajo por defecto para abrir el menú visual es un poco largo (<Leader><Leader><Leader>g)
                -- Si querés podés cambiarlo acá, por ejemplo a: '<Leader>g'
                menu_key = "<Leader>g",
            },
            task = {
                enabled = true,
            },
        })


        -- Opcional: Atajos rápidos para ejecutar comandos directos sin pasar por el menú
        -- Recordá que estos comandos actúan sobre la selección visual que hagas
        local keymap = vim.keymap.set
-- =====================================================================
    -- INTEGRACIÓN CON VIM-FUGITIVE (Función Completa Estructurada)
    -- =====================================================================
    
    local function generate_git_commit()
      -- 1. Obtener el diff de los archivos stagiados (git add)
      local diff = vim.fn.system("git diff --staged")
      
      if diff == "" or diff:match("^fatal") then
        vim.notify("No hay cambios stagiados para analizar.", vim.log.levels.WARN)
        return
      end

      -- 2. Limitar el tamaño del diff por seguridad en strings largos
      if #diff > 10000 then
        diff = diff:sub(1, 10000) .. "\n... [Diff truncado por longitud] ..."
      end

      -- 3. Crear el prompt usando bloques seguros de Lua [[ ]]
      local prompt_template = [[
Generate a concise and professional Git commit message using conventional commits specification based on the following diff:

```diff
%s ```
]]

            -- 3. Usar el comando Gemini para inyectar el resultado en el buffer actual (:Git commit)
            -- Usamos la API del plugin directamente mediante nvim_command o llamando a su ejecutor
            vim.cmd("Gemini " .. prompt)
        end

        -- Creamos un comando en Neovim para llamarlo fácil
        vim.api.nvim_create_user_command("GeminiCommit", generate_git_commit, {})

        -- Mapeo de teclado para ejecutarlo con un atajo cómodo
        vim.keymap.set("n", "<leader>gc", "<cmd>GeminiCommit<cr>", { desc = "Gemini: Generar mensaje de Commit" })
        keymap("v", "<leader>ge", "<cmd>GeminiCodeExplain<cr>", { desc = "Gemini: Explicar Código" })
        keymap("v", "<leader>gr", "<cmd>GeminiCodeReview<cr>", { desc = "Gemini: Code Review" })
        keymap("v", "<leader>gt", "<cmd>GeminiUnitTest<cr>", { desc = "Gemini: Crear Unit Test" })
    end,
}
