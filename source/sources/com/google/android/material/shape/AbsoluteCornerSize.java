package com.google.android.material.shape;

import android.graphics.RectF;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AbsoluteCornerSize implements CornerSize {
    public final float a;

    public AbsoluteCornerSize(float f) {
        this.a = f;
    }

    @Override // com.google.android.material.shape.CornerSize
    public final float a(RectF rectF) {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof AbsoluteCornerSize) && this.a == ((AbsoluteCornerSize) obj).a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.a)});
    }
}
