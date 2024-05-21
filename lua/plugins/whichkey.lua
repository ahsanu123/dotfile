return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    local wk = require("which-key")
    wk.register({
      t = {
        name = "Telescope Custom Keymap",
        r = { "<cmd>Telescope resume<cr>", "resume last telescope picker" },
      },
    }, {
      prefix = "<leader>",
    })
  end,
}
