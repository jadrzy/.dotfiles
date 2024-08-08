-- ~/.config/nvim/lua/jchlopak/maps.lua
vim.g.mapleader = " "
local k = vim.keymap

-- Set return button
k.set("n", "<leader>pv", vim.cmd.Ex)

-- Set standard shortcuts
k.set('v', 'J', ":m '>+1<CR>gv=gv", {})
k.set('v', 'K', ":m '<-2<CR>gv=gv", {})
k.set('x', '<leader>p', "\"_dP", {})
k.set('n', '<leader>y', "\"+y", {})
k.set('v', '<leader>y', "\"+y", {})
k.set('n', '<leader>Y', "\"+Y", {})

-- Set telescope shortcuts
k.set('n', '<leader>pk', "<cmd>Telescope keymaps<CR>", {})
k.set('n', '<leader>ph', "<cmd>Telescope help_tags<CR>", {})
k.set('n', '<leader>pf', "<cmd>Telescope find_files<CR>", {})
k.set('n', '<leader>pg', "<cmd>Telescope live_grep<CR>", {})
k.set('n', '<leader>pb', "<cmd>Telescope buffers<CR>", {})

-- Set git tree shortcut
k.set('n', '<leader>g', vim.cmd.Git)

-- Set undo tree shprtcut
k.set('n', '<leader>u', vim.cmd.UndotreeToggle)

-- Set file tree shortcut
k.set("n", "<leader>n", ':Neotree filesystem reveal left<CR>', {})

-- Set comment line shotcut
vim.api.nvim_set_keymap("n", "<leader>/", "gcc", { noremap = false })
vim.api.nvim_set_keymap("v", "<leader>/", "gcc", { noremap = false })
