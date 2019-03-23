LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
CAL_MODULE_TAGS := optional

LOCAL_RRO_THEME := SwitchSeven
LOCAL_PACKAGE_NAME := SwitchSeven
LOCAL_SDK_VERSION := current
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := false

include $(BUILD_RRO_PACKAGE)
