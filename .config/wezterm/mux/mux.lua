local M = {}

function M.setup(config, wezterm)
	config.unix_domains = {
		{
			name = "unix",
			skip_permissions_check = true,
		},
	}

	config.default_gui_startup_args = { "connect", "unix" }
end

return M
