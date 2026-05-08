# # oh-my-posh 配置
# oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/catppuccin_frappe.omp.json" | Invoke-Expression

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

# 删除系统自带的 ls 别名（如果存在）
if (Test-Path Alias:ls) { 
    Remove-Item Alias:ls -Force
}

# ls 别名
function ls {
    eza -lh --group-directories-first --icons=auto $args
}

function lsa {
    eza -lha --group-directories-first --icons=auto $args
}

function lt {
    eza --tree --level=2 --long --icons --git $args
}

function lta {
    eza --tree --level=2 --long --icons --git -a $args
}

function .. { cd .. }
function ... { cd ../.. }
function .... { cd ../../.. }

# zoxide 配置
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# PSFzf 配置
Import-Module PSFzf # 导入 PSFzf 模块

# 启用快捷键支持 (Ctrl+r, Ctrl+t, Alt+c)
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' ` -PSReadlineChordReverseHistory 'Ctrl+r' 
$commandOverride = [ScriptBlock]{ param($Location) Write-Host $Location }
Set-PsFzfOption -AltCCommand $commandOverride
Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }

# fzf 配置
$env:FZF_DEFAULT_OPTS="--preview 'bat --style=numbers --color=always --line-range :500 {}' --layout=reverse --bind 'ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down,ctrl-j:preview-down,ctrl-k:preview-up,ctrl-/:toggle-preview'"
$env:FZF_DEFAULT_COMMAND="fd --type f --hidden --follow --exclude .git"
$env:FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
$env:FZF_ALT_C_COMMAND="fd --type d --hidden --follow --exclude .git"

# chafa 配置
function ch {
    chafa -f iterm $args
}

# starship 配置
Invoke-Expression (&starship init powershell)
