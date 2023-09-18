local group = vim.api.nvim_create_augroup("Formatting", { clear = true })
--vim.api.nvim_create_autocmd("BufWritePre", {
--  pattern = "*.ts",
--  command = "echo 'hello'",
--  group = group,
--})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.css", "*.scss", "*.html", "*.json", "*.md" },
  callback = function ()
    vim.schedule(function ()
      local filename = vim.api.nvim_buf_get_name(0)
      local output = vim.fn.system({ 'npx', 'prettier', '--write', filename})
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
