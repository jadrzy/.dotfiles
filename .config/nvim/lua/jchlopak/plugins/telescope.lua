return {
	'nvim-telescope/telescope.nvim',
    tag = '0.1.8', 
	dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require("telescope").setup()

        local keymap = vim.keymap

        keymap.set('n', '<leader>pf', "<cmd>Telescope find_files<CR>", {})
        keymap.set('n', '<leader>pd', "<cmd>Telescope live_grep<CR>", {})
    end,
}
