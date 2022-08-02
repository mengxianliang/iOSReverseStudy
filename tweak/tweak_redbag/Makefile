TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = tweak_redbag

tweak_redbag_FILES = $(wildcard src/*.x)
tweak_redbag_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
