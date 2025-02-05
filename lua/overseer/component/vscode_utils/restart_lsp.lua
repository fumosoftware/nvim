return {
	desc = "Restarts LSP",
	editable = false,
	serializable = true,
	constructor = function(params)
		return {
			on_complete = function(self, task, data)
				vim.cmd("LspRestart")
			end,
		}
	end,
}
