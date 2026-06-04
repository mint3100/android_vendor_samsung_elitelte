LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),elitelte_kor)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
