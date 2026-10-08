package androidx.window.layout;

import android.graphics.Rect;
import androidx.window.core.Bounds;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WindowMetrics {
    public final Bounds a;
    public final float b;

    public WindowMetrics(Rect rect, float f) {
        this.a = new Bounds(rect);
        this.b = f;
    }

    public final Rect a() {
        Bounds bounds = this.a;
        bounds.getClass();
        return new Rect(bounds.a, bounds.b, bounds.c, bounds.d);
    }

    public final boolean equals(Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!WindowMetrics.class.equals(cls)) {
            return false;
        }
        obj.getClass();
        WindowMetrics windowMetrics = (WindowMetrics) obj;
        if (Intrinsics.a(this.a, windowMetrics.a) && this.b == windowMetrics.b) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Float.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "WindowMetrics(_bounds=" + this.a + ", density=" + this.b + ')';
    }

    public WindowMetrics(Bounds bounds, float f) {
        this.a = bounds;
        this.b = f;
    }
}
