-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",
  transparency = true,
  theme_toggle = {"onedark", "one_light"},
  -- hl_override = require "configs.highlights".override, -- overrides the default white color
}

M.ui = {
  statusline = {
    theme = "default", --|values| = default, vscode, vscode_colored, minimal
    separator_style = "arrow", -- |values| = default, round, block, arrow
    order = { "mode", "f", "l", "git", "%=", "lsp_msg", "diagnostics", "lsp", "cwd",  "custom" },
     modules = {
       custom = function()
         return "ꑭProfShibe"
       end,

       f = function()
         return "%#St_file#" .. vim.fn.expand("%:t")
       end,

       l = " - %L lines",
     }
  },
}

M.nvdash = {
    load_on_startup = true,
    header = {
      "####################",
      "# ################ #",
      "# ################ #",
      "# ######    ###### #",
      "# #####      ##### #",
      "# ####  #  #  #### #",
      "# ###  ##  ##  ### #",
      "# #######  ####### #",
      "# #######  ####### #",
      "# ####        #### #",
      "# #######  ####### #",
      "# #######  ####### #",
      "# #######  ####### #",
      "# #######  ####### #",
      "  #.-####  ####-.# ",
      "  .# ######## #  ",
          "  # #### # ",
             " #  # ",
    "                        ",
    "                        ",
    },
}

M.colorify = {
  enabled = true,
  mode = "virtual",
  highlight = { hex = true, lspvars = true},
  virt_text = "▆",
}

return M
