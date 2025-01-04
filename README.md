# CH55x-USB-Blaster Firmware for "REV. C USB BLASTER" board

This is a fork of [CH55x-USB-Blaster firmware by VladimirDuan](https://github.com/VladimirDuan/CH55x-USB-Blaster) that runs on a cheap clone Altera USB Blaster I bought on Amazon. On the outside it says "Rev. c" and it uses a CH552G chip. It works correctly in Linux and Windows with my limited testing, no special drivers required.

## Compilation instructions

You don't need to compile the firmware in order to use it. Just go to the Releases on the right side of the page. If you want to build the firmware anyway, see below:

This firmware makes use of [ch554_sdcc SDK](https://github.com/Blinkinlabs/ch554_sdcc) as a submodule. Here is how I compile the firmware in Ubuntu 22.04:

- Install SDCC: `sudo apt install build-essential sdcc`
- Check out this repository: `git clone --recursive https://github.com/dougg3/CH55x-USB-Blaster.git`
- Build the firmware: `make`
- The final firmware is the generated file "usb_blaster.bin".

## Flashing instructions

Use any CH55x flashing tool of your choice to program usb_blaster.bin to the CH552G chip. Plug in the USB Blaster while shorting 3V3 and D+ together, then immediately remove the short after you plug it in. Then you need to quickly program it. In Linux, I use ch55xtool:

- To install it: `python3 -mpip install ch55xtool`
- To program the firmware: `ch55xtool -f usb_blaster.bin`

## Background information

For background information on this project, [see my blog post](https://www.downtowndougbrown.com/2024/06/fixing-a-knockoff-altera-usb-blaster-that-never-worked/).

Special thanks to mxwiser for implementing AS mode and hardware SPI.

License: MIT
