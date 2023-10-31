require("tokyonight").setup({
    style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
    transparent = true, -- Enable this to disable setting the background color
    styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars, see below
        floats = "transparent", -- style for floating windows
    },
    dim_inactive = false, -- dims inactive windows
})
--vim.cmd [[colorscheme tokyonight]]
--vim.cmd [[highlight LineNr guifg=#74A7C3]]
--vim.cmd([[highlight LineNr guifg=#77B7D7]])
