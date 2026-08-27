local everforest = {
   rosewater = '#d3c6aa',
   flamingo = '#f2cdcd',
   pink = '#f5c2e7',
   mauve = '#cba6f7',
   red = '#f38ba8',
   maroon = '#eba0ac',
   peach = '#fab387',
   yellow = '#f9e2af',
   green = '#a6e3a1',
   teal = '#94e2d5',
   sky = '#89dceb',
   sapphire = '#74c7ec',
   blue = '#89b4fa',
   lavender = '#b4befe',
   text = '#d3c6aa',
   subtext1 = '#bac2de',
   subtext0 = '#a6adc8',
   overlay2 = '#9399b2',
   overlay1 = '#7f849c',
   overlay0 = '#6c7086',
   surface2 = '#d3c6aa',
   surface1 = '#2d353b',
   surface0 = '#313244',
   base = '#2d353b',
   mantle = '#181825',
   crust = '#d3c6aa',
}

local colorscheme = {
   foreground = everforest.text,
   background = everforest.base,
   cursor_bg = everforest.rosewater,
   cursor_border = everforest.rosewater,
   cursor_fg = everforest.crust,
   selection_bg = everforest.surface2,
   selection_fg = everforest.surface1,
   ansi = {
      '#475258', -- black
      '#e67e80', -- red
      '#a7c080', -- green
      '#dbbc7f', -- yellow
      '#7fbbb3', -- blue
      '#d699b6', -- magenta/purple
      '#83c092', -- cyan
      '#d3c6aa', -- white
   },
   brights = {
      '#475258', -- black
      '#e67e80', -- red
      '#a7c080', -- green
      '#dbbc7f', -- yellow
      '#7fbbb3', -- blue
      '#d699b6', -- magenta/purple
      '#83c092', -- cyan
      '#d3c6aa', -- white
   },
   tab_bar = {
      background = 'rgba(0, 0, 0, 0.2)',
      active_tab = {
         bg_color = everforest.surface2,
         fg_color = everforest.text,
      },
      inactive_tab = {
         bg_color = everforest.surface0,
         fg_color = everforest.subtext1,
      },
      inactive_tab_hover = {
         bg_color = everforest.surface0,
         fg_color = everforest.text,
      },
      new_tab = {
         bg_color = everforest.base,
         fg_color = everforest.text,
      },
      new_tab_hover = {
         bg_color = everforest.mantle,
         fg_color = everforest.text,
         italic = true,
      },
   },
   visual_bell = everforest.surface0,
   indexed = {
      [16] = everforest.peach,
      [17] = everforest.rosewater,
   },
   scrollbar_thumb = everforest.surface2,
   split = everforest.overlay0,
   compose_cursor = everforest.flamingo, -- nightbuild only
}

return colorscheme
