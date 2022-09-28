local status_ok, mason = pcall(require, "mason")
if not status_ok then
    vim.notify("mason not found")
    return
end

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    },
})

local status_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
    vim.notify("mason-lspconfig not found")
    return
end

mason_lspconfig.setup({
    ensure_installed = { "clangd", "jsonls", "marksman", "taplo", "sumneko_lua", "rust_analyzer", "bashls" }
})
