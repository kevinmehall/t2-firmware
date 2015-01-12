TARGET := firmware

include common.mk
include usb.mk

$(TARGET)_SRC += \
  firmware/main.c \
  firmware/usb.c \
  $(USB_PATH)/class/dfu/dfu.c

$(TARGET)_LDSCRIPT = deps/sam0/linker_scripts/samd21/gcc/samd21g15a_flash.ld