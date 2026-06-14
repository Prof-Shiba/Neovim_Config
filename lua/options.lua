require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- Use pwsh (pwsh is PowerShell 7+, powershell.exe is Windows PowerShell 5.1)
if vim.fn.has('win32') == 1 then
  vim.opt.shell = "pwsh"
end
