local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    python = {"black"},
    cpp = {"clang_format"},
    c = {"clang_format"},
  },
}

return options
