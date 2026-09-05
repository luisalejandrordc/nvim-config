local M = {}

local sysname = vim.uv.os_uname().sysname

M.is_mac = sysname == "Darwin"
M.is_linux = sysname == "Linux"
M.is_windows = sysname == "Windows_NT"

return M
