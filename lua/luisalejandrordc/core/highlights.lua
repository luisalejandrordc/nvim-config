local M = {}

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

	vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { bg = "#2C2C2C" })
	-- vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { bg = "#343454" })

	-- Enable current line highlight
	vim.opt.cursorline = true
	-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2B2B2B" }) -- slightly lighter than background
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1A1A1A" }) -- slightly lighter than background
	-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2A2A3C" }) -- slightly lighter than background
	-- vim.api.nvim_set_hl(0, "LineNr", { fg = "#5A5A78", bg = "#1E1E2E" })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#47FF9C", bold = true }) -- optional, line number highlight
end

return M
