require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-t>", function()
  require("nvchad.themes").open {border = true}
end, {})

-- Leader CD cd's into current dir folder
map("n", "<leader>cd", ":cd %:h<CR>", { noremap = true, silent = true })

-- Swap G and gg keys
map("n", "G", "gg", {noremap = true, silent = true})
map("n", "gg", "G", {noremap = true, silent = true})

-- Keyboard shortcut for volt
vim.keymap.set("n", "<C-a>", function()
  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = false, border = true})
end, {})

-- Mouse shortcut for volt 
vim.keymap.set("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true, border = true})
end, {})


-- Run the current python file
map("n", "<F4>", ":terminal python3 %<CR>", { noremap = true, silent = true})

-- C++ keybindings
-- F5 to compile all C++ files in the current directory
vim.api.nvim_set_keymap('n', '<F5>', [[:terminal g++ -Wall *.cpp -o main && echo 'Compiled successfully!'<CR>]], {noremap = true, silent = true})

-- F6 to run the compiled program
vim.api.nvim_set_keymap('n', '<F6>', [[:terminal ./main<CR>]], {noremap = true, silent = true})

-- F7 to compile and run all C++ files (already working, included for completeness)
vim.api.nvim_set_keymap('n', '<F7>', [[:terminal g++ -Wall *.cpp -o main && ./main<CR>]], {noremap = true, silent = true})

-- F8 to compile with debug symbols
vim.api.nvim_set_keymap('n', '<F8>', [[:terminal g++ -g -O0 *.cpp -o debug && echo 'Debug file created successfully!'<CR>]], {noremap = true, silent = true})

-- End of C++
