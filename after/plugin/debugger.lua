local dap = require('dap')

dap.adapters.gdb = {
  type = 'executable',
  command = 'gdb',
  args = { '-i', 'dap' }
}

dap.configurations.cpp = {
  {
    name = "Launch C++ program",
    type = "gdb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopAtEntry = true,
    setupCommands = {
      { text = '-enable-pretty-printing', description = 'Enable pretty printing', ignoreFailures = true }
    },
  }
}

dap.configurations.c = dap.configurations.cpp -- Use the same config for C

require("dapui").setup()

vim.fn.sign_define('DapBreakpoint', { text='🔴', texthl='', linehl='', numhl='' })

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end


