return {
	"catppuccin/nvim",
	name = "catppuccin", -- important for lazy
	priority = 1000, -- load before other plugins
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
			transparent_background = true,
			term_colors = true,

			integrations = {
				cmp = true,
				nvimtree = true,
				treesitter = true,
				mason = true,
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
					},
				},
			},
		})

		-- apply the colorscheme
		vim.cmd.colorscheme("catppuccin")
	end,
}
