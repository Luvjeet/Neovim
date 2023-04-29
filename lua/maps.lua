vim.g.mapleader = " "
local keymap = vim.keymap

keymap.set('n', 'x', '"_x')
keymap.set('i', 'jk', '<Esc>')

--Netrw mode
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')


-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

-- Drag content up and down
keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Page up and down
keymap.set('n', '<C-d>', '<C-d>zz')
keymap.set('n', '<C-u>', '<C-u>zz')
keymap.set('n', 'n', 'nzzzv')
keymap.set('n', 'N', 'Nzzzv')

-- Copy and paste
keymap.set('n', '<leader>y', "\"+y")
keymap.set('v', '<leader>y', "\"+y")
keymap.set('n', '<leader>Y', "\"+Y")

-- Terminal
keymap.set('t', '<ESC>', [[<C-\><C-n>]])

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
