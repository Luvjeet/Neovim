local status, rose = pcall(require, 'rose-pine')
if (not status) then return end

rose.setup({
    dim_nc_background = false,
    disable_background = true,
    disable_float_background = false,
    disable_italics = true,
    highlight_groups = {
        ColorColumn = { bg = 'foam', blend = 50 },
    }
})
vim.cmd('colorscheme rose-pine')
--vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#51B3EC'  })
--vim.api.nvim_set_hl(0, 'CursorLineNr', { fg='#51B3EC'  })
--vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#51B3EC'  })
