return {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
        {
            "<leader>tt",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble)",
        },
        {
            "<leader>tn",
            "<cmd>Trouble diagnostics next<cr>",
            desc = "Diagnostics Next",
        },
        {
            "<leader>tp",
            "<cmd>Trouble diagnostics prev<cr>",
            desc = "Diagnostics Previous",
        },
        {
            "<leader>tc",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "Buffer Diagnostics (Trouble)",
        },

        {
            "<leader>tq",
            "<cmd>Trouble qflist toggle<cr>",
            desc = "Quickfix List (Trouble)",
        }

    },
}
