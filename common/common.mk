LOCAL_PATH := $(call my-dir)

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

PRODUCT_MANUFACTURER := iDroid

PRODUCT_COPY_FILES := \
	$(LOCAL_PATH)/asound.conf:system/etc/asound.conf \
	$(LOCAL_PATH)/asound.state:system/etc/asound.state \
	$(LOCAL_PATH)/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_BRAND := apple
PRODUCT_DEVICE := iPhone
PRODUCT_NAME := iPhone
PRODUCT_BOARD := iPhone

