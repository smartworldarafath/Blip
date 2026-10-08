package kotlin;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UInt implements Comparable<UInt> {
    public final int j;

    @Override // java.lang.Comparable
    public final int compareTo(UInt uInt) {
        return Intrinsics.b(this.j ^ Integer.MIN_VALUE, uInt.j ^ Integer.MIN_VALUE);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof UInt) {
            if (this.j != ((UInt) obj).j) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.j);
    }

    public final String toString() {
        return String.valueOf(this.j & 4294967295L);
    }
}
