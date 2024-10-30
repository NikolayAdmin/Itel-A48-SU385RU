LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),itel-L6006)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
