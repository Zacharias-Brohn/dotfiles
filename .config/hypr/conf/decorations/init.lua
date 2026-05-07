hl.config({
	general = {
		gaps_in = 2,
		gaps_out = 4,
		border_size = 1,
		col = {
			active_border = { colors = { "rgba(ffffff10)", "rgba(ffffff10)" }, angle = 45 },
			inactive_border = "rgba(ffffff10)",
		},
		resize_on_border = true,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 10,
		rounding_power = 2,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		shadow = {
			enabled = true,
			range = 100,
			render_power = 4,
			color = 0x66000000,
			color_inactive = 0x33000000,
			offset = "0 10",
		},

		blur = {
			enabled = true,
			size = 8,
			passes = 3,
			new_optimizations = true,
			ignore_opacity = true,
			contrast = 1.0,
			brightness = 1.0,
			vibrancy = 0,
			vibrancy_darkness = 0,
			xray = false,
			noise = 0.05,
			popups = true,
			popups_ignorealpha = 0.6,
			input_methods = true,
		},
	},

	animations = {
		enabled = true,
	},
})
