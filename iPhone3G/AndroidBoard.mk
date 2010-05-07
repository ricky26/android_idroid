include vendor/idroid/common/AndroidBoardCommon.mk

include vendor/idroid/iPhone3G/libaudio/Android.mk

file := $(TARGET_OUT_KEYLAYOUT)/gpio-keys.kl
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/gpio-keys.kl | $(ACP)
        $(transform-prebuilt-to-target)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := gpio-keys.kcm
include $(BUILD_KEY_CHAR_MAP)

