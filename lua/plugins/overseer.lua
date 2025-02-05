return {
  'stevearc/overseer.nvim',
  config = function()
    local overseer = require("overseer")
    overseer.setup({})


    overseer.add_template_hook({ module = "vscode" }, function(task_defn,util)
		util.add_component(task_defn, { "vscode_utils.restart_lsp" })
    end)
  end,
}
