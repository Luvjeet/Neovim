vim.opt.cursorline = true
vim.opt.guicursor = ''

vim.opt.shell = "powershell"
vim.opt.shellcmdflag = '-command'
vim.opt.shellquote = [[\"]]
vim.opt.shellxquote = ""

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

-- highlight yanked text for 200ms using the "Visual" highlight group
vim.cmd [[
  augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=100})
  augroup END
]]
