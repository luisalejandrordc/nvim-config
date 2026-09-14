return {
	"mason-org/mason.nvim",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		require("mason-lspconfig").setup({
			ensure_installed = {
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"svelte",
				"lua_ls",
				"graphql",
				"emmet_ls",
				"prismals",
				"pyright",
				"clangd",
				"texlab",
				"jsonls",
				"yamlls",
				"bashls",
				"dockerls",
				"jdtls",
				"gopls",
				"sqlls",
				"postgres_lsp",
				"marksman",
				"rust_analyzer",
				-- "arduino_language_server",
				-- "r_language_server",
			},
			automatic_enable = true,
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"isort",
				"black",
				"latexindent",
				"shfmt",
				"sql-formatter",
				"pylint",
				"eslint_d",
				"shellcheck",
				"markdownlint",
			},
		})
	end,
}
