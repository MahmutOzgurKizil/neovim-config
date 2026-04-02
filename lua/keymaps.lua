-- Explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- vim-fugitive
vim.keymap.set("n", "<leader>gs", function()
    local ok = pcall(vim.cmd.Git)
    if not ok then print("Git is not initialized!") end
end)

vim.keymap.set("n", "<leader>gt", function()
    local ok = pcall(vim.cmd.Git, "log --oneline --graph --all")
    if not ok then print("Git is not initialized!") end
end)

-- Move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep search centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without clobbering register
vim.keymap.set("x", "<leader>p", '"_dP')

-- Copy to system clipboard
vim.keymap.set("n", "<leader>y",  '"+y')
vim.keymap.set("v", "<leader>y",  '"+y')
vim.keymap.set("n", "<leader>Y",  '"+Y')

-- Disable Q
vim.keymap.set("n", "Q", "<nop>")

-- Find and replace word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
