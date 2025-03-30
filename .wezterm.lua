local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.enable_wayland = true

config.use_ime = true

--- みため
config.color_scheme = 'Monokai Pro Ristretto (Goph)'

config.window_background_opacity = 0.7

config.hide_mouse_cursor_when_typing = false

-- Fonts
config.font_size = 12

config.font = wezterm.font("0xProto Nerd Font", {style="Normal"})

config.font = wezterm.font_with_fallback {
  '0xProto Nerd Font',
  'Noto Sans CJK JP',
}

config.hide_tab_bar_if_only_one_tab = true

return config
