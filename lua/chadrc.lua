-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",
  transparency = false,
  theme_toggle = {"onedark", "one_light"},
}

M.ui = {
  telescope = { style = bordered },

  statusline = {
    theme = "minimal", --|values| = default, vscode, vscode_colored, minimal
    separator_style = "round", -- |values| = default, round, block, arrow
    -- order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor", "l"},
    -- modules = { l = "%L lines", },
  },

}

M.nvdash = {
    load_on_startup = true,
}

M.colorify = {
  enabled = true,
  mode = "virtual",
  highlight = { hex = true, lspvars = true},
  virt_text = "▆",
}

return M
