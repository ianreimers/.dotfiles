require("mason").setup()
require("mason-lspconfig").setup({
    --ensure_installed = {"lua_ls", "pyright", "tsserver", "cssls", "html", "jsonls", "marksman"}
})
require("mason-tool-installer").setup({
    ensure_installed = {
        -- Language servers
        "css-lsp",
        "html-lsp",
        "json-lsp",
        "lua-language-server",
        "marksman",
        "pyright",
        "typescript-language-server",

        -- Formatters
        "prettier",

        -- Debug adapters
        -- disabling since having issues with DAP
        -- "js-debug-adapter",
    }
})

-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)


-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
  vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, {})
  vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, {})
  vim.keymap.set('n', '<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, {})
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, {})
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
end

-- Used for additional lsp configuration and completion
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require('lspconfig').marksman.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require('lspconfig').jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require('lspconfig').html.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require('lspconfig').tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require('lspconfig').cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities
}

require('lspconfig').lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {
          'vim',
          'require'
        },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
