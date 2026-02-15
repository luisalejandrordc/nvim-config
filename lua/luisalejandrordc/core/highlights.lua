local M = {}

function M.transparent_nvim_tree()
	vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeEndOfBuffer", { bg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { bg = "NONE", fg = "NONE" })
	vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { bg = "NONE", fg = "NONE" })
end

return M
