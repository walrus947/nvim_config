require("lua_config")

require'lspconfig'.bashls.setup{}
require'lspconfig'.clangd.setup{}
require'lspconfig'.jdtls.setup{}
require'lspconfig'.java_language_server.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.sourcekit.setup{}
require'lspconfig'.lua_ls.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.rust_analyzer.setup{}

require("prettier").setup()

vim.g.netrw_bufsettings = "noma nomod nonu nobl nowrap ro rnu"

