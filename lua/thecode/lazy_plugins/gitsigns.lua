return {
  "lewis6991/gitsigns.nvim",
  config = function()
    local gitsigns = require("gitsigns")
    gitsigns.setup({
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
      current_line_blame = false,
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns

        vim.defer_fn(function()
          gs.toggle_current_line_blame()
        end, 1000) -- Adding a small delay to ensure gitsigns is fully initialized

        local function map(mode, l, r, opts)
          opts = opts or {}
          opts.buffer = bufnr
          vim.keymap.set(mode, l, r, opts)
        end

        map('n', '<leader>tb', gs.toggle_current_line_blame)
        map('n', '<leader>td', gs.toggle_deleted)
      end

    })
  end
}
