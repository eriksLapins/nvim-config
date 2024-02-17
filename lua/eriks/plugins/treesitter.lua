return  {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"c",
				"rust",
				"vim",
				"javascript",
				"typescript",
				"toml",
				"lua",
				"css",
				"scss",
				"html",
			},
			sync_install = false,
			highlight = {
				enable = true,
				vim_additional_regex_highlighting = false,
			},
			indent = { enable = true },
		})
	end
}
