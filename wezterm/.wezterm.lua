local wezterm = require("wezterm")

return {
	-- Color scheme
	--	color_scheme = "Rosé Pine",
	color_scheme = "Catppuccin Mocha",
	-- Font settings
	font = wezterm.font("Fira Code", { weight = "DemiBold" }),
	font_size = 16.0,

	-- Shell
	default_prog = { "/bin/bash" },

	-- Window padding
	window_padding = {
		left = 2,
		right = 2,
		top = 2,
		bottom = 2,
	},

	-- Window appearance
	window_background_opacity = 0.9,
	window_decorations = "RESIZE",
	enable_wayland = false,

	-- Tab bar
	enable_tab_bar = false,
}
