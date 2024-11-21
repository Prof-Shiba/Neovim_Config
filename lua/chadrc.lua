-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "catppuccin",
  transparency = false,
  theme_toggle = {"catppuccin", "one_light"},
  hl_override = require "configs.highlights".override, -- overrides the default white color
}

M.ui = {
  statusline = {
    theme = "minimal",
    separator_style = "round",
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
