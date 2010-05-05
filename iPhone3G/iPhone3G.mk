$(call inherit-product, vendor/idroid/common/common.mk)

PRODUCT_NAME := iPhone3G
PRODUCT_DEVICE := iPhone3G

LOCAL_DIR := vendor/idroid/iPhone3G/
LIBERTAS := $(LOCAL_DIR)libertas/
LOCAL_KERNEL := $(LOCAL_DIR)vmlinux

PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel \
	$(LIBERTAS)libertas_sdio.ko:system/lib/modules/libertas_sdio.ko \
	$(LIBERTAS)LICENCE.libertas:system/etc/firmware/LICENCE.libertas \
	$(LIBERTAS)sd8686.bin:system/etc/firmware/sd8686.bin \
	$(LIBERTAS)sd8686_helper.bin:system/etc/firmware/sd8686_helper.bin \
        $(LIBERTAS)LICENCE.libertas:root/lib/firmware/LICENCE.libertas \
        $(LIBERTAS)sd8686.bin:root/lib/firmware/sd8686.bin \
        $(LIBERTAS)sd8686_helper.bin:root/lib/firmware/sd8686_helper.bin

