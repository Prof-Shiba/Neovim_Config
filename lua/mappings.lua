require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- CTRL + T : Fancier Theme Switcher
map("n", "<C-t>", function()
  require("nvchad.themes").open {border = true}
end, {})

-- C++ below
-- F5 to compile all C++ files in the current directory
map("n", "<F5>", ":!g++ *.cpp -o main && echo 'Compiled successfully!'<CR>", { noremap = true, silent = true })

-- F6 to run the compiled program
map("n", "<F6>", ":!./main<CR>", { noremap = true, silent = true })

-- F7 to compile and run all C++ files
map("n", "<F7>", ":!g++ *.cpp -o main && ./main<CR>", { noremap = true, silent = true })

-- F8 to compile with debug symbols
map("n", "<F8>", ":!g++ -g -O0 *.cpp -o main", { noremap = true, silent = true })
-- End of C++
