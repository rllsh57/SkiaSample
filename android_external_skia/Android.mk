SKIA_PATH := $(call my-dir)

LOCAL_LDLIBS += -ljnigraphics -lskia
LOCAL_LDFLAGS += -L$(SKIA_PATH)/lib
LOCAL_C_INCLUDES += \
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
