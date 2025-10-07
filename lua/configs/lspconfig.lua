-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

-- local lspconfig = require "lspconfig"

-- ts_ls is typescript + javascript 
local servers = { "html", "cssls", "pyright", "lua_ls", "clangd", "ts_ls", "bashls", "rust_analyzer", "neocmake"}
local nvlsp = require "nvchad.configs.lspconfig"

vim.lsp.enable(servers)

for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
end
