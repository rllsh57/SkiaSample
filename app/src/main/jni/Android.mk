LOCAL_PATH := $(call my-dir)

SKIA_PATH := $(LOCAL_PATH)/../../../../android_external_skia
SYSTEM_CORE_PATH := $(LOCAL_PATH)/../../../../android_system_core

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
	$(SKIA_PATH)/include/config \
	$(SKIA_PATH)/include/core \
	$(SKIA_PATH)/include/pathops \
	$(SKIA_PATH)/include/pipe \
	$(SKIA_PATH)/include/effects \
	$(SKIA_PATH)/include/images \
	$(SKIA_PATH)/include/pathops \
	$(SKIA_PATH)/include/pdf \
	$(SKIA_PATH)/include/ports \
	$(SKIA_PATH)/include/utils \
	$(SKIA_PATH)/src/utils

LOCAL_C_INCLUDES += \
	$(SYSTEM_CORE_PATH)/include \

LOCAL_MODULE    := opensltest
LOCAL_CPPFLAGS	:= -std=c++11
LOCAL_LDFLAGS	:= -L$(SKIA_PATH)/lib
LOCAL_LDLIBS	:= -llog -ljnigraphics -lskia
LOCAL_SRC_FILES := \
	NativeView_jni.cpp \
	NativeView.cpp

include $(BUILD_SHARED_LIBRARY)
