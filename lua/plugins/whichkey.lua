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
	  -- Telescope Key Bindings
	  wk.add({
		  { "<leader>f", group = "Find" }, -- group
		  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "(Telescope) Find File", mode = "n" },
		  { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "(Telescope) Grep", mode = "n" },
		  { "<leader>ft", "<cmd>Telescope help_tags<cr>", desc = "(Telescope) Help Tags", mode = "n" },

	  })

	  wk.add({
		  { "<leader>b", "<cmd>Telescope buffers<cr>", desc = "Buffers", mode = "n" },
	  })
  end,
}
