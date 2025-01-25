local Config = require('config')

require('utils.backdrops'):set_files():random()

require('events.right-status').setup()
require('events.left-status').setup()
require('events.tab-title').setup()
require('events.new-tab-button').setup()

-- maximize window on startup
local wezterm = require('wezterm')
wezterm.on('gui-startup', function()
   local tab, pane, window = wezterm.mux.spawn_window({})
   window:gui_window():maximize()
end)

return Config:init()
   :append(require('config.appearance'))
   :append(require('config.bindings'))
   :append(require('config.domains'))
   :append(require('config.fonts'))
   :append(require('config.general'))
   :append(require('config.launch')).options
