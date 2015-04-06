# Copyright 2013 Google, Inc.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := leveldb_static
LOCAL_MODULE_TAGS := optional

LOCAL_SDK_VERSION := 9

LOCAL_C_INCLUDES += $(LOCAL_PATH)/include

LOCAL_SRC_FILES := \
  $(call all-c-files-under, db) \
  $(call all-c-files-under, doc) \
  $(call all-c-files-under, helpers) \
  $(call all-c-files-under, issues) \
  $(call all-c-files-under, port) \
  $(call all-c-files-under, table) \
  $(call all-c-files-under, util)

include $(BUILD_STATIC_LIBRARY)
