LOCAL_PATH := $(call my-dir)
COMMON := $(dir $(LOCAL_PATH))common

file := $(TARGET_OUT_KEYLAYOUT)/gpio-keys.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/gpio-keys.kl | $(ACP)
        $(transform-prebuilt-to-target)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := gpio-keys.kcm
include $(BUILD_KEY_CHAR_MAP)

SUBDIRS := \
	$(COMMON)/AndroidBoardCommon.mk

include $(SUBDIRS)
