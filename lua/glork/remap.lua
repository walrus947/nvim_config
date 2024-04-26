vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
--
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
