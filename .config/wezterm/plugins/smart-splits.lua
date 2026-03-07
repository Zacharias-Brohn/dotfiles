local M = {}

function M.setup(config, wezterm)
	local smart_splits = wezterm.plugin.require("https://github.com/mrjones2014/smart-splits.nvim")

	smart_splits.apply_to_config(config, {
		direction_keys = { "LeftArrow", "DownArrow", "UpArrow", "RightArrow" },

		modifiers = {
			move = "META",
			resize = "SHIFT|META",
		},

		log_level = "error",
	})
end

return M
