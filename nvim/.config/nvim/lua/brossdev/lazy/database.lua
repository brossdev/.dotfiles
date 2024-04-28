return {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
        "tpope/vim-dadbod",
        "kristijanhusak/vim-dadbod-ui",
        { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
        'tpope/vim-dotenv',
    },
    cmd = {
        "DBUI",
        "DBUIToggle",
        "DBUIAddConnection",
        "DBUIF",
    },
    config = function()
        vim.g.db_ui_use_nerd_fonts = 1
        vim.keymap.nnoremap { "<leader>v", "<cmd>DBUIToggle<CR>" }
        vim.keymap.nnoremap { "<leader>xc", "<cmd>DBUIAddConnection<CR>" }
        vim.keymap.nnoremap { "<leader>xf", "<cmd>DBUIFindBuffer<CR>" }
    end,
}
