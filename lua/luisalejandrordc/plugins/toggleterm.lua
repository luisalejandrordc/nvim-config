return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 10,
			open_mapping = [[<c-\>]],
			direction = "horizontal",
			shade_terminals = true,
			start_in_insert = true,
			persist_size = true,
		})

		vim.keymap.set("n", "<leader>\\", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
	end,
}
