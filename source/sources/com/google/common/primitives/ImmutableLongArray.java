package com.google.common.primitives;

import com.google.common.base.Preconditions;
import java.io.Serializable;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ImmutableLongArray implements Serializable {
    public static final ImmutableLongArray l = new ImmutableLongArray(new long[0], 0);
    public final long[] j;
    public final int k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public long[] a;
        public int b;

        public final void a(long j) {
            int i = this.b;
            int i2 = i + 1;
            long[] jArr = this.a;
            if (i2 > jArr.length) {
                int length = jArr.length;
                if (i2 >= 0) {
                    int i3 = length + (length >> 1) + 1;
                    if (i3 < i2) {
                        i3 = Integer.highestOneBit(i) << 1;
                    }
                    if (i3 < 0) {
                        i3 = Integer.MAX_VALUE;
                    }
                    this.a = Arrays.copyOf(jArr, i3);
                } else {
                    throw new AssertionError("cannot store more than MAX_VALUE elements");
                }
            }
            long[] jArr2 = this.a;
            int i4 = this.b;
            jArr2[i4] = j;
            this.b = i4 + 1;
        }
    }

    public ImmutableLongArray(long[] jArr, int i) {
        this.j = jArr;
        this.k = i;
    }

    public final long a(int i) {
        Preconditions.h(i, this.k);
        return this.j[i];
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof ImmutableLongArray) {
                ImmutableLongArray immutableLongArray = (ImmutableLongArray) obj;
                int i = immutableLongArray.k;
                int i2 = this.k;
                if (i2 == i) {
                    for (int i3 = 0; i3 < i2; i3++) {
                        if (a(i3) == immutableLongArray.a(i3)) {
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
            i = (i * 31) + Longs.b(this.j[i2]);
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
        long[] jArr = this.j;
        sb.append(jArr[0]);
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(", ");
            sb.append(jArr[i2]);
        }
        sb.append(']');
        return sb.toString();
    }
}
