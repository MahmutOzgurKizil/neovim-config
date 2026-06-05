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

local api = vim.api

local manual_win = nil
local manual_buf = nil

local function toggle_manual()
    -- 1. Close window if it's already open
    if manual_win and api.nvim_win_is_valid(manual_win) then
        api.nvim_win_close(manual_win, true)
        manual_win = nil
        return
    end

    -- 2. Create buffer and text if it doesn't exist
    if not manual_buf or not api.nvim_buf_is_valid(manual_buf) then
        manual_buf = api.nvim_create_buf(false, true)
        
        -- Clean, non-markdown formatting
        local lines = {
            "  ╭────────────────────────────────────────────╮",
            "  │           QUICK REFERENCE                  │",
            "  ╰────────────────────────────────────────────╯",
            "",
            "  NAVIGATION",
            "  • <leader>pv : Open file explorer",
            "  • <leader>pf : Telescope find files",
            "  • <C-p>      : Telescope git files",
            "  • <leader>ps : Telescope grep search",
            "  • <leader>a  : Harpoon add file",
            "  • <C-e>      : Harpoon quick menu",
            "  • <C-h>      : Harpoon nav to file 1",
            "  • <C-j>      : Harpoon nav to file 2",
            "  • <C-k>      : Harpoon nav to file 3",
            "  • <C-l>      : Harpoon nav to file 4",
            "  • [[         : Jump to previous class/func start",
            "  • ]]         : Jump to next class/func start",
            "",
            "  SPLIT NAVIGATION (Default)",
            "  • <C-w> h    : Focus left split",
            "  • <C-w> j    : Focus lower split",
            "  • <C-w> k    : Focus upper split",
            "  • <C-w> l    : Focus right split",
            "  • <C-w> w    : Cycle through splits",
            "",
            "  GIT",
            "  • <leader>gs : Git status",
            "  • <leader>gt : Git log tree",
            "  • ]h         : Next git hunk",
            "  • [h         : Previous git hunk",
            "  • <leader>hs : Stage hunk",
            "  • <leader>hr : Reset hunk",
            "  • <leader>hp : Preview hunk",
            "  • <leader>hb : Toggle line blame",
            "  • <leader>hd : Diff this",
            "",
            "  EDITING",
            "  • J (visual) : Move lines down",
            "  • K (visual) : Move lines up",
            "  • n          : Search next (centered)",
            "  • N          : Search previous (centered)",
            "  • <leader>p  : Paste (keep register)",
            "  • <leader>y  : Copy to clipboard",
            "  • <leader>Y  : Copy line to clipboard",
            "  • <leader>s  : Find and replace word",
            "  • Q          : No-op",
            "",
            "  TERMINAL & OTHER",
            "  • <C-t>      : Toggle terminal",
            "  • <leader>u  : Toggle undotree",
            "  • q          : Close this menu",
            "  • <leader>mn : Toggle this menu",

            "  DIAGNOSTICS & LSP",
            "  • ]d         : Next error/warning",
            "  • [d         : Previous error/warning",
            "  • <leader>ca : Code action",
            "",
        }
        
        api.nvim_buf_set_lines(manual_buf, 0, -1, false, lines)
        api.nvim_set_option_value('modifiable', false, { buf = manual_buf })
        api.nvim_set_option_value('filetype', 'neovim-cheat-sheet', { buf = manual_buf })
        
        -- Press 'q' or <Esc> to easily close the floating window
        vim.keymap.set('n', 'q', toggle_manual, { buffer = manual_buf, silent = true })
        vim.keymap.set('n', '<Esc>', toggle_manual, { buffer = manual_buf, silent = true })
    end

    -- 3. Calculate dynamic size and position for the floating window
    local ui = api.nvim_list_uis()[1]
    local width = 52
    local height = #api.nvim_buf_get_lines(manual_buf, 0, -1, false)
    
    -- Center the window on the screen
    local row = math.floor((ui.height - height) / 2)
    local col = math.floor((ui.width - width))

    -- Define window properties
    local win_opts = {
        relative = "editor",
        width = width,
        height = height,
        row = row,
        col = col,
        style = "minimal", -- Removes line numbers, fold columns, etc.
        border = "rounded",
    }

    -- 4. Open the floating window
    manual_win = api.nvim_open_win(manual_buf, true, win_opts)
    
    -- Change the highlight of the window background and border to look premium
    api.nvim_set_option_value('winhl', 'Normal:NormalFloat,FloatBorder:FloatBorder', { win = manual_win })
end

-- Bind the toggle function
vim.keymap.set('n', '<leader>mn', toggle_manual, { desc = "Toggle Keybindings Manual", silent = true })
