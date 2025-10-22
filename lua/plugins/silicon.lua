return {
{
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    init = function()
      local wk = require("which-key")
      wk.add({
          mode = { "v" },
          { "<leader>s",  group = "Silicon" },
          { "<leader>sc", function() require("nvim-silicon").clip() end, desc = "Copy code screenshot to clipboard" },
          { "<leader>sf", function() require("nvim-silicon").file() end,  desc = "Save code screenshot as file" },
          { "<leader>ss", function() require("nvim-silicon").shoot() end,  desc = "Create code screenshot" },
      })
    end,

    main = "nvim-silicon",
    opts = {
      font = "JetBrainsMono Nerd Font=20;Noto Color Emoji=20",

      window_title = function()
        return vim.fn.fnamemodify(
            vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()),
            ":t"
	    )
      end,

      no_line_number = false,
      theme = "gruvbox-dark",
      background_image = "/home/shibe/Pictures/Wallpapers/misty_forest.jpg",
      to_clipboard = true,

      language = function()
        return vim.fn.fnamemodify(
          vim.api.nvim_buf_get_name(vim.api.nvim_get_current_buf()),
          ":e"
        )
      end,
    },
  },
}
