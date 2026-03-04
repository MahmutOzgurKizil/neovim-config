return {
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {{
            'nvim-tree/nvim-web-devicons',
            'Isrothy/lualine-diagnostic-message',
            opt = false
        }},
        config = function()
            require('lualine').setup({
                sections = {
                    lualine_c = {
                        {
                            "diagnostic-message",
                            colors = {
                                error = "#BF616A",
                                warn = "#EBCB8B",
                                info = "#A3BE8C",
                                hint = "#88C0D0",
                            },
                            icons = {
                                error = "",
                                warn  = "",
                                info  = "",
                                hint  = "",
                            },
                            first_line_only = true,
                        },
                    }
                },
                options = {
                    theme = 'iceberg_dark',
                    icons_enabled = true,

                },
            })
        end
    }
}
