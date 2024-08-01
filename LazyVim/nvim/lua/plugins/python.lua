return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          handlers = {
            -- Disable pyright diagnostics
            ["textDocument/publishDiagnostics"] = function() end,
          },
          -- Prevent pyright install from mason
          mason = false,
        },
      },
    },
  },
}

-- return {
--   {
--     "neovim/nvim-lspconfig",
--     opts = {
--       servers = {
--         ruff = {
--           handlers = {
--             ["textDocument/publishDiagnostics"] = function() end,
--           },
--           -- Prevent ruff install from mason
--           mason = false,
--         },
--       },
--     },
--   },
-- }
