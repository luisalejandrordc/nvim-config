return {
	"nvim-tree/nvim-web-devicons",
	config = function()
		local devicons = require("nvim-web-devicons")

		devicons.setup({
			default = true, -- fallback icon for unknown filetypes
			strict = true, -- only use defined icons
		})

		devicons.set_icon({
			-- Python
			py = {
				icon = "",
				color = "#3572A5",
				name = "Python",
			},

			-- Lua
			lua = {
				icon = "",
				color = "#51A0CF",
				name = "Lua",
			},

			-- JavaScript / TypeScript
			js = {
				icon = "",
				color = "#F7DF1E",
				name = "JavaScript",
			},
			ts = {
				icon = "",
				color = "#3178C6",
				name = "TypeScript",
			},

			-- Web
			html = {
				icon = "",
				color = "#E34C26",
				name = "HTML",
			},
			css = {
				icon = "",
				color = "#563D7C",
				name = "CSS",
			},

			-- Config / data
			json = {
				icon = "",
				color = "#CB3837",
				name = "JSON",
			},
			yml = {
				icon = "",
				color = "#FFBC00",
				name = "YAML",
			},
			yaml = {
				icon = "",
				color = "#FFBC00",
				name = "YAML",
			},
		})
	end,
}
