TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = tweak_qqvideo

tweak_qqvideo_FILES = Tweak.x
tweak_qqvideo_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
