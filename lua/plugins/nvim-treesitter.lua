return {
  "nvim-treesitter/nvim-treesitter",
  version = false, -- last release is way too old and doesn't work on Windows
  build = ":TSUpdate",
  event = { "VeryLazy" },
  config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          modules = {},
	  ignore_install = {},
	  auto_install = true,
          ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end

}
