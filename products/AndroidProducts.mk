#LOCAL_DIR := $(call my-dir)
ROOT := $(dir $(LOCAL_DIR))
COMMON := $(ROOT)common

PRODUCT_MAKEFILES := \
  $(ROOT)iPhone2G/iPhone2G.mk \
  $(ROOT)iPhone3G/iPhone3G.mk
