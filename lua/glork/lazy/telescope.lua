return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' },

      config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string( { string = vim.fn.input('grep < ' ) } );
        end)
        vim.keymap.set('n', '<leader>gp', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>gs', builtin.grep_string, { desc = 'Grep repo for string under cursor' })
        vim.keymap.set('n', '<leader>gu', builtin.lsp_references, { noremap = true, silent = true, desc = 'lsp references' })
        vim.keymap.set('n', 'gd', builtin.lsp_definitions, { noremap = true, silent = true })
        vim.keymap.set('n', '<leader>jt', builtin.lsp_type_definitions, { noremap = true, silent = true })
        vim.keymap.set('n', 'gi', builtin.lsp_implementations, { desc = "Go to implementation" })
        vim.keymap.set('n', '<leader>ep', builtin.diagnostics, { desc = "List errors in repo" })
    end
}
