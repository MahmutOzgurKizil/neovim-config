return {
    'nvim-telescope/telescope.nvim', 
    version = '0.2.1',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function ()
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files'})

        vim.keymap.set('n', '<C-p>', function()
		local ok = pcall(builtin.git_files)
		if not ok then
			print("No git files found!")
		end
	end, { desc = 'Telescope Git files' })

        vim.keymap.set('n', '<leader>ps', function() 
            builtin.grep_string({ search = vim.fn.input("Grep > ") });
        end, { desc = 'Telescope find files with grep'})
    end
}
