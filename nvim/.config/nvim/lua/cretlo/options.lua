local o = vim.opt

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

o.number = true
--o.numberwidth = 2   -- Num of cols used for the line num
o.hlsearch = false
o.incsearch = true
o.mouse = 'a'
o.relativenumber = true
o.scrolloff = 8
o.sidescrolloff = 8
o.smartcase = true
o.swapfile = false

o.wrap = false
--o.breakindent = true

o.autoread = true

-- Always insert spaces (hard tab stop)
o.expandtab = true  -- Insert real tab w/ CTRL-V<TAB>
o.tabstop = 4       -- number of spaces that a <Tab> in the file counts for.
o.shiftwidth = 4
o.smarttab = true

-- Show tabs
o.list = true
o.listchars = { tab='> ' }

o.cursorline = true
o.background = 'dark'
o.termguicolors = true

o.clipboard = 'unnamedplus'
o.spelllang = 'en_us'

--vim.cmd([[colorscheme gruvbox]])
vim.cmd([[colorscheme tokyonight-storm]]) -- tokyonight-* (storm, night, moon, day)

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function() vim.highlight.on_yank() end,
	desc = "Briefly highlight yanked text"
})
