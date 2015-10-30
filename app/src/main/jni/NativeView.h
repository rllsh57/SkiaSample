#pragma once

#include <jni.h>


class NativeView
{
public:
    static void draw(JNIEnv *jniEnv, jobject bitmap);
};
