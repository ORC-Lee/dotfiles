# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# Cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# Python startup file
export PYTHONSTARTUP=$HOME/.pythonrc

# Vagrant
VAGRANT_DISABLE_VBOXSYMLINKCREATE=1

# clash 配置
hostip=$(cat /etc/resolv.conf |grep -oP '(?<=nameserver\ ).*')
alias setp='export https_proxy="http://${hostip}:7890"; export http_proxy="http://${hostip}:7890"; export all_proxy="socks5://${hostip}:7890"; export ALL_PROXY="socks5://${hostip}:7890";'
alias unsetp='unset https_proxy; unset http_proxy; unset all_proxy; unset ALL_PROXY;'

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/orclee/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/orclee/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/orclee/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/orclee/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# fcitx5
export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
