package androidx.compose.foundation.lazy.grid;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GridItemSpan {
    public final long a;

    public final boolean equals(Object obj) {
        if (obj instanceof GridItemSpan) {
            if (this.a != ((GridItemSpan) obj).a) {
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
        return "GridItemSpan(packedValue=" + this.a + ")";
    }
}
