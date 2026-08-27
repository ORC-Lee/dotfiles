local nord = {
   polar_night = '#2e3440',
   nord1 = '#3b4252',
   nord2 = '#434c5e',
   nord3 = '#4c566a',
   snow_storm = '#d8dee9',
   nord5 = '#e5e9f0',
   nord6 = '#eceff4',
   frost7 = '#8fbcbb',
   frost8 = '#88c0d0',
   frost9 = '#81a1c1',
   frost10 = '#5e81ac',
   red = '#bf616a',
   orange = '#d08770',
   yellow = '#ebcb8b',
   green = '#a3be8c',
   purple = '#b48ead',
}

local colorscheme = {
   foreground = nord.snow_storm,
   background = nord.polar_night,
   cursor_bg = nord.snow_storm,
   cursor_border = nord.snow_storm,
   cursor_fg = nord.polar_night,
   selection_bg = nord.nord3,
   selection_fg = nord.nord6,
   ansi = {
      nord.nord1, -- black
      nord.red,   -- red
      nord.green, -- green
      nord.yellow,-- yellow
      nord.frost9,-- blue
      nord.purple,-- magenta/purple
      nord.frost8,-- cyan
      nord.snow_storm, -- white
   },
   brights = {
      nord.nord3, -- black
      nord.red,   -- red
      nord.green, -- green
      nord.yellow,-- yellow
      nord.frost9,-- blue
      nord.purple,-- magenta/purple
      nord.frost8,-- cyan
      nord.nord6, -- white
   },
   tab_bar = {
      background = 'rgba(46, 52, 64, 0.6)',
      active_tab = {
         bg_color = nord.nord2,
         fg_color = nord.nord6,
      },
      inactive_tab = {
         bg_color = nord.polar_night,
         fg_color = nord.nord3,
      },
      inactive_tab_hover = {
         bg_color = nord.nord2,
         fg_color = nord.nord6,
      },
      new_tab = {
         bg_color = nord.polar_night,
         fg_color = nord.nord6,
      },
      new_tab_hover = {
         bg_color = nord.nord1,
         fg_color = nord.nord6,
         italic = true,
      },
   },
   visual_bell = nord.nord2,
   indexed = {
      [16] = nord.orange,
      [17] = nord.yellow,
   },
   scrollbar_thumb = nord.nord3,
   split = nord.nord3,
   compose_cursor = nord.red, -- nightbuild only
}

return colorscheme
