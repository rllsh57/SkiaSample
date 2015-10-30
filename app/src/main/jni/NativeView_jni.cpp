#include "NativeView_jni.h"

#include <android/log.h>

#include "NativeView.h"


#define LOG_TAG         "NativeView_jni"
#define ALOGV(...)      (__android_log_print(ANDROID_LOG_VERBOSE, LOG_TAG, __VA_ARGS__))


JNIEXPORT void JNICALL Java_com_example_rllsh57_opensltest_NativeView_nativeDraw(JNIEnv *env, jobject obj, jobject bitmap)
{
    NativeView::draw(env, bitmap);
}