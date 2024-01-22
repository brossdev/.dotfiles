return {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    style = 'night',
    config = function()
        require("tokyonight").setup({
            style = "night", -- "day" / "night"
            transparent = true,
        })
        vim.cmd([[colorscheme tokyonight]])
    end,
}
