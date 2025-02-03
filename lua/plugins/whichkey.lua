return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },

  config = function()
	  local wk = require("which-key")
	  -- FzfLua Key Bindings
	  wk.add({
		  { "<leader>f", group = "Find" }, -- group
		  { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "(Fzf) Find File", mode = "n" },
		  { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "(Fzf) Live Grep", mode = "n" },
		  { "<leader>ft", "<cmd>FzfLua tags<cr>", desc = "(Fzf)Tags", mode = "n" },

	  })

	  wk.add({
		  { "<leader>b", "<cmd>FzfLua buffers<cr>", desc = "Buffers", mode = "n" },
	  })

	  wk.add({
		  { "<leader>L", "<cmd>Lazy<cr>", desc = "Lazy", mode = "n" },
	  })

	  wk.add({
		  { "<leader>z", function() require("zen-mode").toggle( { window = { width = .85 } } ) end, desc = "Zen", mode = "n" },
	  })
  end,
}
