local map = vim.keymap.set
local dap = require('dap')

local dapui = require("dapui")

dapui.setup()

map(
    "n",
    "<leader>db",
    "<cmd> DapToggleBreakpoint <CR>",
    { desc = "Toggle DAP Breakpoint" }
)

map(
    "n",
    "<leader>dr",
    "<cmd> DapContinue <CR>",
    { desc = "Start or continue DAP" }
)

map(
    "n",
    "<leader>du",
    function()
        require("dapui").toggle()
    end,
    { desc = "Toggle DAP UI" }
)


dap.adapters.codelldb = {
  type = 'server',
  port = "${port}",
  executable = {
    command = vim.fn.stdpath("data") .. '/mason/bin/codelldb',
    args = {"--port", "${port}"},
  }
}



dap.configurations.cpp = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    args = {},
    runInTerminal = false,
    console = "integratedTerminal",
  },
}
