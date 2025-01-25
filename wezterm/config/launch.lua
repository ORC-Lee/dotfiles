local platform = require('utils.platform')()

local options = {
   default_prog = {},
   launch_menu = {},
}

if platform.is_win then
   options.default_prog = { 'C:\\Program Files\\PowerShell\\7\\pwsh.exe' }
   options.launch_menu = {
      { label = 'Neovim', args = { 'D:\\Program Files\\Neovim\\bin\\nvim.exe' } },
      { label = 'PowerShell 7', args = { 'C:\\Program Files\\PowerShell\\7\\pwsh.exe' } },
      { label = 'Command Prompt', args = { 'cmd.exe' } },
      { label = 'Git Bash', args = { 'D:\\Program Files\\Git\\bin\\bash.exe' } },
   }
elseif platform.is_mac then
   options.default_prog = { '/opt/homebrew/bin/fish', '-l' }
   options.launch_menu = {
      { label = 'Bash', args = { 'bash', '-l' } },
      { label = 'Fish', args = { '/opt/homekbrew/bin/fish', '-l' } },
      { label = 'Nushell', args = { '/opt/homebrew/bin/nu', '-l' } },
      { label = 'Zsh', args = { 'zsh', '-l' } },
   }
elseif platform.is_linux then
   options.default_prog = { 'zsh', '-l' }
   options.launch_menu = {
      { label = 'Zsh', args = { 'zsh', '-l' } },
      { label = 'Bash', args = { 'bash', '-l' } },
   }
end

return options
