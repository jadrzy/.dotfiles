-- ~/.config/nvim/lua/jchlopak/plugins/illuminate.lua
return {
    'RRethy/vim-illuminate',
    lazy = false,
    config = function()
        require('illuminate').configure({})
    end
}
