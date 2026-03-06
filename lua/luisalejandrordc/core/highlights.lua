local M = {}

local colors = {
	fg = "#c0caf5",
	blue = "#7aa2f7",
	cyan = "#7dcfff",
	purple = "#bb9af7",
	blue_dim = "#3d59a1",
	indent = "#3b4261",
}

function M.transparent_nvim_tree()
	vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { bg = "NONE", fg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { bg = "NONE", fg = "NONE" })

	vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#9CA0A4" })
	vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#C1C5C9", bold = true })
	vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", { fg = "#6E7276" })
	vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#9CA0A4" })

	-- Enable current line highlight
	vim.opt.cursorline = true
	-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2B2B2B" }) -- slightly lighter than background
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1A1A1A" }) -- slightly lighter than background
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#47FF9C", bold = true }) -- optional, line number highlight
end

return M
