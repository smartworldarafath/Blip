package kotlin;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UShort implements Comparable<UShort> {
    public final short j;

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(UShort uShort) {
        return Intrinsics.b(this.j & 65535, uShort.j & 65535);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof UShort) {
            if (this.j != ((UShort) obj).j) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Short.hashCode(this.j);
    }

    public final String toString() {
        return String.valueOf(this.j & 65535);
    }
}
