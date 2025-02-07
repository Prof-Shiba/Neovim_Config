-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "tokyodark",
  transparency = false,
  theme_toggle = {"tokyodark", "one_light"},
  -- hl_override = require "configs.highlights".override, -- overrides the default white color
}

M.ui = {
  statusline = {
    theme = "default", --|values| = default, vscode, vscode_colored, minimal
    separator_style = "arrow", -- |values| = default, round, block, arrow
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "custom", "cursor", "l", },
     modules = {
       custom = function()
         return "ꑭProfShibe "
       end,

       l = "%L lines",
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
