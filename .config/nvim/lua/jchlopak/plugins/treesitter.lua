return {
	'nvim-treesitter/nvim-treesitter',
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	dependencies = {
		"windwp/nvim-ts-autotag",
	},
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			sync_install = false,
			auto_install = true,

			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
			autotag = { enable = true },

			ensure_installed = {
				"json",
				"bash",
				"lua",
				"vim",
				"gitignore",
				"c",
				"cpp",
			},
		})
	end,
}
