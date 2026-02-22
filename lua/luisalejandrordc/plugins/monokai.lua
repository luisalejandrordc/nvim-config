return {
	"loctvl842/monokai-pro.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("monokai-pro").setup({
			filter = "spectrum",
			transparent_background = true,

			styles = {
				keyword = { italic = false },
				comment = { italic = true },
			},
		})

		vim.cmd.colorscheme("monokai-pro")

		-- Tokyonight Night colors for nvim-tree only
		local colors = {
			fg = "#c0caf5",
			blue = "#7aa2f7",
			cyan = "#7dcfff",
			purple = "#bb9af7",
			blue_dim = "#3d59a1",
			indent = "#3b4261",
		}

		local function set_nvim_tree_tokyonight()
			vim.api.nvim_set_hl(0, "NvimTreeNormal", { fg = colors.fg, bg = "NONE" })

			vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = colors.blue })
			vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = colors.cyan, bold = true })
			vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", { fg = colors.blue_dim })

			vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = colors.purple, bold = true })
			vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = colors.indent })

			vim.api.nvim_set_hl(0, "NvimTreeFileIcon", { fg = colors.fg })
		end

		-- apply now
		set_nvim_tree_tokyonight()

		-- reapply on colorscheme change
		vim.api.nvim_create_autocmd("ColorScheme", {
			callback = set_nvim_tree_tokyonight,
		})
	end,
}
