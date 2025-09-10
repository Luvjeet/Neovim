require('maps')
require('base')
require('thecode')
local augroup = vim.api.nvim_create_augroup
local ThePrimeagenGroup = augroup('ThePrimeagen', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.hl.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = ThePrimeagenGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

autocmd("LspAttach",{
    group = ThePrimeagenGroup,
    callback = function(e)
        local opts = {buffer = e.buf}
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    end
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.python3_host_prog = '/Users/innovatia/work/venv/bin/python3'

-- =========================
-- Autosave Feature
-- =========================
local autosave_enabled = true
local timer = vim.loop.new_timer()

timer:start(1000, 1000, vim.schedule_wrap(function()
  if autosave_enabled and vim.api.nvim_buf_get_option(0, "modified") and vim.api.nvim_buf_get_name(0) ~= "" then
    vim.cmd("silent! write")
    local filepath = vim.api.nvim_buf_get_name(0)
    local filename = vim.fn.fnamemodify(filepath, ":t")
    vim.api.nvim_echo({{"[Autosave] Saved: " .. filename, "ModeMsg"}}, false, {})
  end
end))

-- Command to toggle autosave
vim.api.nvim_create_user_command("ToggleAutosave", function()
    autosave_enabled = not autosave_enabled
    if autosave_enabled then
        vim.api.nvim_echo({{"[Autosave] Enabled", "ModeMsg"}}, false, {})
    else
        vim.api.nvim_echo({{"[Autosave] Disabled", "WarningMsg"}}, false, {})
    end
end, {})
