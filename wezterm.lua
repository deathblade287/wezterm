local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Font Settings
config.font_size = 35
config.line_height = 1.1
-- config.font = wezterm.font("Comic Mono") -- No Ligatures
-- config.font = wezterm.font("JetBrainsMono Nerd Font Mono")
-- config.font = wezterm.font("Maple Mono")
-- config.font = wezterm.font("0xProto")
config.font = wezterm.font("DankMono Nerd Font Mono")

-- Colors

config.colors = {
	cursor_bg = "white",
	cursor_border = "white",
	tab_bar = {
		-- The color of the inactive tab bar edge/divider
		inactive_tab_edge = "#575757",
	},
}

-- Appeaance
config.window_decorations = "RESIZE"

-- Tab Bar
config.enable_tab_bar = false
-- config.hide_tab_bar_if_only_one_tab = true
-- config.use_fancy_tab_bar = true
-- config.window_frame = {
-- 	font = wezterm.font({ family = "JetBrainsMono Nerd Font Mono", weight = "Bold" }),
-- 	font_size = 14.0,
-- 	active_titlebar_bg = "#333333",
-- 	inactive_titlebar_bg = "#333333",
-- }

config.keys = {
	{
		key = "n",
		mods = "CMD",
		action = wezterm.action.SendKey({ key = "n", mods = "ALT" }),
	},
	{
		key = "\\",
		mods = "CMD",
		action = wezterm.action.SendKey({ key = "\\", mods = "ALT" }),
	},
	-- {
	-- 	key = "|",
	-- 	mods = "CMD",
	-- 	action = wezterm.action.SendKey({ key = "\\", mods = "ALT|SHIFT" }),
	-- },
	{
		key = "l",
		mods = "CMD",
		action = wezterm.action.SendKey({ key = "l", mods = "ALT" }),
	},
	{
		key = "Tab",
		mods = "SHIFT|CTRL",
		action = wezterm.action.SendKey({ key = "Tab", mods = "SHIFT|CTRL" }),
	},
	{
		key = "Tab",
		mods = "CTRL",
		action = wezterm.action.SendKey({ key = "Tab", mods = "CTRL" }),
	},
	{
		key = "t",
		mods = "CMD",
		action = wezterm.action.SendKey({ key = "t", mods = "ALT" }),
	},
	{
		key = "w",
		mods = "CMD",
		action = wezterm.action.SendKey({ key = "w", mods = "ALT" }),
	},
	{
		key = "m",
		mods = "CMD",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

-- config.launch_menu_args = { {
-- 	label = "Bash",
-- 	args = { "bash", "-l" },
-- } }

config.window_padding = {
	left = 25,
	right = 0,
	top = 10,
	bottom = 5,
}

local bg_opacity = 0.7
-- config.color_scheme = "Brogrammer (Gogh)" -- For Non-Transparency
config.window_background_opacity = bg_opacity
config.text_background_opacity = bg_opacity - 0.1
config.max_fps = 120
config.prefer_egl = true

return config
