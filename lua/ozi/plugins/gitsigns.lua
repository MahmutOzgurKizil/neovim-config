return {
    'lewis6991/gitsigns.nvim',
    config = function()
        local gs = require('gitsigns')

        gs.setup({
            signs = {
                add          = { text = '▎' },
                change       = { text = '▎' },
                delete       = { text = '_' },
                topdelete    = { text = '‾' },
                changedelete = { text = '~' },
            },
        })

        vim.api.nvim_set_hl(0, 'GitSignsAdd',    { fg = '#68f71a' })
        vim.api.nvim_set_hl(0, 'GitSignsChange', { fg = '#12eacd' })
        vim.api.nvim_set_hl(0, 'GitSignsDelete', { fg = '#ed0c0f' })
        vim.api.nvim_set_hl(0, 'GitSignsTopdelete',    { fg = '#ed0c0f' })
        vim.api.nvim_set_hl(0, 'GitSignsChangedelete', { fg = '#12eacd' })

        vim.keymap.set('n', ']h', function() gs.nav_hunk('next') end, { desc = 'Next hunk' })
        vim.keymap.set('n', '[h', function() gs.nav_hunk('prev') end, { desc = 'Prev hunk' })
        vim.keymap.set('n', '<leader>hs', gs.stage_hunk,   { desc = 'Stage hunk' })
        vim.keymap.set('n', '<leader>hr', gs.reset_hunk,   { desc = 'Reset hunk' })
        vim.keymap.set('n', '<leader>hp', gs.preview_hunk, { desc = 'Preview hunk' })
        vim.keymap.set('n', '<leader>hb', gs.toggle_current_line_blame, { desc = 'Toggle line blame' })
        vim.keymap.set('n', '<leader>hd', gs.diffthis,     { desc = 'Diff this' })
    end
}
