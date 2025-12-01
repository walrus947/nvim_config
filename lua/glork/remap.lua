vim.g.mapleader = ' '

-- vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
-- vim.keymap.set('n', '<leader>pv', function()
--   vim.cmd('Ex')             -- Open netrw
--   vim.wo.relativenumber = true  -- Enable relative line numbers
-- end)

vim.keymap.set('n', '<leader>pv', function()
  vim.cmd('Ex') -- Open netrw
end)

-- Ensure relative line numbers persist in netrw
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    vim.defer_fn(function()
      vim.wo.number = true
      vim.wo.relativenumber = true
    end, 0) -- Delay to ensure netrw fully loads before applying settings
  end,
})

--floating error messages
vim.o.updatetime = 250
vim.api.nvim_create_autocmd( { "CursorHold", "CursorHoldI" }, {
    callback = function()
        vim.diagnostic.open_float(nil, { focus = false })
    end
})

vim.diagnostic.config({
    virtual_text = false
})

--floating diagnostic message for current line
vim.keymap.set('n', '<leader>em', ":lua vim.diagnostic.open_float(0, {scope='line'})<CR>")

--type info
vim.keymap.set('n', '<leader>ty', vim.lsp.buf.hover, {desc = "Show hover/type info"})

--in visual mode, allows blocks to be moved up and down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv") 
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

--when appending, cursor will stay left bound
vim.keymap.set('n', 'J', "mzJ`z")

--when half page jumping, cursor stays in middle of screen
vim.keymap.set('n', '<C-d>', "<C-d>zz")
vim.keymap.set('n', '<C-u>', "<C-u>zz")

--when searching, cursor will stay in middle of screen
vim.keymap.set('n', 'n', "nzzzv")
vim.keymap.set('n', 'N', "Nzzzv")

--copies to system clipboard rather than vim buffer
vim.keymap.set('n', '<leader>y', "\"+y")
vim.keymap.set('v', '<leader>y', "\"+y")
vim.keymap.set('n', '<leader>Y', "\"+Y")

--deletes highlighted text and pastes over it without caching to save buffer
--'x' is visual mode
vim.keymap.set('x', '<leader>p', [["dP"]])

--for go
vim.keymap.set(
    'n',
    '<leader>ee',
    'oif err != nil {<CR>}<Esc>Oreturn err<Esc>'
)

vim.keymap.set(
    'n',
    '<leader>ee',
    'oif err != nil {<CR>}<Esc>Olog.Fatalf(\"error: %s\\n\", err.Error())<Esc>jj'
)

--this command should die
vim.keymap.set('n', 'Q', "<nop>")

--make sure tmux works to reenable this
--vim.keymap.set('n', '<C-f>', "<cmd>silent !tmux neww tmux-sessionizer<CR>")

--quickfix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

--rename string that cursor is on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--chmod that file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
