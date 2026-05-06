return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- 禁用 pyright 语言服务器
        pyright = { enabled = false },
        ruff = {
          -- 核心：禁用诊断处理器
          handlers = {
            ["textDocument/publishDiagnostics"] = function() end,
          },
          -- 核心：禁用诊断能力 (针对 0.10+ 版本)
          on_attach = function(client)
            client.server_capabilities.diagnosticProvider = false
          end,
        },
      },
    },
  },
}
