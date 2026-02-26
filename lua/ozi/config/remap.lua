vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- vim-figutive
vim.keymap.set("n", "<leader>gs", function()
	local ok = pcall(vim.cmd.Git)
	if not ok then
		print("Git is not initilized!")
	end
end)


