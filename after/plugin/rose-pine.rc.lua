local status, rose = pcall(require, "rose-pine")
if (not status) then return end

rose.setup({
    disable_background = true,
    disable_italics = true,
})
vim.cmd [[colorscheme rose-pine]]
vim.cmd([[highlight GitSignsAdd guibg=NONE]])
vim.cmd([[highlight GitSignsChange guibg=NONE]])
vim.cmd([[highlight GitSignsDelete guibg=NONE]])

