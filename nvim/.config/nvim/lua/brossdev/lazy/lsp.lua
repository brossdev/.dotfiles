return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "j-hui/fidget.nvim",
    },
    config = function()
        require('fidget').setup({
            notification = {
                window = {
                    winblend = 0,
                },
            },
        })
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "rust_analyzer", "tsserver" },
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup {}
                end,
                ["rust_analyzer"] = function()
                    require("rust-tools").setup {}
                end,
                ["lua_ls"] = function()
                    local lspconfig = require('lspconfig')
                    lspconfig.lua_ls.setup {
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { 'vim' },
                                },
                            },
                        },
                    }
                end,
            }
        })

        local cmp = require('cmp')
        cmp.setup({
            snippet = {
                expand = function(args)
                    vim.fn["vsnip#anonymous"](args.body)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['C-p'] = cmp.mapping.select_prev_item(),
                ['C-n'] = cmp.mapping.select_next_item(),
                ['C-y'] = cmp.mapping.confirm({ select = true }),
                ['C-Space'] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                },
                {
                    { name = 'buffer' },
                }),

            vim.diagnostic.config({
                update_in_insert = true,
                virtual_text = true,
                float = {
                    focusable = false,
                    style = "minimal",
                    border = "rounded",
                    source = "always",
                    header = "",
                    prefix = "",
                },
            })
        })
    end
}
