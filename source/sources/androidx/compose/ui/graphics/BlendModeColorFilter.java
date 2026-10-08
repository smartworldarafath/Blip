package androidx.compose.ui.graphics;

import android.graphics.PorterDuffColorFilter;
import android.os.Build;
import defpackage.jb;
import defpackage.l0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BlendModeColorFilter extends ColorFilter {
    public final long b;
    public final int c;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public BlendModeColorFilter(int i, long j) {
        super(r0);
        android.graphics.ColorFilter porterDuffColorFilter;
        if (Build.VERSION.SDK_INT >= 29) {
            l0.d();
            porterDuffColorFilter = l0.c(ColorKt.f(j), AndroidBlendMode_androidKt.a(i));
        } else {
            porterDuffColorFilter = new PorterDuffColorFilter(ColorKt.f(j), AndroidBlendMode_androidKt.b(i));
        }
        this.b = j;
        this.c = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BlendModeColorFilter)) {
            return false;
        }
        BlendModeColorFilter blendModeColorFilter = (BlendModeColorFilter) obj;
        if (Color.c(this.b, blendModeColorFilter.b) && this.c == blendModeColorFilter.c) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = Color.i;
        return Integer.hashCode(this.c) + (Long.hashCode(this.b) * 31);
    }

    public final String toString() {
        return jb.h("BlendModeColorFilter(color=", Color.i(this.b), ", blendMode=", BlendMode.a(this.c), ")");
    }
}
