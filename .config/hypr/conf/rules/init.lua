hl.window_rule({
	match = {
		class = "^(pavucontrol)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		class = "^(blueman-manager)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		class = "^(nm-connection-editor)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		class = "^(qalculate-gtk)$",
	},
	float = true,
})

hl.window_rule({
	match = {
		class = "net-runelite-client-RuneLite",
		title = "^(win\\d+)$",
	},
	float = true,
	no_focus = true,
})

hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

hl.window_rule({
	match = {
		float = false,
	},

	no_shadow = true,
})

hl.window_rule({
	match = {
		fullscreen_state_client = 3,
		fullscreen_state_internal = 3,
		content = "game",
	},

	idle_inhibit = "always",
})

hl.layer_rule({
	match = { namespace = "ZShell-Bar" },
	blur = true,
	ignore_alpha = 0.5,
})

hl.layer_rule({
	match = { namespace = "ZShell-Auth" },
	blur = true,
	ignore_alpha = 0.5,
})

local suppressMaximizeRule = hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },

	suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)
