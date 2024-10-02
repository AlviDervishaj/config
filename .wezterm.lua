-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Rosé Pine Moon (Gogh)'
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.font_size = 16
config.line_height = 1.3
config.automatically_reload_config = true
config.window_background_opacity = 0.95
-- and finally, return the configuration to wezterm
return config
