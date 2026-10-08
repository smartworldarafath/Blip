package androidx.compose.ui.geometry;

import defpackage.jb;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CornerRadius {
    public static final boolean a(long j, long j2) {
        if (j == j2) {
            return true;
        }
        return false;
    }

    public static String b(long j) {
        int i = (int) (j >> 32);
        int i2 = (int) (j & 4294967295L);
        if (Float.intBitsToFloat(i) == Float.intBitsToFloat(i2)) {
            return q.i("CornerRadius.circular(", GeometryUtilsKt.a(Float.intBitsToFloat(i)), ")");
        }
        return jb.h("CornerRadius.elliptical(", GeometryUtilsKt.a(Float.intBitsToFloat(i)), ", ", GeometryUtilsKt.a(Float.intBitsToFloat(i2)), ")");
    }
}
