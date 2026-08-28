require("luisalejandrordc.core.options")
require("luisalejandrordc.core.keymaps")
require("luisalejandrordc.core.filetypes")

local highlights = require("luisalejandrordc.core.highlights")

vim.api.nvim_create_autocmd("ColorScheme", {
	callback = function()
		highlights.transparent_nvim_tree()
	end,
})

vim.schedule(function()
	require("luisalejandrordc.core.highlights").transparent_nvim_tree()
end)
