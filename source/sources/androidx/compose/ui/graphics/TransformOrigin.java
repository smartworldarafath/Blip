package androidx.compose.ui.graphics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransformOrigin {
    public static final long b = TransformOriginKt.a(0.5f, 0.5f);
    public static final /* synthetic */ int c = 0;
    public final long a;

    public static final boolean a(long j, long j2) {
        if (j == j2) {
            return true;
        }
        return false;
    }

    public static String b(long j) {
        return "TransformOrigin(packedValue=" + j + ")";
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TransformOrigin) {
            if (this.a != ((TransformOrigin) obj).a) {
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
        return b(this.a);
    }
}
