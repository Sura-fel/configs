return {
    "Pocco81/auto-save.nvim",
    config = function()
        require("auto-save").setup {
            execution_message = {
                message = function()
                    return ("Saved")
                end,
                dim = 0.18,
                cleaning_interval = 1250, 
            },
             trigger_events = {"InsertLeave"},
		 }
	end,
}
