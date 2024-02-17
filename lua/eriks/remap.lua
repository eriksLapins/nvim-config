vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>rw", 
	function () 
		local user_input = vim.fn.input("Replace with: ")
		local command = ":s/" .. vim.fn.expand('<cword>') .. "/" .. user_input
		vim.cmd(command)
	end
)

vim.keymap.set("n", "<leader>ra",
	function () 
		local user_input = vim.fn.input("Replace all with: ")
		local command = ":%s/" .. vim.fn.expand('<cword>') .. "/" .. user_input
		vim.cmd(command)
	end
)

