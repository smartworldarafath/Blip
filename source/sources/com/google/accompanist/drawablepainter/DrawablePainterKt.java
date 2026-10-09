package com.google.accompanist.drawablepainter;

import android.graphics.drawable.Drawable;
import defpackage.j6;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DrawablePainterKt {
    public static final Lazy a = LazyKt.a(LazyThreadSafetyMode.k, new j6(17));

    public static final long a(Drawable drawable) {
        if (drawable.getIntrinsicWidth() >= 0 && drawable.getIntrinsicHeight() >= 0) {
            float intrinsicWidth = drawable.getIntrinsicWidth();
            float intrinsicHeight = drawable.getIntrinsicHeight();
            return (Float.floatToRawIntBits(intrinsicWidth) << 32) | (Float.floatToRawIntBits(intrinsicHeight) & 4294967295L);
        }
        return 9205357640488583168L;
    }
}
