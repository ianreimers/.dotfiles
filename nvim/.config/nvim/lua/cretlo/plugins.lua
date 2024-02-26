local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Colorthemes
    use { 'folke/tokyonight.nvim' }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- Indent Lines
    use { "lukas-reineke/indent-blankline.nvim" }

    -- Telescope
    -- Linux: Needed to install ripgrep and fd (:checkhealth telescope)
    -- Upgrade tag from '0.1.1' to 0.1.4 since receving:
    --      https://github.com/nvim-telescope/telescope.nvim/issues/2734
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- Tree
    use { 'nvim-tree/nvim-tree.lua' }
    use 'nvim-tree/nvim-web-devicons'

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }


    -- LSP
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }
    -- LSP, formatter, and linter Mason installer
    use { "WhoIsSethDaniel/mason-tool-installer.nvim", requires = {"williamboman/mason.nvim"} }

    -- Autocomplete and snippets
    use { 'hrsh7th/cmp-buffer' }
    use { 'hrsh7th/cmp-path' }
    use { 'hrsh7th/cmp-cmdline' }
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/nvim-cmp' }
    use { 'L3MON4D3/LuaSnip' }
    use { 'saadparwaiz1/cmp_luasnip' }

    -- DAP
    -- Linux: install xdg-utils, dependent on xdg-open
    use { 'mfussenegger/nvim-dap' }
    use { "rcarriga/nvim-dap-ui" }
    use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }
    --use {
    --    "microsoft/vscode-js-debug",
    --    opt = true,
    --    run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
    --}

    -- Using mason-tool-installer "ensure_installed" instead
    use { 'mfussenegger/nvim-dap-python',
        ft = "python",
        requires = {"mfussenegger/nvim-dap"},
        config = function(_, opt)
            local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
            require("dap-python").setup(path)
        end
    }
    --use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }

    -- Checkout later
    -- nvim-telescope/telescope-dap.nvim

    -- Browser Markdown Previewer
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

    -- Autotag (for html)
    use { "windwp/nvim-ts-autotag" }

    -- Autopair
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
