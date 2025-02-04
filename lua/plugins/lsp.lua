return {
    {
	"williamboman/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"lua_ls", "clangd"
		},
	},
    },
    {
    	"neovim/nvim-lspconfig",
    	dependencies = {
  		'saghen/blink.cmp',
    	},
    	opts = {
    		servers = {
			lua_ls = {},
			clangd = {},
    		},
    	},
	config = function(_, opts)
		require("mason-lspconfig").setup()

		require("mason-lspconfig").setup_handlers {
    			-- The first entry (without a key) will be the default handler
    			-- and will be called for each installed server that doesn't have
    			-- a dedicated handler.
			function (server_name) -- default handler (optional)
				local capabilities = require('blink.cmp').get_lsp_capabilities(opts.servers[server_name].capabilities)
				require("lspconfig")[server_name].setup { capabilities = capabilities }
			end,

		}
	end
    },
}
