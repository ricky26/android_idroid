# make file for new hardware  from 
#
include $(call all-subdir-makefiles)
LOCAL_PATH := $(call my-dir)
#
# this is here to use the pre-built kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
#TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
TARGET_PREBUILT_KERNEL := /home/patrick/work/kernel_common/arch/arm/boot/zImage
endif
#
file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
      	$(transform-prebuilt-to-target)
#
# no boot loader, so we don't need any of that stuff..  
#
LOCAL_PATH := vendor/apple/iphone
#
include $(CLEAR_VARS)
#
# include more board specific stuff here? Such as Audio parameters.      
#
