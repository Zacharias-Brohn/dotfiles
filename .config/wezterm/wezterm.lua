local wezterm = require("wezterm")
local act = wezterm.action
local config = wezterm.config_builder()

require("mux.mux").setup(config, wezterm)
require("appearance").setup(config, wezterm)
require("general").setup(config, wezterm)
require("keybinds").setup(config, act)
require("plugins").setup_all(config, wezterm)

return config
