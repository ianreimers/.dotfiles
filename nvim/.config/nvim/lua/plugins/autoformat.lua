return { -- Autoformat
	"stevearc/conform.nvim",
	opts = {
		notify_on_error = true,
		format_on_save = {
			timeout_ms = 1000,
			lsp_fallback = false,
		},
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform can also run multiple formatters sequentially
			-- python = { "isort", "black" },
			--
			-- You can use a sub-list to tell conform to run *until* a formatter
			-- is found.
			javascript = { "prettierd" },
			typescript = { "prettierd" },
			typescriptreact = { "prettierd" },
			astro = { "prettier" },
			markdown = { "prettierd" },
			java = { "google-java-format" },
			cs = { "csharpier" },
		},
		formatters = {
			csharpier = {
				command = vim.fn.expand("~/.dotnet/tools/csharpier"),
				args = { "format" },
			},
		},
	},
}
