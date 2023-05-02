local status, rose = pcall(require, 'rose-pine')
if (not status) then return end

rose.setup({
    disable_background = true,
    disable_italics = true,
    highlight_groups = {
        ColorColumn = { bg = 'foam', blend = 10 },
    }
})
vim.cmd([[colorscheme rose-pine]])
vim.cmd([[highlight GitSignsAdd guibg=NONE]])
vim.cmd([[highlight GitSignsChange guibg=NONE]])
vim.cmd([[highlight GitSignsDelete guibg=NONE]])
--vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#51B3EC' })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#eb6f92', bg = '#1f1d2e' })
--vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#51B3EC' })
