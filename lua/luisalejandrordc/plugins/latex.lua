return {
	"lervag/vimtex",
	lazy = false,
	init = function()
		vim.g.vimtex_view_method = "skim"
		vim.g.vimtex_compiler_method = "latexmk"
		vim.g.vimtex_quickfix_mode = 0
		vim.g.vimtex_syntax_enabled = 0
		vim.g.vimtex_compiler_latexmk = {
			continuous = 1,
			options = {
				"-pdf",
				"-interaction=nonstopmode",
				"-synctex=1",
				"-file-line-error",
				"-outdir=build",
			},
		}
	end,
}
