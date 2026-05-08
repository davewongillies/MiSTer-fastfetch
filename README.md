# MiSTer-fastfetch

A script for installing and running [fastfetch](https://github.com/fastfetch-cli/fastfetch)
on your MiSTer.

## Prerequisites

* A network connected MiSTer (Ethernet or wifi)

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

## Example output

```
        ###          ###            root@MiSTer
      #######      #######          -----------
    ## ##### ###### ##### ##        OS: Buildroot 2021.02.4 armv7l
    #                      #        Host: Terasic DE10-nano
   #                        #       Kernel: Linux 5.15.1-MiSTer
   #                        #       Uptime: 8 hours, 17 mins
   # ###################### #       Shell: bash 5.0.18
  ## #   #### #  # ####   # ##      Terminal: /dev/pts/2
 #   ##      ######      ##   #     CPU: socfpga (2) @ 1.20 GHz
#      ######  ##  ######      #    Memory: 117.73 MiB / 492.28 MiB (24%)
##         ##########         ##    Disk (/media/fat): 25.83 GiB / 59.47 GiB (43%) - exfat
 ###       #   ##   #       ###     Disk (/media/fat/cifs): 6.88 TiB / 10.90 TiB (63%) - cifs
   #                        #
   #                        #
 ##          ######          ##
 ##         #      #         ##
   #########        #########
```
