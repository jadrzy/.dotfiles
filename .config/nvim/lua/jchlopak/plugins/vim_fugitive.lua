return {
    'tpope/vim-fugitive',
    config = function()
        local keymap = vim.keymap
        keymap.set('n', '<leader>g', vim.cmd.Git)
    end,
}
