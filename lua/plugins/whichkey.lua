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
		  { "<leader>L", group = "Lazy" },
		  { "<leader>L?", "<cmd>Lazy help<cr>", desc = "Lazy Help", mode = "n" },
		  { "<leader>LH", "<cmd>Lazy<cr>", desc = "Lazy Home", mode = "n" },
		  { "<leader>LD", "<cmd>Lazy debug<cr>", desc = "Lazy Debug", mode = "n" },
		  { "<leader>LL", "<cmd>Lazy log<cr>", desc = "Lazy Log", mode = "n" },
		  { "<leader>LC", "<cmd>Lazy check<cr>", desc = "Lazy Check", mode = "n" },
		  { "<leader>LI", "<cmd>Lazy install<cr>", desc = "Lazy Install", mode = "n" },
		  { "<leader>LU", "<cmd>Lazy update<cr>", desc = "Lazy Update", mode = "n" },
		  { "<leader>LS", "<cmd>Lazy sync<cr>", desc = "Lazy Sync", mode = "n" },
		  { "<leader>LR", "<cmd>Lazy restore<cr>", desc = "Lazy Restore", mode = "n" },
		  { "<leader>LP", "<cmd>Lazy profile<cr>", desc = "Lazy Profile", mode = "n" },
		  { "<leader>LX", "<cmd>Lazy clean<cr>", desc = "Lazy Clean", mode = "n" },
	  })

	  wk.add({
		  { "<leader>z", function() require("zen-mode").toggle( { window = { width = .85 } } ) end, desc = "Zen", mode = "n" },
	  })

	  wk.add({
		  { "<leader>\\", "<cmd>Neotree filesystem toggle right<cr>", desc = "File Tree", mode = "n" } ,
	  })
  end,
}
