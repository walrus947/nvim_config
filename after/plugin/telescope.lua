--This file doesn't work -> Fix at some point
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set('n', "<leader>gf", builtin.git_files, {})
--Following function does not work. Does not grep as it should
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep in Buffer > ") })
end)
