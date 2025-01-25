local wezterm = require('wezterm')
local platform = require('utils.platform')

local font = 'Ubuntu Mono'
-- local font = 'FiraCode Nerd Font'
-- local font = '等距更纱黑体 Slab SC'
local font_size = platform().is_win and 12 or 13

return {
   font = wezterm.font(font),
   font_size = font_size,

   --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
   freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
