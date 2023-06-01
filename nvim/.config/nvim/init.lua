require('cretlo.options')
require('cretlo.plugins')
require('cretlo.plugin_configs')

-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
	callback = function() vim.highlight.on_yank() end,
	desc = "Briefly highlight yanked text"
})
