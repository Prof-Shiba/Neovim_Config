require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<C-t>", function()
  require("nvchad.themes").open {border = true}
end, {})

-- Leader CD cd's into current dir folder
map("n", "<leader>cd", ":cd %:h<CR>", { noremap = true, silent = true })

-- mouse users + nvimtree users! (for volt menu)
vim.keymap.set("n", "<RightMouse>", function()
  vim.cmd.exec '"normal! \\<RightMouse>"'

  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options, { mouse = true })
end, {})

-- C++ below
-- F5 to compile all C++ files in the current directory
map("n", "<F5>", ":!g++ *.cpp -o main && echo 'Compiled successfully!'<CR>", { noremap = true, silent = true })

-- F6 to run the compiled program
map("n", "<F6>", ":!./main<CR>", { noremap = true, silent = true })

-- F7 to compile and run all C++ files
map("n", "<F7>", ":!g++ *.cpp -o main && ./main<CR>", { noremap = true, silent = true })

-- F8 to compile with debug symbols
map("n", "<F8>", ":!g++ -g -O0 *.cpp -o debug && echo 'Debug file created successfully!'<CR>", { noremap = true, silent = true })
-- End of C++
