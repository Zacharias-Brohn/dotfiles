local M = {}

function M.setup(config, wezterm)
	config.enable_kitty_graphics = true
	config.front_end = "WebGpu"
end

return M
