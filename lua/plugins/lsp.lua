---@diagnostic disable: missing-fields
return {
  "neovim/nvim-lspconfig",
  init = function(_)
    local lspconfig = require("lspconfig")

    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          hint = {
            enable = true,
          },
        },
      },
    })

    -- lspconfig.tsserver.setup({
    --   settings = {
    --     javascript = {
    --       inlayHints = {
    --         includeInlayEnumMemberValueHints = true,
    --         includeInlayFunctionLikeReturnTypeHints = true,
    --         includeInlayFunctionParameterTypeHints = true,
    --         includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
    --         includeInlayParameterNameHintsWhenArgumentMatchesName = true,
    --         includeInlayPropertyDeclarationTypeHints = true,
    --         includeInlayVariableTypeHints = false,
    --       },
    --     },
    --
    --     typescript = {
    --       inlayHints = {
    --         includeInlayEnumMemberValueHints = true,
    --         includeInlayFunctionLikeReturnTypeHints = true,
    --         includeInlayFunctionParameterTypeHints = true,
    --         includeInlayParameterNameHints = "all", -- 'none' | 'literals' | 'all';
    --         includeInlayParameterNameHintsWhenArgumentMatchesName = true,
    --         includeInlayPropertyDeclarationTypeHints = true,
    --         includeInlayVariableTypeHints = false,
    --       },
    --     },
    --   },
    -- })

    lspconfig.omnisharp.setup({
      settings = {
        roslynExtensionsOptions = {
          inlayHintsOptions = {
            enableForParameters = true,
            forLiteralParameters = true,
            forIndexerParameters = true,
            forObjectCreationParameters = true,
            forOtherParameters = true,
            suppressForParametersThatDifferOnlyBySuffix = false,
            suppressForParametersThatMatchMethodIntent = false,
            suppressForParametersThatMatchArgumentName = false,
            enableForTypes = true,
            forImplicitVariableTypes = true,
            forLambdaParameterTypes = true,
            forImplicitObjectCreation = true,
          },
        },
      },
    })
  end,
}
