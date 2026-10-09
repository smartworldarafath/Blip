package androidx.collection;

import defpackage.u2;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class IntList {
    public int[] a;
    public int b;

    public final int a(int i) {
        if (i >= 0 && i < this.b) {
            return this.a[i];
        }
        u2.o("Index must be between 0 and size");
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof IntList) {
            IntList intList = (IntList) obj;
            int i = intList.b;
            int i2 = this.b;
            if (i == i2) {
                int[] iArr = this.a;
                int[] iArr2 = intList.a;
                IntRange j = RangesKt.j(0, i2);
                int i3 = j.j;
                int i4 = j.k;
                if (i3 <= i4) {
                    while (iArr[i3] == iArr2[i3]) {
                        if (i3 != i4) {
                            i3++;
                        } else {
                            return true;
                        }
                    }
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int[] iArr = this.a;
        int i = this.b;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += Integer.hashCode(iArr[i3]) * 31;
        }
        return i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "[");
        int[] iArr = this.a;
        int i = this.b;
        int i2 = 0;
        while (true) {
            if (i2 < i) {
                int i3 = iArr[i2];
                if (i2 == -1) {
                    sb.append((CharSequence) "...");
                    break;
                }
                if (i2 != 0) {
                    sb.append((CharSequence) ", ");
                }
                sb.append(i3);
                i2++;
            } else {
                sb.append((CharSequence) "]");
                break;
            }
        }
        return sb.toString();
    }
}
