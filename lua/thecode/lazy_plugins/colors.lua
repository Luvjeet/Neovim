function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
end

return {
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- style = "storm",         -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = true,      -- Enable this to disable setting the background color
                terminal_colors = false, -- Configure the colors used when opening a `:terminal` in Neovim
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false },
                    keywords = { italic = false },
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark",   -- style for floating windows
                },
                -- vim.cmd("colorscheme tokyonight"),
                -- ColorMyPencils("tokyonight"),
            })
        end
    },
    {
        "Shatur/neovim-ayu",
        config = function()
            require("ayu").setup({
                mirage = false,  -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
                terminal = true, -- Set to `false` to let terminal manage its own colors.
                overrides = {
                    Normal = { bg = "None" },
                    ColorColumn = { bg = "None" },
                    SignColumn = { bg = "None" },
                    Folded = { bg = "None" },
                    FoldColumn = { bg = "None" },
                    CursorLine = { bg = "None" },
                    CursorColumn = { bg = "None" },
                    WhichKeyFloat = { bg = "None" },
                    VertSplit = { bg = "None" },
                }, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
            })
            -- vim.cmd("colorscheme ayu")
            -- ColorMyPencils("ayu")
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                variant = "moon",
                styles = {
                    bold = true,
                    italic = false,
                    transparency = false,
                },
            })
            vim.cmd("colorscheme rose-pine")
            ColorMyPencils("rose-pine")
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        name = "gruvbox",
        config = function()
            require("gruvbox").setup({
                terminal_colors = true, -- add neovim terminal colors
                undercurl = false,
                underline = true,
                bold = true,
                italic = {
                    strings = false,
                    emphasis = false,
                    comments = false,
                    operators = false,
                    folds = true,
                },
                strikethrough = true,
                invert_selection = true,
                invert_signs = true,
                invert_tabline = true,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "",  -- can be "hard", "soft" or empty string
                dim_inactive = false,
                transparent_mode = false,
            })
            -- vim.cmd("colorscheme gruvbox")
            -- ColorMyPencils("gruvbox")
        end
    },
    {
        'projekt0n/github-nvim-theme',
        name = 'github-theme',
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require('github-theme').setup({
                options = {
                    transparent = true,
                    dim_inactive = true,
                    inverse = {               -- Inverse highlight for different types
                      match_paren = true,
                      visual = true,
                      search = false,
                    },
                }
            })
            -- vim.cmd("colorscheme github_dark")
            -- ColorMyPencils("github_dark")
        end,
    }
}
