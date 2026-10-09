package com.google.common.primitives;

import com.google.common.base.Preconditions;
import java.io.Serializable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ImmutableIntArray implements Serializable {
    public static final ImmutableIntArray l = new ImmutableIntArray(new int[0], 0);
    public final int[] j;
    public final int k;

    public ImmutableIntArray(int[] iArr, int i) {
        this.j = iArr;
        this.k = i;
    }

    public static ImmutableIntArray b(int... iArr) {
        boolean z;
        if (iArr.length <= 2147483646) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.d("the total number of elements must fit in an int", z);
        int length = iArr.length + 1;
        int[] iArr2 = new int[length];
        iArr2[0] = 0;
        System.arraycopy(iArr, 0, iArr2, 1, iArr.length);
        return new ImmutableIntArray(iArr2, length);
    }

    public final int a(int i) {
        Preconditions.h(i, this.k);
        return this.j[i];
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof ImmutableIntArray) {
                ImmutableIntArray immutableIntArray = (ImmutableIntArray) obj;
                int i = immutableIntArray.k;
                int i2 = this.k;
                if (i2 == i) {
                    for (int i3 = 0; i3 < i2; i3++) {
                        if (a(i3) == immutableIntArray.a(i3)) {
                        }
                    }
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.k; i2++) {
            i = (i * 31) + this.j[i2];
        }
        return i;
    }

    public final String toString() {
        int i = this.k;
        if (i == 0) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(i * 5);
        sb.append('[');
        int[] iArr = this.j;
        sb.append(iArr[0]);
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(", ");
            sb.append(iArr[i2]);
        }
        sb.append(']');
        return sb.toString();
    }
}
