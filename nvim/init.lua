-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("mason").setup({
  registries = {
    "github:mason-org/mason-registry",
    "github:crashdummyy/mason-registry",
  },
})

require("neogen").setup({
  languages = {
    cs = {
      template = { annotation_convention = "xmldoc" },
    },
  },
})

vim.cmd([[colorscheme dracula]])
vim.cmd("set cursorcolumn")
vim.cmd("hi CursorColumn term=bold cterm=bold guibg=Grey30")
