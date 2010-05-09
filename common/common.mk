LOCAL_PATH := vendor/idroid/common

$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk)

PRODUCT_MANUFACTURER := apple

LIBERTAS := $(LOCAL_PATH)libertas/

PRODUCT_COPY_FILES += \
	$(LIBERTAS)LICENCE.libertas:system/etc/firmware/LICENCE.libertas \
	$(LIBERTAS)sd8686.bin:system/etc/firmware/sd8686.bin \
	$(LIBERTAS)sd8686_helper.bin:system/etc/firmware/sd8686_helper.bin \
	$(LIBERTAS)LICENCE.libertas:root/lib/firmware/LICENCE.libertas \
	$(LIBERTAS)sd8686.bin:root/lib/firmware/sd8686.bin \
	$(LOCAL_PATH)/asound.conf:system/etc/asound.conf \
	$(LOCAL_PATH)/asound.state:system/etc/asound.state \
	$(LOCAL_PATH)/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_BRAND := apple
PRODUCT_DEVICE := iphone
PRODUCT_NAME := idroid
PRODUCT_BOARD := idroid

