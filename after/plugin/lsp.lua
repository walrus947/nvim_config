local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    "bashls",
    "clangd",
    "jdtls",
    "tsserver",
    "pyright",
    "rust_analyzer"
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-space>"] = cmp.mapping.complete()
})

lsp.set_preferences({
    sign_icons = { }
})

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})
