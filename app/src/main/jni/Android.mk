LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := opensltest
LOCAL_CPPFLAGS	:= -std=c++11
LOCAL_LDLIBS	:= -llog
LOCAL_SRC_FILES := \
	NativeView_jni.cpp \
	NativeView.cpp

include $(LOCAL_PATH)/../../../../android_external_skia/Android.mk
include $(LOCAL_PATH)/../../../../android_system_core/Android.mk

include $(BUILD_SHARED_LIBRARY)
