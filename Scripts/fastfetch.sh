#!/usr/bin/env bash

CONFIG_PATH=/media/fat/Scripts/.config/fastfetch

if ! [ -L "/etc/profile.d/fastfetch.sh" ]; then
  ln -s /media/fat/Scripts/fastfetch.sh /etc/profile.d/fastfetch.sh
fi

if ! [ -f "${CONFIG_PATH}/mister.jsonc" ]; then
  cp "${CONFIG_PATH}/mister_stock.jsonc" "${CONFIG_PATH}/mister.jsonc"
fi

"${CONFIG_PATH}/fastfetch" -c "${CONFIG_PATH}/mister.jsonc"
