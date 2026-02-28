local M = {}

function M.transparent_nvim_tree()
	vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { bg = "NONE", fg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { bg = "NONE", fg = "NONE" })

	-- Enable current line highlight
	vim.opt.cursorline = true
	-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#222222" }) -- slightly lighter than background
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2B2B2B" }) -- slightly lighter than background
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#47FF9C", bold = true }) -- optional, line number highlight
end

return M
