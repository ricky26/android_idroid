LOCAL_PATH := $(call my-dir)

TARGET_BOOTLOADER_BOARD_NAME := idroid

USE_CAMERA_STUB := true

BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := 
#WPA_SUPPLICANT_VERSION      := VER_0_6_X
#BOARD_WLAN_DEVICE           := libertas_sdio
#WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/libertas_sdio.ko"
#WIFI_DRIVER_MODULE_ARG      := ""
#WIFI_DRIVER_MODULE_NAME     := "libertas_sdio"

COMMON := $(LOCAL_PATH)/../common
include $(COMMON)/BoardConfigCommon.mk
