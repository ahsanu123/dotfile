return {
  "jay-babu/mason-nvim-dap.nvim",
  dependencies = "mason.nvim",
  cmd = { "DapInstall", "DapUninstall" },
  init = function()
    local dap = require("dap")
    local daputil = require("dap.utils")

    dap.configurations.cs = {
      {
        type = "coreclr",
        name = "launch - DMC Api",
        request = "launch",
        program = function()
          return vim.fn.input("Path to dll", vim.fn.getcwd() .. "\\bin\\Debug\\", "file")
        end,
      },
      {
        type = "coreclr",
        name = "attach - coreclr",
        request = "attach",
        processId = daputil.pick_process,
        program = function()
          return vim.fn.input("Path to dll", vim.fn.getcwd() .. "\\bin\\Debug\\", "file")
        end,
      },
    }
  end,
  opts = {
    ensure_installed = { "coreclr" },
    automatic_installation = true,
  },
}
