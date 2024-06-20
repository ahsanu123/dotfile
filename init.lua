-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd([[colorscheme dracula]])

require("mason-nvim-dap").setup({
  ensure_installed = { "coreclr" },
  automatic_installation = true,
})

require("nvim-dap-virtual-text").setup({
  all_frames = true,
  highlight_new_as_changed = true,
})
