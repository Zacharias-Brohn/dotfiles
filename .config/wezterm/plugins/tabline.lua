local M = {}

function M.setup(config, wezterm)
	local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")
	tabline.setup({
		options = {
			icons_enabled = true,
			theme = "Tokyo Night",
			tabs_enabled = true,
			theme_overrides = {},
			section_separators = {
				left = wezterm.nerdfonts.pl_left_hard_divider,
				right = wezterm.nerdfonts.pl_right_hard_divider,
			},
			component_separators = {
				left = wezterm.nerdfonts.pl_left_soft_divider,
				right = wezterm.nerdfonts.pl_right_soft_divider,
			},
			tab_separators = {
				left = wezterm.nerdfonts.pl_left_hard_divider,
				right = wezterm.nerdfonts.pl_right_hard_divider,
			},
		},
		sections = {
			tabline_a = { "mode" },
			tabline_b = { "" },
			tabline_c = { "" },
			tab_active = {
				"index",
				{ "process", padding = 0, icons_only = true },
			},
			tab_inactive = { "index", { "process", padding = 0, icons_only = true } },
			tabline_x = { "ram", "cpu" },
			tabline_y = { "datetime", "battery" },
			tabline_z = { "" },
		},
		extensions = {},
	})

	tabline.apply_to_config(config)
end

return M
