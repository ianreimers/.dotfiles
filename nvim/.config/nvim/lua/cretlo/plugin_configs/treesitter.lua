local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then
    print("Issue with nvim-treesitter")
    return
end

ts.setup {
    ensure_installed = {
        -- Recommended by ts docs
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",

        -- Added
        "javascript",
        "typescript",
        "json",
        "yaml",
        "gitignore",
        "astro"
    },
    auto_install = true,
    sync_install = true,
    highlight = {
        enable = true,
    },
    ignore_install = {},
    indent = {
        enable = true,
    },
    autotag = {
        enable = true,
    }
}
