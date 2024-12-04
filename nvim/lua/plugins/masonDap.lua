return {
  "jay-babu/mason-nvim-dap.nvim",
  dependencies = {
    "mason.nvim",
    "mxsdev/nvim-dap-vscode-js",
  },
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
  -- config = function()
  --   require("dap-vscode-js").setup({
  --     debugger_path = vim.fn.stdpath("data") .. "/lazy/vscode-js-debug",
  --     adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
  --   })
  --
  --   for _, lang in ipairs({ "typescript", "javascript" }) do
  --     require("dap").configurations[lang] = {
  --       {
  --         -- use nvim-dap-vscode-js's pwa-node debug adapter
  --         type = "pwa-node",
  --         -- attach to an already running node process with --inspect flag
  --         -- default port: 9222
  --         request = "attach",
  --         -- allows us to pick the process using a picker
  --         processId = require("dap.utils").pick_process,
  --         -- name of the debug action you have to select for this config
  --         name = "Attach debugger to existing `node --inspect` process",
  --         -- for compiled languages like TypeScript or Svelte.js
  --         sourceMaps = true,
  --         -- resolve source maps in nested locations while ignoring node_modules
  --         resolveSourceMapLocations = {
  --           "${workspaceFolder}/**",
  --           "!**/node_modules/**",
  --         },
  --         -- path to src in vite based projects (and most other projects as well)
  --         cwd = "${workspaceFolder}/src",
  --         -- we don't want to debug code inside node_modules, so skip it!
  --         skipFiles = { "${workspaceFolder}/node_modules/**/*.js" },
  --       },
  --     }
  --   end
  -- end,
  opts = {
    ensure_installed = { "coreclr" },
    automatic_installation = true,
  },
}
