LOCAL_DIR := $(dir $(lastword $(MAKEFILE_LIST)))
COMMON := $(subst iPhone2G,common,$(LOCAL_DIR))

$(call inherit-product, $(COMMON)/common.mk)

PRODUCT_NAME := iPhone2G
PRODUCT_DEVICE := iPhone2G

PRODUCT_COPY_FILES += \
	$(LOCAL_DIR)gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
	$(LOCAL_DIR)init.iphone.rc:root/init.iphone.rc

