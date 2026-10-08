package com.google.android.gms.internal.common;

import defpackage.k8;
import defpackage.u2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class zzz extends zzal {
    public final int j;
    public int k;

    public zzz(int i, int i2) {
        if (i2 >= 0 && i2 <= i) {
            this.j = i;
            this.k = i2;
        } else {
            u2.o(zzr.c("index", i2, i));
            throw null;
        }
    }

    public abstract Object a(int i);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        if (this.k < this.j) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        if (this.k > 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (hasNext()) {
            int i = this.k;
            this.k = i + 1;
            return a(i);
        }
        k8.o();
        return null;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.k;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            int i = this.k - 1;
            this.k = i;
            return a(i);
        }
        k8.o();
        return null;
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.k - 1;
    }
}
