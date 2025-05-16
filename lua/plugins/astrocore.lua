-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {
      -- see `:h vim.filetype.add` for usage
      extension = {
        foo = "fooscript",
      },
      filename = {
        [".foorc"] = "fooscript",
      },
      pattern = {
        [".*/etc/foo/.*"] = "fooscript",
      },
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- Sensible keybinds (NOT THE DEFAULT) 2025-04-29
        ["<Tab>"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["<S-Tab>"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },
        ["<Leader>x"] = { function() require("astrocore.buffer").close() end, desc = "Close current buffer" },
        ["<C-n>"] = { function() vim.cmd "Neotree toggle" end, desc = "Toggle file tree" },
        ["<leader>cd"] = { ":cd %:h<CR>", desc = "CD into current directory" },
        ["G"] = { "gg", desc = "Swap G and gg keys" },
        ["gg"] = { "G", desc = "Swap G and gg keys" },
        [";"] = { ":", desc = "Open command mode" },
        ["<A-h>"] = { "<Cmd>ToggleTerm direction=horizontal<CR>", desc = "Toggle horizontal terminal" },

        -- Run the current Python file with <F4>
        ["<F4>"] = {
          function() vim.cmd "terminal python3 %" end,
          desc = "Run current Python file",
          noremap = true,
          silent = true,
        },
        -- Compile all C++ files with <F5>
        ["<F5>"] = {
          function() vim.cmd "terminal g++ -Wall *.cpp -o main && echo 'Compiled successfully!'" end,
          desc = "Compile C++ files",
          noremap = true,
          silent = true,
        },
        -- Run the compiled C++ program with <F6>
        ["<F6>"] = {
          function() vim.cmd "terminal ./main" end,
          desc = "Run compiled C++ program",
          noremap = true,
          silent = true,
        },
        -- Compile and run all C++ files with <F7>
        ["<F7>"] = {
          function() vim.cmd "terminal g++ -Wall *.cpp -o main && ./main" end,
          desc = "Compile and run C++ files",
          noremap = true,
          silent = true,
        },
        -- Compile C++ with debug symbols with <F8>
        ["<F8>"] = {
          function() vim.cmd "terminal g++ -g -O0 *.cpp -o debug && echo 'Debug file created successfully!'" end,
          desc = "Compile C++ with debug symbols",
          noremap = true,
          silent = true,
        },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },

        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,
      },
    },
  },
}
