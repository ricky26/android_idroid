LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    ril.c \
    atchannel.c \
    misc.c \
    at_tok.c

LOCAL_SHARED_LIBRARIES := \
    libcutils libutils libril

# for asprinf
LOCAL_CFLAGS := -D_GNU_SOURCE

LOCAL_C_INCLUDES := $(KERNEL_HEADERS)

ifeq ($(TARGET_DEVICE),sooner)
  LOCAL_CFLAGS += -DOMAP_CSMI_POWER_CONTROL -DUSE_TI_COMMANDS
endif

ifeq ($(TARGET_DEVICE),surf)
  LOCAL_CFLAGS += -DPOLL_CALL_STATE -DUSE_QMI
endif

ifeq ($(TARGET_DEVICE),dream)
  LOCAL_CFLAGS += -DPOLL_CALL_STATE -DUSE_QMI
endif

ifeq (foo,foo)
  #build shared library
  LOCAL_SHARED_LIBRARIES += \
      libcutils libutils
  LOCAL_LDLIBS += -lpthread
  LOCAL_CFLAGS += -DRIL_SHLIB
  LOCAL_PRELINK_MODULE := false
  LOCAL_MODULE:= libril.idroid
  LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
  include $(BUILD_SHARED_LIBRARY)
else
  #build executable
  LOCAL_SHARED_LIBRARIES += \
      libril
  LOCAL_MODULE:= reference-ril
  include $(BUILD_EXECUTABLE)
endif
