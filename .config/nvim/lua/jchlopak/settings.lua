-- ~/.config/nvim/lua/jchlopak/settings.lua
local o = vim.opt

o.swapfile = false
o.number = true
o.relativenumber = true
o.syntax = "on"
o.autoindent = true
o.cursorline = true
o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.encoding = "UTF-8"
o.ruler = true
o.mouse = ""
o.termguicolors = true
o.ttyfast = true
o.scrolloff = 8
o.smartindent = true
o.backup = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true
o.incsearch = true
o.updatetime = 50
o.colorcolumn = "80"
