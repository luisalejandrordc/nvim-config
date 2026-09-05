local M = {}

function M.transparent_nvim_tree()
	vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { bg = "NONE", fg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { bg = "NONE", fg = "NONE" })

	vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#A6ADB4" })
	vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#D1D7DD", bold = true })
	vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", { fg = "#70777E" })
	vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#A6ADB4" })

	-- vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { bg = "#2C2C2C" })

	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE", fg = "#FFFFFF" })

	vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE", fg = "#FFFFFF" })

	-- Enable current line highlight
	vim.opt.cursorline = true
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "#121212" })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#5A5A78", bg = "NONE" })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FFFFFF", bold = true })
end

return M
