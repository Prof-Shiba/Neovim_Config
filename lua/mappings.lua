require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<C-t>", function()
  require("nvchad.themes").open {border = true}
end, {})

-- C++ below
-- F5 to compile the current C++ file
map("n", "<F5>", ":!g++ % -o %:r && echo 'Compiled successfully!'<CR>", { noremap = true, silent = true })
-- F6 to run the compiled program
map("n", "<F6>", ":!./%:r<CR>", { noremap = true, silent = true })
-- F7 to compile and run the program
map("n", "<F7>", ":!g++ % -o %:r && ./%:r<CR>", { noremap = true, silent = true })
-- F8 to compile with debug symbols and run the program
map("n", "<F8>", ":!g++ -g -O0 % -o %:r && ./%:r<CR>", { noremap = true, silent = true })
-- End of C++
