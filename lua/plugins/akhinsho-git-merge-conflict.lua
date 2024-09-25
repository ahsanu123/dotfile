---@type LazyPlugin
local akhinsoGitMergeConflic = {
  "akinsho/git-conflict.nvim",
  config = true,
  opts = {
    default_mappings = true, -- disable buffer local mapping created by this plugin
    default_commands = true, -- disable commands created by this plugin
    disable_diagnostics = false, -- This will disable the diagnostics in a buffer whilst it is conflicted
    list_opener = "copen", -- command or function to open the conflicts list
    highlights = { -- They must have background color, otherwise the default color will be used
      incoming = "DiffAdd",
      current = "DiffText",
      ancestor = "#00ccff",
    },
  },
  keys = {
    { "<leader>tgs", "<cmd>GitConflictRefresh<cr>", desc = "search for conflict marker" },
    { "<leader>tg]", "<cmd>GitConflictNextConflict<cr>", desc = "display next conflict" },
    { "<leader>tg[", "<cmd>GitConflictPrevConflict<cr>", desc = "display previous conflict" },
    { "<leader>tgl", "<cmd>GitConflictListQf<cr>", desc = "list git conflict quick fix" },
    { "<leader>tgo", "<cmd>GitConflictChooseOurs<cr>", desc = "conflict, choose ours" },
    { "<leader>tgt", "<cmd>GitConflictChooseTheirs<cr>", desc = "conflict, choose theirs" },
    { "<leader>tgb", "<cmd>GitConflictChooseBase<cr>", desc = "conflict, choose Base" },
    { "<leader>tgn", "<cmd>GitConflictChooseNone<cr>", desc = "conflict, choose none" },
  },
}
return akhinsoGitMergeConflic
