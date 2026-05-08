# oh-my-posh 配置
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/catppuccin_frappe.omp.json" | Invoke-Expression

# yazi 配置
function y {
    $tmp = [System.IO.Path]::GetTempFileName()
    yazi $args --cwd-file="$tmp"
    $cwd = Get-Content -Path $tmp
    if (-not [String]::IsNullOrEmpty($cwd) -and $cwd -ne $PWD.Path) {
        Set-Location -LiteralPath $cwd
    }
    Remove-Item -Path $tmp
}

# 设置代理
$env:http_proxy = "http://127.0.0.1:7890"
$env:https_proxy = "http://127.0.0.1:7890"

# 别名
Set-Alias -Name z -Value zoxide

Invoke-Expression (& { (zoxide init powershell | Out-String) })

# PSFzf 配置
Import-Module PSFzf # 导入 PSFzf 模块

# 启用快捷键支持 (Ctrl+r, Ctrl+t, Alt+c)
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' ` -PSReadlineChordReverseHistory 'Ctrl+r' 
$commandOverride = [ScriptBlock]{ param($Location) Write-Host $Location }
Set-PsFzfOption -AltCCommand $commandOverride
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

# fzf配置
$env:FZF_DEFAULT_OPTS="--preview 'bat --style=numbers --color=always --line-range :500 {}' --layout=reverse --bind 'ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down,ctrl-j:preview-down,ctrl-k:preview-up,ctrl-/:toggle-preview'"
$env:FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git"
$env:FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
$env:FZF_ALT_C_COMMAND="fd --type d --hidden --follow --exclude .git"
