package com.google.common.collect;

import com.google.common.base.Preconditions;
import defpackage.k8;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractIndexedListIterator<E> extends UnmodifiableListIterator<E> {
    public final int j;
    public int k;

    public AbstractIndexedListIterator(int i, int i2) {
        Preconditions.k(i2, i);
        this.j = i;
        this.k = i2;
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
