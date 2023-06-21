local status, telescope = pcall(require, "telescope")
if (not status) then return end

local builtin = require("telescope.builtin")


telescope.setup {
    defaults = {
        file_ignore_patterns = { "node_modules" }
    }
}

vim.keymap.set('n', ';f',
    function()
        builtin.find_files({
            no_ignore = false,
            hidden = true
        })
    end)
vim.keymap.set('n', ';r', function()
    builtin.live_grep()
end)
vim.keymap.set('n', ';g', function()
    builtin.git_files()
end)
vim.keymap.set('n', ';s', function()
    builtin.grep_string({ search = vim.fn.input("Grep => ") })
end)

--require 'nvim-treesitter.install'.compilers = { 'clang' }
