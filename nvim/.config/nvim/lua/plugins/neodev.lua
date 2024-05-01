return {
	"folke/neodev.nvim",
	opts = {},
	config = function()
		require("neodev").setup({
			library = { plugins = { "nvim-dap-ui", "dap" }, types = true },
		})
	end,
}
