TARGET = usb_blaster

# Adjust the XRAM location and size to leave space for the USB DMA buffers
# Buffer layout in XRAM:
# 0x0000 Ep0Buffer[8]
# 0x0040 Ep1Buffer[8]
# 0x0080 EP2Buffer[2*64]
#
# This takes a total of 256bytes, so there are 256 bytes left.

#XRAM_SIZE = 0x0100
#XRAM_LOC = 0x0100

XRAM_SIZE = 0x0200
XRAM_LOC = 0x0000
FREQ_SYS = 16000000
CODE_SIZE = 0x2800

EXTRA_FLAGS = --opt-code-speed

C_FILES = \
	main.c \
	ch554_sdcc/include/debug.c \
	ch554_sdcc/include/spi.c

#EXTRA_FLAGS += -DDE_PRINTF

pre-flash:
	

include ch554_sdcc/examples/Makefile.include
