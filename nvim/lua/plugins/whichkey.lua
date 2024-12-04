return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    local wk = require("which-key")
    wk.add({
      { "<leader>t", desc = "custom keymap" },
      { "<leader>tg", desc = "git conflict tools" },
    })
  end,
}
