return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

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
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "python",
       "c", "cpp",
  		},
  	},
  },
}
