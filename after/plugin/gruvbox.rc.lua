local status, gruvbox = pcall(require, "gruvbox")
if not status then return end

gruvbox.setup({
    -- setup must be called before loading the colorscheme
    -- Default options:
    undercurl = true,
    underline = true,
    bold = false,
    italic = {
        strings = false,
        comments = false,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = true,
    invert_signs = false,
    invert_tabline = true,
    invert_intend_guides = true,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = true,
})
--vim.cmd("colorscheme gruvbox")
