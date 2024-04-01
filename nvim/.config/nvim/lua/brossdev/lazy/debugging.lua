return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
        "leoluz/nvim-dap-go",
        "theHamsta/nvim-dap-virtual-text",
        'mortepau/codicons.nvim',
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        require('codicons').setup()
        require('nvim-web-devicons').setup()
        require('dap-go').setup()
        require('dapui').setup()
        require('nvim-dap-virtual-text').setup()

        dap.listeners.before.attach.dapui_config = function()
            dapui.open()
        end

        dap.listeners.before.launch.dapui_config = function()
            dapui.open()
        end

        dap.listeners.before.event_terminated.dapui_config = function()
            dapui.close()
        end

        dap.listeners.before.event_exited.dapui_config = function()
            dapui.close()
        end

        vim.keymap.set('n', '<leader>dt', dap.toggle_breakpoint, {})
        vim.keymap.set('n', '<leader>dc', dap.continue, {})
        vim.keymap.set('n', '<leader>ds', dap.step_over, {})
        vim.keymap.set('n', '<leader>di', dap.step_into, {})
        vim.keymap.set('n', '<leader>do', dap.step_out, {})
        vim.keymap.set('n', '<Leader>dr', dap.repl.open, {})
        vim.keymap.set('n', '<Leader>dl', dap.run_last, {})
    end,
}
