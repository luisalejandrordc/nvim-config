return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000, -- load before other plugins
	config = function()
		require("gruvbox").setup({
			contrast = "hard", -- soft | medium | hard
			transparent_mode = true,
		})

		vim.cmd.colorscheme("gruvbox")
	end,
}
