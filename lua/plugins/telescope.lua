local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
    defaults = {
        file_ignore_patterns = { "node_modules", ".git/" },
    },
})

-- Load fzf extension if available
pcall(telescope.load_extension, "fzf")

vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Telescope find files" })

vim.keymap.set("n", "<C-p>", function()
    local ok = pcall(builtin.git_files)
    if not ok then
        print("No git files found!")
    end
end, { desc = "Telescope git files" })

vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Telescope grep" })
