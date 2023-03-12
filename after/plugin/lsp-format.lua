require("lsp-format").setup {
    tab_width = function()
        return vim.opt.shiftwidth:get()
    end,
    yaml = { tab_width = 4 },
}

--Each lsp has its own formatting file that it sources whenever it "attaches"
--Whenever a file is saved, it looks upwards from the file directory until
--it finds a hit, and then takes its info (reference /Dropbox/School/Semester 6/Systems II
--for reference with .clang-format

require("lspconfig").bashls.setup {}
require("lspconfig").clangd.setup { on_attach = require("lsp-format").on_attach }
require("lspconfig").jdtls.setup { on_attach = require("lsp-format").on_attach }
require("lspconfig").tsserver.setup { on_attach = require("lsp-format").on_attach }
require("lspconfig").lua_ls.setup {}
require("lspconfig").pyright.setup { on_attach = require("lsp-format").on_attach }
require("lspconfig").sourcekit.setup {}
require("lspconfig").rust_analyzer.setup { on_attach = require("lsp-format").on_attach }
