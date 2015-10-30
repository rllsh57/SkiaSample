#include "NativeView.h"

#include <android/bitmap.h>

#include <SkCanvas.h>
#include <SkSurface.h>
#include <SkPaint.h>


void NativeView::draw(JNIEnv *jniEnv, jobject bitmap)
{
    AndroidBitmapInfo bitmapInfo;
    void *bitmapBuffer;

    AndroidBitmap_getInfo(jniEnv, bitmap, &bitmapInfo);
    AndroidBitmap_lockPixels(jniEnv, bitmap, &bitmapBuffer);

    SkSurface *surface = SkSurface::NewRasterDirect(
            SkImageInfo::MakeN32Premul(bitmapInfo.width, bitmapInfo.height),
            bitmapBuffer, bitmapInfo.stride
    );

    SkPaint paint;
    paint.setColor(0xFFFF0000);
    surface->getCanvas()->drawLine(5, 5, 50, 50, paint);

    AndroidBitmap_unlockPixels(jniEnv, bitmap);
}