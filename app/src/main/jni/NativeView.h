#pragma once

#include <jni.h>


class NativeView
{
public:
    virtual void draw(JNIEnv *jniEnv, jobject bitmap);
};
