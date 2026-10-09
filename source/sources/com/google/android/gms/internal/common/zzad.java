package com.google.android.gms.internal.common;

import defpackage.u2;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zzad extends zzaa {
    public zzad() {
        this.a = new Object[4];
        this.b = 0;
    }

    public final void a(Object obj) {
        int i;
        obj.getClass();
        int length = this.a.length;
        int i2 = this.b;
        int i3 = i2 + 1;
        if (i3 >= 0) {
            if (i3 <= length) {
                i = length;
            } else {
                i = (length >> 1) + length + 1;
                if (i < i3) {
                    int highestOneBit = Integer.highestOneBit(i2);
                    i = highestOneBit + highestOneBit;
                }
                if (i < 0) {
                    i = Integer.MAX_VALUE;
                }
            }
            if (i > length || this.c) {
                this.a = Arrays.copyOf(this.a, i);
                this.c = false;
            }
            Object[] objArr = this.a;
            int i4 = this.b;
            this.b = i4 + 1;
            objArr[i4] = obj;
            return;
        }
        u2.g("cannot store more than Integer.MAX_VALUE elements");
    }

    public final zzah b() {
        this.c = true;
        return zzah.j(this.b, this.a);
    }
}
