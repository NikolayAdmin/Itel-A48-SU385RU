LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),SU385RU)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
