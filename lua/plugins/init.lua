return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "folke/todo-comments.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    event = "BufRead",
    config = true,
  },

  { "nvzone/volt" , lazy = true },
  { "nvzone/menu" , lazy = true },
  { "nvzone/showkeys", cmd = "ShowkeysToggle" },

  {
   "nvim-tree/nvim-tree.lua",
      opts = {
        view = {
          side = "left",
          width = 30,
        },
      }
  },

  {
    "windwp/nvim-ts-autotag",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-ts-autotag").setup({
        enable_close = true,
        enable_rename = true,
        enable_close_on_slash = false,
      })
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  {
    "mattn/emmet-vim",
    ft = {"html", "css", "javascript"},
    config = function()
    end
  },

  {
    "mfussenegger/nvim-dap",
    config = function()
        require("configs.dap")
    end,
  },
  -- Also needed for DAP ui
  {
    "nvim-neotest/nvim-nio",
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
        "mfussenegger/nvim-dap",
        "nvim-neotest/nvim-nio",
    },
    config = function()
        require("configs.dap-ui")
    end,
  },

  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
        "mfussenegger/nvim-dap",
        "rcarriga/nvim-dap-ui",
    },
    config = function()
        require("configs.dap-python")
    end,
  },

  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VeryLazy",
    config = function()
        require("configs.mason-dap")
    end,
  },

  {
    "nvzone/showkeys",
    opts = {
      timeout = 3,
      maxkeys = 4,
      show_count = true,
    }
  },

  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require("configs.lint")
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  		 "vim", "lua", "vimdoc",
       "html", "css", "python",
       "c", "cpp", "javascript",
       "tsx", "vue",
  		},
  	},
  },
}
