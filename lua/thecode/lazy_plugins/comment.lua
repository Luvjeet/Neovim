-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
return {
    "numToStr/Comment.nvim",
    opts = {
        padding = true,
        ---Whether the cursor should stay at its position
        sticky = true,
        ---Lines to be ignored while (un)comment
        ignore = nil,
        ---LHS of toggle mappings in NORMAL mode
        toggler = {
            ---Line-comment toggle keymap
            line = '<C-c>',
            ---Block-comment toggle keymap
            block = '<C-b>',
        },
        ---NOTE: If given `false` then the plugin won't create any mappings
        mappings = {
            ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
            basic = true,
            ---Extra mapping; `gco`, `gcO`, `gcA`
            extra = true,
        },
        ---Function to call before (un)comment
        pre_hook = nil,
        ---Function to call after (un)comment
        post_hook = nil,
    },
    lazy = false,
}
