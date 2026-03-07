local M = {}

function M.setup_all(config, wezterm)
	local files = wezterm.glob("plugins/*.lua", wezterm.config_dir)
	table.sort(files)

	for _, relpath in ipairs(files) do
		local module_name = relpath:gsub("\\", "/"):gsub("%.lua$", ""):gsub("/", ".")

		if module_name ~= "plugins.init" then
			local ok, mod = pcall(require, module_name)
			if not ok then
				wezterm.log_error(("Failed to load %s: %s"):format(module_name, mod))
			elseif type(mod) == "table" and type(mod.setup) == "function" then
				mod.setup(config, wezterm)
			end
		end
	end
end

return M
