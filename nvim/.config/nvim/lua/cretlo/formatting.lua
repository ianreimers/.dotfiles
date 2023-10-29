local group = vim.api.nvim_create_augroup("Formatting", { clear = true })
--vim.api.nvim_create_autocmd("BufWritePre", {
--  pattern = "*.ts",
--  command = "echo 'hello'",
--  group = group,
--})
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.css", "*.scss", "*.html", "*.json", "*.md", "*.astro" },
    callback = function (ev)
        vim.schedule(function ()
            local filename = vim.api.nvim_buf_get_name(0)
            local filetype = vim.bo.filetype
            local systemArgs = { 'npx', 'prettier', '--write', filename}
            -- Need to assign '--plugin=prettier-plugin-astro' as system argument for prettier to 
            -- work with astro
            if (filetype == 'astro') then
                table.insert(systemArgs, '--plugin=prettier-plugin-astro')
            end

            local output = vim.fn.system(systemArgs)
            if vim.v.shell_error ~= 0 then
                print('Prettier encountered an error')
            end
            vim.api.nvim_command("e");
            --vim.fn.jobstart({"npx", "prettier", "--write", filename }, {
            --  stdout_buffered = true,
            --  on_exit = function ()
            --    --vim.cmd("edit")
            --    --vim.cmd("redraw!")
            --    vim.cmd("checktime")
            --  end
            --})

        end)
    end,
    group = group,
})
