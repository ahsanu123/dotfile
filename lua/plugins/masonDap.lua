require("mason-nvim-dap").setup({
  ensure_installed = { "coreclr" },
  automatic_installation = true,
})

local dap = require("dap")

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
    processId = function()
      return vim.fn.input("Enter Process Id: ")
    end,
    program = function()
      return vim.fn.input("Path to dll", vim.fn.getcwd() .. "\\bin\\Debug\\", "file")
      -- return "D:\\project\\2023\\dmc\\Digital-Marketing-Content\\src\\DMC.Api\\bin\\Debug\\net6.0-windows\\DMC.Api.dll"
    end,
  },
}

return {}
