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
          local s = "/"
          if vim.fn.has("win32") then
            s = "\\"
          end
          local path = vim.fn.getcwd() .. s .. "bin" .. s .. "Debug" .. s

          return vim.fn.input("Path to dll", path, "file")
        end,
      },
    }
  end,
  opts = {
    ensure_installed = { "coreclr" },
    automatic_installation = true,
  },
}
