function InitVueCommand()
	vim.api.nvim_create_user_command('CreateVue',
		function()
			vim.cmd(':CocInstall @yaegassy/coc-volar @yaegassy/coc-typescript-vue-plugin @yaegassy/coc-volar-tools coc-json coc-tsserver')
			vim.cmd(':CocCommand volar.initializeTakeOverMode')
		end,
		{}
	)
end

InitVueCommand()
