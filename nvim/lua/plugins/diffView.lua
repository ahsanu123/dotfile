---@type LazyPlugin
local diffView = {
  "sindrets/diffview.nvim",
  opts = function(plugin, opt)
    ---@class DiffviewConfig
    local option = {
      view = {
        -- Configure the layout and behavior of different types of views.
        -- Available layouts:
        --  'diff1_plain'
        --    |'diff2_horizontal'
        --    |'diff2_vertical'
        --    |'diff3_horizontal'
        --    |'diff3_vertical'
        --    |'diff3_mixed'
        --    |'diff4_mixed'
        -- For more info, see |diffview-config-view.x.layout|.
        default = {
          -- Config for changed files, and staged files in diff views.
          layout = "diff2_horizontal",
          disable_diagnostics = false, -- Temporarily disable diagnostics for diff buffers while in the view.
          winbar_info = true, -- See |diffview-config-view.x.winbar_info|
        },
        merge_tool = {
          layout = "diff3_mixed",
        },
      },
    }
    return option
  end,
}
return diffView
