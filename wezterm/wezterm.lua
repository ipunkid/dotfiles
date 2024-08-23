local wezterm = require("wezterm")
local mux = wezterm.mux

local config = {
	-- Appearance
	color_scheme = "Night Owl (Gogh)",
	window_background_opacity = 0.85,
	macos_window_background_blur = 50,
	window_decorations = "RESIZE",
	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 20,
	},

	-- Performance
	animation_fps = 60,
	max_fps = 60,
	front_end = "WebGpu",
	webgpu_power_preference = "HighPerformance",

	-- Behavior
	check_for_updates = false,
	switch_to_last_active_tab_when_closing_tab = false,
	enable_scroll_bar = false,
	native_macos_fullscreen_mode = true,
	adjust_window_size_when_changing_font_size = true,
	window_close_confirmation = "NeverPrompt",

	-- Font
	font = wezterm.font_with_fallback({ "JetBrains Mono" }),
	font_size = 13,

	-- Tab Bar
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	show_tab_index_in_tab_bar = false,
	tab_max_width = 30,
	use_fancy_tab_bar = true,

	-- Scrollback
	scrollback_lines = 99999,

	-- Colors
	colors = {
		tab_bar = {
			background = "#082233",
			active_tab = { bg_color = "#082233", fg_color = "#aedb67" },
			inactive_tab = { bg_color = "#082233", fg_color = "#fff" },
			inactive_tab_hover = { bg_color = "#4b6479", fg_color = "#fff" },
			new_tab = { bg_color = "#082233", fg_color = "#fff" },
			new_tab_hover = { bg_color = "#4b6479", fg_color = "#fff" },
		},
	},
}

-- Startup behavior
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return config
