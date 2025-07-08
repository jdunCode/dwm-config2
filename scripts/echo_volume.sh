#!/bin/bash

# Получаем текущую громкость (в процентах) и удаляем % для сравнения
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -o "[0-9]*%" | head -n 1 | tr -d '%')
muted=$(pactl get-sink-mute @DEFAULT_SINK@ | grep -o "yes")

icon=" "

if [[ "$muted" == "yes" ]]; then
    icon=""  # Звук выключен
elif [[ "$volume" -ge 70 ]]; then
    icon=""   # Высокая громкость
elif [[ "$volume" -ge 30 ]]; then
    icon=""   # Средняя громкость
elif [[ "$volume" -ge 1 ]]; then
    icon=""   # Низкая громкость
else
    icon=""  # Без звука (0%)
fi

echo "$icon $volume%"
