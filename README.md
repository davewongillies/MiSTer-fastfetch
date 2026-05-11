# MiSTer-fastfetch

A script for installing and running [fastfetch](https://github.com/fastfetch-cli/fastfetch)
on your MiSTer.

## Prerequisites

* A network connected MiSTer (Ethernet or wifi)
* Set `log_file_entry=1` in `MiSTer.ini` to show the currently loaded game

## Setup

1. Add the following to `/media/fat/downloader.ini`.

```ini
[davewongillies/mister-fastfetch]
db_url = https://raw.githubusercontent.com/davewongillies/MiSTer-fastfetch/db/db.json.zip
```

2. Run `update` or `update_all` from the Scripts menu.

## Running fastfetch

1. On your MiSTer run `fastfetch` from the `Scripts` menu or `fastfetch.sh`
   from a shell on your MiSTer.

## Configuration

By default `fastfetch.sh` will look for the configuration file `/media/fat/Scripts/.config/mister.jsonc`.
If the file doesn't exist `fastfetch.sh` will copy the file `mister_stock.jsonc`.
After that you are free to modify the file as you see fit with standard fastfetch
[configuration](https://github.com/fastfetch-cli/fastfetch/wiki/Configuration)
syntax.

If you want `fastfetch` to run everytime you login via ssh or a terminal, run
the following:

```bash
ln -s /media/fast/Scripts/fastfetch.sh /etc/profile.d/
```

## Example output

```
        ###          ###            root@MiSTer
      #######      #######          -----------
    ## ##### ###### ##### ##        OS: Buildroot 2021.02.4 armv7l
    #                      #        Host: Terasic DE10-nano
   #                        #       CPU: socfpga (2) @ 1.20 GHz
   #                        #       Loadavg: 1.23, 1.21, 1.26
   # ###################### #       Memory: 115.37 MiB / 492.28 MiB (23%)
  ## #   #### #  # ####   # ##      Uptime: 1 hour, 54 mins
 #   ##      ######      ##   #     Kernel: Linux 5.15.1-MiSTer
#      ######  ##  ######      #    Shell: bash 5.0.18
##         ##########         ##    Terminal: /dev/pts/1
 ###       #   ##   #       ###     Disk (/media/fat): 25.85 GiB / 59.47 GiB (43%) - exfat
   #                        #       Disk (/media/fat/cifs): 6.84 TiB / 10.90 TiB (63%) - cifs
   #                        #       Local IP (eth0): 192.168.1.17/24
 ##          ######          ##     Wifi: XYZ - 802.11n (Wi-Fi 4) - 2.4 GHz (100%)
 ##         #      #         ##     -----------
   #########        #########       Keyboard: Logitech K400 Plus
                                    Gamepad: 8BitDo Ultimate Wireless Controller
                                    -----------
                                    Core: TGFX16
                                    Game: Ginga Fukei Densetsu Sapphire (Japan) (Reprint).cue
```

## Credits

* MiSTer-kun Cat by hewhoisred
* ASCII art version of MiSTer-kun Cat generated from [baxysquare/mister\_kun](https://github.com/baxysquare/mister_kun/blob/main/8-bit_mister_kun_bw_32x32.png)
