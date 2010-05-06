# This is a generic product that isn't specialized for a specific device.
# It includes the base Android platform. If you need Google-specific features,
# you should derive from generic_with_google.mk

PRODUCT_PACKAGES := \
    AlarmClock \
    AlarmProvider \
    Calendar \
    Camera \
    DrmProvider \
    LatinIME \
    Mms \
    Music \
    Settings \
    Sync \
    Updater \
    CalendarProvider \
    SubscribedFeedsProvider \
    SyncProvider

$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)

# Overrides
PRODUCT_BRAND := iphone
PRODUCT_DEVICE := iphone
PRODUCT_NAME := iphone
PRODUCT_BOARD := iphone

PRODUCT_COPY_FILES := \
vendor/apple/firmware/sd8686.bin:system/etc/firmware/sd8686.bin \
vendor/apple/firmware/sd8686_helper.bin:system/etc/firmware/sd8686_helper.bin \
vendor/apple/firmware/zephyr2.bin:system/etc/firmware/zephyr2.bin \
vendor/apple/firmware/zephyr2_cal.bin:system/etc/firmware/zephyr2_cal.bin \
vendor/apple/firmware/zephyr2_proxcal.bin:system/etc/firmware/zephyr2_proxcal.bin \
vendor/apple/asound.conf:system/etc/asound.conf \
vendor/apple/asound.state:system/etc/asound.state \
vendor/apple/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

USE_CAMERA_STUB:=true
