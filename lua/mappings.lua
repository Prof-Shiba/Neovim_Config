require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<C-t>", function() -- CTRL + t for a nicer looking theme switcher
  require("nvchad.themes").open {border = true}
end, {})

-- C++ below
-- F5 to compile all C++ files in the current directory
map("n", "<F5>", ":!g++ *.cpp -o program && echo 'Compiled successfully!'<CR>", { noremap = true, silent = true })

-- F6 to run the compiled program
map("n", "<F6>", ":!./program<CR>", { noremap = true, silent = true })

-- F7 to compile and run all C++ files
map("n", "<F7>", ":!g++ *.cpp -o program && ./program<CR>", { noremap = true, silent = true })

-- F8 to compile with debug symbols and run
map("n", "<F8>", ":!g++ -g -O0 *.cpp -o program && ./program<CR>", { noremap = true, silent = true })

-- End of C++
