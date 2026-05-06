return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		-- optional but recommended
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	opts = {
		defaults = {
			-- Apply a pretty theme globally to all pickers
			theme = "dropdown", -- options: dropdown, ivy, cursor
			layout_config = {
				width = 0.9,
				height = 0.9,
				prompt_position = "bottom",
				preview_width = 0.6,
			},
			sorting_strategy = "descending",
			winblend = 10, -- Add transparency for a modern look
		},
	},
}
