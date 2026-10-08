package androidx.compose.ui.graphics;

import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SolidColor extends Brush {
    public final long a;

    public SolidColor(long j) {
        this.a = j;
    }

    @Override // androidx.compose.ui.graphics.Brush
    public final void a(float f, long j, Paint paint) {
        AndroidPaint androidPaint = (AndroidPaint) paint;
        androidPaint.d(1.0f);
        long j2 = this.a;
        if (f != 1.0f) {
            j2 = Color.b(j2, Color.d(j2) * f);
        }
        androidPaint.f(j2);
        if (androidPaint.c != null) {
            androidPaint.i(null);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SolidColor)) {
            return false;
        }
        if (Color.c(this.a, ((SolidColor) obj).a)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = Color.i;
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return q.i("SolidColor(value=", Color.i(this.a), ")");
    }
}
