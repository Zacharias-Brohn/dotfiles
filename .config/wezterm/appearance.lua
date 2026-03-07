local M = {}

function M.setup(config, wezterm)
	config.colors = {
		tab_bar = {
			inactive_tab_edge = "white",

			active_tab = {
				bg_color = "rgba(60,60,60,0.5)",
				fg_color = "rgba(255,255,255,1)",
				italic = false,
			},
			inactive_tab = {
				bg_color = "rgba(30, 30, 30, 0.7)",
				fg_color = "rgba(150,150,150,0.2)",
			},
			inactive_tab_hover = {
				bg_color = "rgba(230,230,230,0.1)",
				fg_color = "rgba(255,255,255,1.0)",
			},
			new_tab = {
				bg_color = "rgba(30, 30, 30, 0.7)",
				fg_color = "rgba(255,255,255,1)",
			},
			new_tab_hover = {
				bg_color = "rgba(230,230,230,0.1)",
				fg_color = "rgba(255,255,255,1.0)",
				italic = false,
			},
		},
	}

	config.enable_wayland = true

	config.font = wezterm.font("0xProto Nerd Font Mono")
	config.font_size = 12.0
	config.harfbuzz_features = { "calt=1", "clig=1", "liga=1" }
	config.use_fancy_tab_bar = false
	config.show_new_tab_button_in_tab_bar = false
	config.show_close_tab_button_in_tabs = false
	config.tab_bar_at_bottom = true

	config.window_decorations = "NONE"

	config.cursor_thickness = "1pt"
	config.default_cursor_style = "SteadyBar"

	config.window_content_alignment = {
		horizontal = "Center",
		vertical = "Center",
	}

	config.window_background_opacity = 0.8

	config.inactive_pane_hsb = {
		saturation = 1,
		brightness = 0.6,
	}

	config.window_frame = {
		active_titlebar_bg = "rgba(60,60,60,0)",
		inactive_titlebar_bg = "none",
		border_left_width = "0",
		border_right_width = "0",
		border_bottom_height = "0",
		border_top_height = "0",
	}

	config.window_padding = {
		left = "0%",
		right = "0%",
		top = "0%",
		bottom = "0%",
	}
end

return M
