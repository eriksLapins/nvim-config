return  {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"c",
				"rust",
				"vue",
				"javascript",
				"typescript",
				"toml",
				"lua",
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
