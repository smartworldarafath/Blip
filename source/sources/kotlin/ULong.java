package kotlin;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ULong implements Comparable<ULong> {
    public final long j;

    public static String a(long j) {
        if (j >= 0) {
            CharsKt.b(10);
            String l = Long.toString(j, 10);
            l.getClass();
            return l;
        }
        long j2 = ((j >>> 1) / 10) << 1;
        long j3 = j - (j2 * 10);
        if (j3 >= 10) {
            j3 -= 10;
            j2++;
        }
        CharsKt.b(10);
        String l2 = Long.toString(j2, 10);
        l2.getClass();
        CharsKt.b(10);
        String l3 = Long.toString(j3, 10);
        l3.getClass();
        return l2.concat(l3);
    }

    @Override // java.lang.Comparable
    public final int compareTo(ULong uLong) {
        return Intrinsics.c(this.j ^ Long.MIN_VALUE, uLong.j ^ Long.MIN_VALUE);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ULong) {
            if (this.j != ((ULong) obj).j) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.j);
    }

    public final String toString() {
        return a(this.j);
    }
}
