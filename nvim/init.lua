-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.cmd([[colorscheme dracula]])
vim.cmd("set cursorcolumn")
vim.cmd("hi CursorColumn term=bold cterm=bold guibg=Grey30")
