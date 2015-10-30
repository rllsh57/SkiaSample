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

    public NativeView(Context context) {
        super(context);
        initialize();
    }

    public NativeView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initialize();
    }

    private void initialize() {
        setDrawingCacheEnabled(true);
    }

    @Override
    protected void onDraw(Canvas canvas) {
        Bitmap bitmap = getDrawingCache();
        nativeDraw(bitmap);
        canvas.drawBitmap(bitmap, 0, 0, null);
    }

    private native void nativeDraw(Bitmap bitmap);

    static {
        System.loadLibrary("opensltest");
    }
}
