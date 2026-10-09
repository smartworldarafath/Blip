package kotlin;

import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UByte implements Comparable<UByte> {
    public final byte j;

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(UByte uByte) {
        return Intrinsics.b(this.j & 255, uByte.j & 255);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof UByte) {
            if (this.j != ((UByte) obj).j) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Byte.hashCode(this.j);
    }

    public final String toString() {
        return String.valueOf(this.j & 255);
    }
}
