local grp = {
    general = vim.api.nvim_create_augroup("General", {clear = true}),
}

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = grp.general,
    callback = function() vim.hl.on_yank() end,
})

-- remove trailing white space on save
vim.api.nvim_create_autocmd('BufWritePre', {
    desc = 'Remove trailing white space on save',
    group = grp.general,
    callback = function()
        -- Save cursor position to later restore
        local cursor_pos = vim.api.nvim_win_get_cursor(0)
        -- Remove trailing whitespace, preserve previous search pattern/history
        vim.cmd([[keeppatterns %s/\s\+$//e]])
        vim.api.nvim_win_set_cursor(0, cursor_pos)
    end,
})

-- remove last blank lines
vim.api.nvim_create_autocmd('BufWritePre', {
    desc = 'Remove last blank lines',
    group = grp.general,
    callback = function()
        local n_lines = vim.api.nvim_buf_line_count(0)
        local last_nonblank = vim.fn.prevnonblank(n_lines)
        if last_nonblank < n_lines then
            vim.api.nvim_buf_set_lines(0, last_nonblank, n_lines, true, {})
        end
    end,
})
