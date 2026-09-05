local platform = require("luisalejandrordc.core.platform")
local togglekey = platform.is_mac and "<C-\\>" or "<A-\\>"

return {
	"akinsho/toggleterm.nvim",
	version = "*",

	config = function()
		require("toggleterm").setup({
			size = 10,
			open_mapping = togglekey,
			direction = "horizontal",
			shade_terminals = true,
			start_in_insert = true,
			persist_size = true,
		})

		vim.keymap.set("n", "<leader>\\", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
		vim.keymap.set("n", togglekey, "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
	end,
}
