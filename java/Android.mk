LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libphonenumber
LOCAL_SDK_VERSION := 9
LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_JAVA_RESOURCE_DIRS := src
  
include $(BUILD_STATIC_JAVA_LIBRARY)
