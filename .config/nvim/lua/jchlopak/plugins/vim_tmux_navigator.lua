-- ~/.config/nvim/lua/jchlopak/plugins/tmux_navigator.lua
return {
    'christoomey/vim-tmux-navigator',
    cmd = {
        'TmuxNavigateLeft',
        'TmuxNavigateDown',
        'TmuxNavigateUP',
        'TmuxNavigateRight',
        'TmuxNavigatePrevious',
    },
    keys = {
        { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
        { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
        { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
        { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
        { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
    },
}
