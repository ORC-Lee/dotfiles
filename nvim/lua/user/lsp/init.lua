require("user.lsp.mason")
require("user.lsp.handlers").setup()
-- require("user.lsp.null-ls")
-- require("user.lsp.lsp-utils")

local status_ok, lspconfig = pcall(require, "lspconfig")
if not status_ok then
    vim.notify("lspconfig not found")
    return
end

-- Snippet to enable the language server
lspconfig.clangd.setup {}
lspconfig.bashls.setup {}
lspconfig.marksman.setup {}
lspconfig.jsonls.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.sumneko_lua.setup {}
lspconfig.taplo.setup {}
lspconfig.pyright.setup {}
lspconfig.yamlls.setup {}
