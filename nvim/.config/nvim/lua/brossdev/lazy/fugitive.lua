return {
    'tpope/vim-fugitive',
    config = function()
        vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
        local BrossDev_Fugitive = vim.api.nvim_create_augroup("BrossDev_Fugitive", {})

        local autocmd = vim.api.nvim_create_autocmd
        autocmd("BufWinEnter", {
            group = BrossDev_Fugitive,
            pattern = "*",
            callback = function()
                if vim.bo.ft ~= "fugitive" then
                    return
                end

                local bufnr = vim.api.nvim_get_current_buf()
                local opts = { buffer = bufnr, remap = false }
                vim.keymap.set("n", "<leader>gp", function()
                    vim.cmd.Git('push')
                end, opts)

                -- rebase always
                vim.keymap.set("n", "<leader>gr", function()
                    vim.cmd.Git({ 'pull', '--rebase' })
                end, opts)

                -- NOTE: It allows me to easily set the branch i am pushing and any tracking
                -- needed if i did not set the branch up correctly
                vim.keymap.set("n", "<,leader>gpo", ":Git push -u origin ", opts);
                vim.keymap.set("n", "<leader>gc", ":Git commit -v -q<CR>");
                vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>");
                vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>");
            end,
        })
    end
}
