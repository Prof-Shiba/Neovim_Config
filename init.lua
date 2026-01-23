-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

-- Lua (for init.lua)
vim.o.swapfile = true -- Ensure swap files are enabled
vim.o.updatetime = 250 -- Update swap file quickly to detect crashes
vim.o.directory = vim.fn.expand "~/.nvim/swap//" -- Store swap files in a dedicated directory

-- Automatically handle swap files
vim.api.nvim_create_autocmd("SwapExists", {
  pattern = "*",
  callback = function()
    -- Check if the swap file is stale (no process is using it)
    vim.cmd "let v:swapchoice = 'd'" -- Automatically delete the swap file
  end,
})

require "lazy_setup"
require "polish"
