return {
	"sphamba/smear-cursor.nvim",

	lazy = false,

	opts = {
		stiffness = 1,
		cursor_color = "#47FF9C",
		smear_between_buffers = true,
		smear_between_neighbor_lines = true,
		scroll_buffer_space = true,
		smear_insert_mode = true,
	},

	keys = {
		{
			"<leader>sc",
			"<cmd>SmearCursorToggle<cr>",
			desc = "Toggle smear cursor",
		},
	},
}
