return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("telescope").setup({})
        local builtin = require("telescope.builtin")
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
        vim.keymap.set('n', '<leader>w', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word})
        end)
        vim.keymap.set('n', '<leader>W', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word})
        end)
        vim.keymap.set('n', ';s', function()
            builtin.grep_string({ search = vim.fn.input("Grep => ") })
        end)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

        end
}

