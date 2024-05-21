local dap = require("dap")
local masonNvimDap = require("mason-nvim-dap")

masonNvimDap.setup({})

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "custom - attach ",
    request = "attach",
    processId = function()
      return vim.fn.input("Enter Process Id")
    end,
    program = function()
      return vim.fn.input("Path to dll", vim.fn.getcwd() .. "/bin/Debug/", "file")
    end,
  },
}

dap.adapters.armgdb = {
  type = "server",
  port = "2331",
  device = "${device}",
  interface = "${interface}",
  executable = {
    command = "~/tool/jlink/JLinkGDBServer",
    args = {
      {
        "-device",
        "${device}",
      },
      {
        "-if",
        "${interface}",
      },
    },
  },
}

dap.configurations.c = {
  {
    type = "armgdb",
    name = "arm debugger",
    request = "launch",
    program = function()
      return vim.fn.input("path to main file ", vim.fn.getcwd() .. "/", "file")
    end,
    cwd = "${workspaceFolder}",
  },
}

return {}
