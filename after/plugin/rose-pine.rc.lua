local status, rose = pcall(require, "rose-pine")
if (not status) then return end

rose.setup({
    disable_background = true,
    disable_italics = true,
})
vim.cmd [[colorscheme rose-pine]]

