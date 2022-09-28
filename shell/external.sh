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
