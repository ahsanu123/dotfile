require("mason-nvim-dap").setup({
  ensure_installed = { "coreclr" },
  automatic_installation = true,
})

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

return {}
