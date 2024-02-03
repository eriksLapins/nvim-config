function ColorMyPencils()
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })	


	vim.api.nvim_set_hl(0, "@variable", { cterm=NONE, gui=NONE})
	vim.api.nvim_set_hl(0, "@variable.parameter", { cterm=NONE, gui=NONE})
end

ColorMyPencils()
