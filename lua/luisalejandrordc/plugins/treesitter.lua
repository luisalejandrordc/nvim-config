return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",

	dependencies = {
		{
			"windwp/nvim-ts-autotag",
			config = function()
				require("nvim-ts-autotag").setup()
			end,
		},
	},

	config = function()
		require("nvim-treesitter").setup()

		local ensure_installed = {
			"python",
			"json",
			"javascript",
			"typescript",
			"tsx",
			"yaml",
			"html",
			"css",
			"prisma",
			"markdown",
			"markdown_inline",
			"svelte",
			"graphql",
			"bash",
			"lua",
			"vim",
			"dockerfile",
			"gitignore",
			"query",
			"vimdoc",
			"c",
			"cpp",
			"php",
			"java",
			"sql",
			"latex",
			"arduino",
			"go",
			"r",
		}
		require("nvim-treesitter").install(ensure_installed)

		vim.api.nvim_create_autocmd("FileType", {
			callback = function(args)
				local filetype = vim.bo[args.buf].filetype

				if vim.bo[args.buf].buftype ~= "" or filetype == "" then
					return
				end

				local lang = vim.treesitter.language.get_lang(filetype)

				if not lang then
					return
				end

				if not pcall(vim.treesitter.start, args.buf, lang) then
					return
				end

				if filetype ~= "cpp" then
					vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end
			end,
		})
	end,
}
