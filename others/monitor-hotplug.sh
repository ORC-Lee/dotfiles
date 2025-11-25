#!/usr/bin/env bash

LAPTOP="eDP-1"
EXTERNAL="DP-2"

# 检测外接显示器状态
if [[ $(hyprctl monitors | grep -c "$EXTERNAL") -ge 1 ]]; then
  # 禁用笔记本屏幕
  hyprctl keyword monitor "$LAPTOP, disable"
  # 设置外接显示器
  hyprctl keyword monitor "$EXTERNAL, 1920x1080, 0x0, 1"
  notify-send "显示模式" "外接显示器已连接-笔记本屏幕已禁用"
else
  # 未检测到外接显示器时启用笔记本屏幕
  hyprctl keyword monitor "$LAPTOP, 2560x1600, 0x0, 2"
  notify-send "显示模式" "使用笔记本屏幕-200%缩放已启用"
fi
