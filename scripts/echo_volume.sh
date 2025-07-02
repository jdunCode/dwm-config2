#!/bin/bash

# Получаем текущую громкость (в процентах, без знака %)
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -o "[0-9]*%" | head -n 1)
icon=" "
#if [[ "$volume" -ge "70%" ]]; then
#    icon=""  # Высокая громкость (🔊)
#elif [[ "$volume" -ge "30%" ]]; then
#    icon=""  # Средняя громкость (🔉)
#elif [[ "$volume" -ge "1%" ]]; then
#    icon=""  # Низкая громкость (🔈)
#else
#    icon=""  # Без звука (🔈🚫)
#fi

echo "$icon $volume"
