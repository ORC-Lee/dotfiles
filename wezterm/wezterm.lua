local wezterm = require("wezterm")

local config = {}

local launch_menu = {}
config.launch_menu = launch_menu

config.font = wezterm.font "JetBrains Mono"
--config.font = wezterm.font "FiraCode Nerd Font"
--config.font = wezterm.font "等距更纱黑体 Slab SC"

--changing the default program
config.default_prog = { "D:\\Program Files\\Neovim\\bin\\nvim.exe" }

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	table.insert(launch_menu, {
		label = "Neovim",
		args = { "D:\\Program Files\\Neovim\\bin\\nvim.exe" },
	})
	
     table.insert(launch_menu, {
		label = "PowerShell 7",
		args = { "C:\\Program Files\\PowerShell\\7\\pwsh.exe", "-NoLogo" },
	})
    
	table.insert(launch_menu, {
		label = "CMD",
		args = { "cmd.exe" },
	})
	
     table.insert(launch_menu, {
		label = "Git Bash",
		args = { "D:\\Program Files\\Git\\bin\\bash.exe", "-il" },
	})
	
end

config.mouse_bindings = {
	-- right click paste
	{
		event = { Down = { streak = 1, button = "Right" } },
		mods = "NONE",
		action = wezterm.action({ PasteFrom = "Clipboard" }),
	},
	-- change the default click behavior so that it only selects
	-- text and doesn't open hyperlinks
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "NONE",
		action = wezterm.action({ CompleteSelection = "PrimarySelection" }),
	},
	-- and make CTRL-Click open hyperlinks
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = "OpenLinkAtMouseCursor",
	},
}

wezterm.on("update-right-status", function(window)
	local date = wezterm.strftime("%Y-%m-%d %H:%M  ")
	window:set_right_status(wezterm.format({
		{ Text = date },
	}))
end)

wezterm.on("format-tab-title", function(tab, _, _, _, _)
	return {
		{ Text = " " .. tab.tab_index + 1 .. " " },
	}
end)

wezterm.on("gui-startup", function()
	local tab, pane, window = wezterm.mux.spawn_window({})
	window:gui_window():maximize()
end)

local window_min = " 󰖰 "
local window_max = " 󰖯 "
local window_close = " 󰅖 "
config.tab_bar_style = {
	window_hide = window_min,
	window_hide_hover = window_min,
	window_maximize = window_max,
	window_maximize_hover = window_max,
	window_close = window_close,
	window_close_hover = window_close,
}

config.use_fancy_tab_bar = false
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.integrated_title_buttons = { "Hide", "Maximize", "Close" }
--config.color_scheme = "Catppuccin Frappe"
config.color_scheme = "OneHalfDark"
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.check_for_updates = true

return config
