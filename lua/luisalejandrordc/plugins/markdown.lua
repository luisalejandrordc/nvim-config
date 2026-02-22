return {
	"iamcco/markdown-preview.nvim",
	ft = { "markdown" },
	build = "cd app && npm install",
	keys = {
		{
			"<leader>mp",
			"<cmd>MarkdownPreviewToggle<CR>",
			desc = "Markdown Preview Toggle",
			ft = "markdown",
		},
	},
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
}
