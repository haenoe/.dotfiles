require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "rust_analyzer", "lua_ls", "pyright", "tsserver", "nil_ls", "clangd", "kotlin_language_server", "gopls" },
    automatic_installation = true,
})

-- Live diagnostics in insert mode
vim.diagnostic.config({ update_in_insert = true })

require("lspconfig").rust_analyzer.setup({})
require("lspconfig").pyright.setup({})
require("lspconfig").tsserver.setup({})
require("lspconfig").nil_ls.setup({})
require("lspconfig").clangd.setup({})
require("lspconfig").kotlin_language_server.setup({})
require("lspconfig").gopls.setup({})
require("lspconfig").lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
            },
        }
    }
})
