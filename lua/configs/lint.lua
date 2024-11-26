
local lint = require("lint")

lint.linters_by_ft = {
  cpp = { "cpplint" },
  python = { "flake8" },
  html = {"htmlhint"},
  css = {"stylelint"},
}

vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
  callback = function()
    lint.try_lint()
  end,
})
