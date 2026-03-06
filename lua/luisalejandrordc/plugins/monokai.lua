return {
	"loctvl842/monokai-pro.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("monokai-pro").setup({
			filter = "spectrum", -- classic | octagon | pro | machine | spectrum | ristretto
			transparent_background = true,

			styles = {
				keyword = { italic = false },
				comment = { italic = true },
			},
		})

		vim.cmd.colorscheme("monokai-pro")

		-- Set LaTeX colors manually
		vim.api.nvim_set_hl(0, "@label.latex", { fg = "#FC9867" })
		vim.api.nvim_set_hl(0, "@markup.heading.3.latex", { fg = "#FFD866" })
		vim.api.nvim_set_hl(0, "@markup.heading.4.latex", { fg = "#FFD866" })
		vim.api.nvim_set_hl(0, "@markup.heading.5.latex", { fg = "#FFD866" })
	end,
}
