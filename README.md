# Neovim Configuration

## Plugins

1. **cmp** - Completion engine
2. **dap** - Debugging (DAP support)
3. **fugitive** - Git integration
4. **gitsigns** - Git signs and hunks
5. **harpoon** - Quick file navigation
6. **indent-blankline** - Visual indentation guides
7. **lspconfig** - LSP configuration
8. **lualine** - Status line
9. **mason** - LSP/DAP package manager
10. **nvim-autopairs** - Auto-closing pairs
11. **rose-pine** - Color theme
12. **telescope** - Fuzzy finder
13. **toggleterm** - Terminal toggle
14. **treesitter** - Syntax highlighting and parsing
15. **undotree** - Undo history visualization

## Keybindings

### Navigation
| Shortcut | Action |
|----------|--------|
| `<leader>pv` | Open file explorer |
| `<leader>pf` | Telescope find files |
| `<C-p>` | Telescope git files |
| `<leader>ps` | Telescope grep search |
| `<leader>a` | Harpoon add file |
| `<C-e>` | Harpoon quick menu |
| `<C-h>` | Harpoon navigate to file 1 |
| `<C-j>` | Harpoon navigate to file 2 |
| `<C-k>` | Harpoon navigate to file 3 |
| `<C-l>` | Harpoon navigate to file 4 |

### Git
| Shortcut | Action |
|----------|--------|
| `<leader>gs` | Git status |
| `<leader>gt` | Git log tree |
| `]h` | Next git hunk |
| `[h` | Previous git hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Toggle line blame |
| `<leader>hd` | Diff this |

### Editing
| Shortcut | Action |
|----------|--------|
| `J` (visual) | Move lines down |
| `K` (visual) | Move lines up |
| `n` | Search next (centered) |
| `N` | Search previous (centered) |
| `<leader>p` | Paste without overwriting register |
| `<leader>y` | Copy to clipboard |
| `<leader>Y` | Copy line to clipboard |
| `<leader>s` | Find and replace word |
| `Q` | No-op |

### Terminal
| Shortcut | Action |
|----------|--------|
| `<C-t>` | Toggle terminal |

### Other
| Shortcut | Action |
|----------|--------|
| `<leader>u` | Toggle undotree |
