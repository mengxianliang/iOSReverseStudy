TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = tweak_wechat

tweak_wechat_FILES = src/Tweak.x
tweak_wechat_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
