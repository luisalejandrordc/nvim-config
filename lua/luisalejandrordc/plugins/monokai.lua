return {
	"loctvl842/monokai-pro.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("monokai-pro").setup({
			filter = "spectrum",
			transparent_background = true,

			-- make it closer to VS Code Monokai Pro
			styles = {
				keyword = { italic = false },
				comment = { italic = true },
			},

			custom_highlights = function(c)
				return {
					-- functions (brighter, VS Code–like)
					["@function"] = { fg = c.yellow },

					-- parameters
					["@variable.parameter"] = { fg = c.orange },

					-- numbers & constants
					["@number"] = { fg = c.yellow },
					["@constant.numeric"] = { fg = c.yellow },

					-- keywords (slightly warmer)
					["@keyword"] = { fg = c.magenta },

					-- return keyword
					["@keyword.return"] = { fg = c.magenta },

					-- booleans / None / True / False
					["@boolean"] = { fg = c.pink },
				}
			end,
		})

		vim.cmd.colorscheme("monokai-pro")
	end,
}
