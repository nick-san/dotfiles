#!/bin/bash

# 通知を出す残量の閾値（%）
LOW_BATTERY_THRESHOLD=10

# バッテリー残量を取得
battery_level=$(cat /sys/class/power_supply/BAT*/capacity)

# 閾値以下の場合に通知
if [ "$battery_level" -le "$LOW_BATTERY_THRESHOLD" ]; then
    notify-send "バッテリー容量低下" "バッテリーは残り ${battery_level}%." --urgency=critical
fi
