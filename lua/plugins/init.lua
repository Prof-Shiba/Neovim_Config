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
    "nvzone/typr",
    cmd = "TyprStats",
    dependencies = "nvzone/volt",
    opts = {},
  },

  {
      'IogaMaster/neocord',
      event = "VeryLazy",
      config = function()
     -- The setup config table shows all available config options with their default values:
      require("neocord").setup({
          -- General options
          logo                = "auto",                     -- "auto" or url
          logo_tooltip        = nil,                        -- nil or string
          main_image          = "language",                 -- "language" or "logo"
          client_id           = "1157438221865717891",      -- Use your own Discord application client id (not recommended)
          log_level           = nil,                        -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
          debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
          blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
          file_assets         = {},                         -- Custom file asset definitions keyed by file names and extensions (see default config at `lua/presence/file_assets.lua` for reference)
          show_time           = true,                       -- Show the timer
          global_timer        = false,                      -- if set true, timer won't update when any event are triggered

          -- Rich Presence text options
          editing_text        = "Editing %s",               -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
          file_explorer_text  = "Browsing %s",              -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
          git_commit_text     = "Committing changes",       -- Format string rendered when committing changes in git (either string or function(filename: string): string)
          plugin_manager_text = "Managing plugins",         -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
          reading_text        = "Reading %s",               -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
          workspace_text      = "Working on %s",            -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
          line_number_text    = "Line %s out of %s",        -- Format string rendered when `enable_line_number` is set to true (either string or function(line_number: number, line_count: number): string)
          terminal_text       = "Using Terminal",           -- Format string rendered when in terminal mode.
      })
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
