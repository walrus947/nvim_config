return {
    'rebelot/kanagawa.nvim',

    config = function()
        vim.g.toykonight_transparent_sidebar = true
        vim.g.toykonight_transparent = true
        vim.opt.background = "dark"

        vim.cmd("colorscheme kanagawa")
    end
}
