return {
	"loctvl842/monokai-pro.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("monokai-pro").setup({
			filter = "spectrum", -- classic | octagon | pro | machine | spectrum | ristretto
			transparent_background = true,
			terminal_colors = false,

			styles = {
				keyword = { italic = false },
				comment = { italic = true },
			},
		})

		vim.cmd.colorscheme("monokai-pro")

		-- Change editor background
		-- vim.api.nvim_set_hl(0, "Normal", { bg = "#222222" })
		-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "#222222" })
		-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "#222222" })
		-- vim.api.nvim_set_hl(0, "LineNr", { bg = "#222222" })
		-- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#222222" })

		-- vim.api.nvim_set_hl(0, "Normal", { bg = "#1E1E2E" })
		-- vim.api.nvim_set_hl(0, "NormalNC", { bg = "#1E1E2E" })
		-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "#1E1E2E" })
		-- vim.api.nvim_set_hl(0, "LineNr", { bg = "#1E1E2E" })
		-- vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "#1E1E2E" })
		-- vim.api.nvim_set_hl(0, "Visual", { bg = "#3E3E5E" })

		-- Set LaTeX colors manually
		vim.api.nvim_set_hl(0, "@label.latex", { fg = "#FC9867" })
		vim.api.nvim_set_hl(0, "@markup.heading.3.latex", { fg = "#FFD866" })
		vim.api.nvim_set_hl(0, "@markup.heading.4.latex", { fg = "#FFD866" })
		vim.api.nvim_set_hl(0, "@markup.heading.5.latex", { fg = "#FFD866" })
	end,
}
