return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "williamboman/mason.nvim",
        "jay-babu/mason-nvim-dap.nvim",
        "rcarriga/nvim-dap-ui",
        "nvim-neotest/nvim-nio",
        "theHamsta/nvim-dap-virtual-text",
    },
    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        require("mason").setup()

        require("mason-nvim-dap").setup({
            automatic_installation = true,
            handlers = {},
            ensure_installed = {
                "codelldb",
            },
        })

        require("nvim-dap-virtual-text").setup()
        dapui.setup()

        -- Automatically open/close the DAP UI when debugging starts/ends
        dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
        end

        -- 4. Keybindings
        vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, { desc = 'Toggle Breakpoint' })
        vim.keymap.set('n', '<leader>dc', dap.continue, { desc = 'Start/Continue' })
        vim.keymap.set('n', '<leader>di', dap.step_into, { desc = 'Step Into' })
        vim.keymap.set('n', '<leader>do', dap.step_over, { desc = 'Step Over' })
        vim.keymap.set('n', '<leader>dO', dap.step_out, { desc = 'Step Out' })
        vim.keymap.set('n', '<leader>dt', dap.terminate, { desc = 'Terminate Debugging' })
        vim.keymap.set('n', '<leader>du', dapui.toggle, { desc = 'Toggle DAP UI' })
    end,
}
