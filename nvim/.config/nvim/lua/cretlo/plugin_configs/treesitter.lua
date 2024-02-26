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
        "astro",
        "python",
        "java",

        -- Needed for nvim-remote-container
        "jsonc"
    },
    auto_install = true,
    sync_install = true,
    highlight = {
        enable = true,
        -- Setting to false disables spellcheck highlighting on everything besides comments
        additional_vim_regex_highlighting = true
    },
    ignore_install = {},
    indent = {
        enable = true,
    },
    autotag = {
        enable = true,
    }
}
