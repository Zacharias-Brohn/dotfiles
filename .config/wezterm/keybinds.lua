local M = {}

function M.setup(config, act)
	config.keys = {
		{ key = "LeftArrow", mods = "CTRL|ALT", action = act.ActivateTabRelative(-1) },
		{ key = "RightArrow", mods = "CTRL|ALT", action = act.ActivateTabRelative(1) },
		{ key = "-", mods = "CTRL|ALT", action = act.CloseCurrentPane({ confirm = false }) },
		{ key = "+", mods = "CTRL|ALT", action = act.SpawnTab("CurrentPaneDomain") },
		{ key = "F1", action = act.SplitVertical },
		{ key = "F2", action = act.SplitHorizontal },
		{
			key = "LeftArrow",
			mods = "ALT",
			action = act.ActivatePaneDirection("Left"),
		},
		{
			key = "RightArrow",
			mods = "ALT",
			action = act.ActivatePaneDirection("Right"),
		},
		{
			key = "UpArrow",
			mods = "ALT",
			action = act.ActivatePaneDirection("Up"),
		},
		{
			key = "DownArrow",
			mods = "ALT",
			action = act.ActivatePaneDirection("Down"),
		},
	}
end

return M
