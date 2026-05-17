return {
	"lervag/vimtex",
	lazy = false,
	init = function()
		vim.g.vimtex_view_method = "general"

		-- MAC
		-- vim.g.vimtex_view_method = "skim"

		-- WSL
		vim.g.vimtex_view_general_viewer = "/mnt/c/Users/luisa/AppData/Local/SumatraPDF/SumatraPDF.exe"
		vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"

		vim.g.vimtex_compiler_method = "latexmk"
		vim.g.vimtex_quickfix_mode = 0
		vim.g.vimtex_syntax_enabled = 0
		vim.g.vimtex_compiler_latexmk = {
			continuous = 1,
			executable = "latexmk",
			options = {
				"-pdf",
				"-pdflatex=lualatex", -- Emoji support
				"-interaction=nonstopmode",
				"-synctex=1",
				"-file-line-error",
				"-outdir=build",
			},
		}
		-- Run clean after every compile (infinite loop on continuous mode so you must disable it, remove the outdir=build option too)
		-- vim.api.nvim_create_autocmd("User", {
		-- 	pattern = {
		-- 		"VimtexEventCompileSuccess",
		-- 		"VimtexEventCompileFailed",
		-- 	},
		-- 	callback = function()
		-- 		vim.cmd("VimtexClean")
		-- 	end,
		-- })
	end,
}
