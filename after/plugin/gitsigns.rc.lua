local status, gitsigns = pcall(require, 'gitsigns')
if (not status) then return end

gitsigns.setup {}

vim.cmd([[highlight GitSignsAdd guibg=NONE]])
vim.cmd([[highlight GitSignsChange guibg=NONE]])
vim.cmd([[highlight GitSignsDelete guibg=NONE]])

