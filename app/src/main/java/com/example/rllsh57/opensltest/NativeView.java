package com.example.rllsh57.opensltest;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;


/**
 * Created by Andrei_Kaminski on 12.10.15.
 */
public class NativeView extends View {

    private static final String TAG = NativeView.class.getSimpleName();

    private long mCppInstance;

    public NativeView(Context context) {
        super(context);
        NativeView();
    }

    public NativeView(Context context, AttributeSet attrs) {
        super(context, attrs);
        NativeView();
    }

    private void NativeView() {
        setDrawingCacheEnabled(true);
        mCppInstance = nativeInit();
    }

    @Override
    protected void finalize() {
        nativeFree(mCppInstance);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        Bitmap bitmap = getDrawingCache();
        nativeDraw(mCppInstance, bitmap);
        canvas.drawBitmap(bitmap, 0, 0, null);
    }

    private native long nativeInit();
    private native void nativeFree(long instance);
    private native void nativeDraw(long instance, Bitmap bitmap);

    static {
        System.loadLibrary("opensltest");
    }
}
