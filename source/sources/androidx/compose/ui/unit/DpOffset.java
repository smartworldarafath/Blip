package androidx.compose.ui.unit;

import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DpOffset {
    public final long a;

    public static String a(long j) {
        if (j != 9205357640488583168L) {
            return jb.h("(", Dp.c(Float.intBitsToFloat((int) (j >> 32))), ", ", Dp.c(Float.intBitsToFloat((int) (j & 4294967295L))), ")");
        }
        return "DpOffset.Unspecified";
    }

    public final boolean equals(Object obj) {
        if (obj instanceof DpOffset) {
            if (this.a != ((DpOffset) obj).a) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.a);
    }

    public final String toString() {
        return a(this.a);
    }
}
