---@type LazyPlugin
local dashboardNvim = {
  "nvimdev/dashboard-nvim",
  opts = function(_, opts)
    local logo = [[

         █████╗ ██╗  ██╗ █████╗ ██╗  ██╗          
        ██╔══██╗██║  ██║██╔══██╗██║  ██║          
        ███████║███████║███████║███████║          
        ██╔══██║██╔══██║██╔══██║██╔══██║          
        ██║  ██║██║  ██║██║  ██║██║  ██║          
        ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝          
████████╗███████╗██████╗ ██████╗  ██████╗ ██████╗ 
╚══██╔══╝██╔════╝██╔══██╗██╔══██╗██╔═══██╗██╔══██╗
   ██║   █████╗  ██████╔╝██████╔╝██║   ██║██████╔╝
   ██║   ██╔══╝  ██╔══██╗██╔══██╗██║   ██║██╔══██╗
   ██║   ███████╗██║  ██║██║  ██║╚██████╔╝██║  ██║
   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝

  ]]
    logo = string.rep("\n", 8) .. logo .. "\n\n"
    opts.config.header = vim.split(logo, "\n")

    return opts
  end,
}
return dashboardNvim
