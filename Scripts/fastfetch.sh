#!/usr/bin/env bash

CONFIG_PATH=/media/fat/Scripts/.config/fastfetch

if ! [ -f "${CONFIG_PATH}/mister.jsonc" ]; then
  echo '{
  "$schema": "https://github.com/fastfetch-cli/fastfetch/raw/master/doc/json_schema.json",
  "logo": {
    "type": "auto",
    "source": "/media/fat/Scripts/.config/fastfetch/misterkun.txt",
  },
  "modules": [
    "title", "separator", "os", "host", "kernel", "uptime", "shell", "terminal", "cpu", "memory",
    {
      "type": "disk",
      "folders": "/media/fat:/media/fat/cifs:/media/usb0:/media/usb1:/media/usb2:/media/usb3:/media/usb4:/media/usb5",
    },
    "break", "colors"
  ]
}' >  "${CONFIG_PATH}/mister.jsonc"
fi

"${CONFIG_PATH}/fastfetch" -c "${CONFIG_PATH}/mister.jsonc"
