-- ~/.config/nvim/lua/jchlopak/plugins/colorscheme.lua
return {
	'maxmx03/dracula.nvim',
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme dracula")
	end,
}
