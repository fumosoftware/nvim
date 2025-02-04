return {
	{
		"mfussenegger/nvim-dap",
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		opts = {
			ensure_installed = { "codelldb" },
			handlers = {
				function(config)
					require("mason-nvim-dap").default_setup(config)
				end,
			}
		},
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
		config = function()
			require("lazydev").setup({
				library = { "nvim-dap-ui" },
			})

			local dap, dapui = require("dap"), require("dapui")
			dapui.setup()
			dap.listeners.before.attach.dapui_config = function()
			  dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
			  dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
			  dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
			  dapui.close()
			end
		end,
	}
}
