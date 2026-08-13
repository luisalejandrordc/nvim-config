return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",

	opts = {
		options = {
			mode = "tabs",
			separator_style = "thin",
			show_buffer_icons = true,
			show_buffer_close_icons = false,
			show_close_icon = false,
			color_icons = true,
		},
	},

	-- config = function(_, opts)
	-- 	require("bufferline").setup(opts)
	-- 	vim.api.nvim_set_hl(0, "BufferLineFill", {
	-- 		bg = "#111111",
	-- 	})
	-- end,
}
