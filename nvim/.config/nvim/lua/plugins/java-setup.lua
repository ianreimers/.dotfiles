-- Assist with setting up java lsp
--
-- Must include a java.lua file within the ftplugins directory (located at the root of nvim directory)
-- return { "mfussenegger/nvim-jdtls" }

-- Trying nvim-java instead of nvim-jdtls since issue with lombok annotations throwing errors
return {
	"nvim-java/nvim-java",
	dependencies = {
		"nvim-java/lua-async-await",
		"nvim-java/nvim-java-core",
		"nvim-java/nvim-java-test",
		"nvim-java/nvim-java-dap",
		"MunifTanjim/nui.nvim",
		"neovim/nvim-lspconfig",
		"mfussenegger/nvim-dap",
		{
			"williamboman/mason.nvim",
			opts = {
				registries = {
					"github:nvim-java/mason-registry",
					"github:mason-org/mason-registry",
				},
			},
		},
	},
	config = function()
		-- Commented out since was able to add this same logic in LSP setup, however, lombok might not work.
		--
		-- require("java").setup()
		--
		-- lombok breaking if this wasn't included
		-- require("lspconfig").jdtls.setup({})
	end,
}
