return {
  "akinsho/toggleterm.nvim",
  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 15 -- Set the height of the horizontal terminal (adjust as needed)
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
    open_mapping = [[<A-h>]], -- Set Alt+h as the key to toggle the terminal
    direction = "horizontal", -- Ensure the terminal opens horizontally
    persist_size = true, -- Preserve the size of the terminal
    persist_mode = true, -- Preserve the terminal session
    shade_terminals = true, -- Optional: Shade the terminal background
    float_opts = {
      border = "curved", -- Optional: Customize floating terminal (not used here but included for completeness)
    },
  },
}
