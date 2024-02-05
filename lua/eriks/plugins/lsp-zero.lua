return {
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
	config = function()
		local lsp = require('lsp-zero')

		lsp_zero.on_attach(function(client, bufnr)
			-- see :help lsp-zero-keybindings
			-- to learn the available actions
			lsp_zero.drrault_keymaps({buffer = bufnr})


			vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
			vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
			vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
			vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
			vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
			vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
			vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
			vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
			vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
			vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
		end)


		lsp.preset('recommended')

		lsp.ensure_installed({
			'tsserver',
			'eslint',
			'rust_analyzer',
		})

		local cmp = require('cmp')
		local cmp_select = { behavior = cmp.SelectBehavior.Select}
		local cmp_mappins = lsp.defaults.cmp_mappings({
			['C-p'] = cmp.mapping.select_prev_item(cmp_select),
			['C-n'] = cmp.mapping.select_next_item(cmp_select),
			['C-y'] = cmp.mapping.confirm({ select = true }),
			['C-Space'] = cmp.mapping.complete(),
		})
		lsp.setup()
	end

}
