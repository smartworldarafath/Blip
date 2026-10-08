package com.google.common.collect;

import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class TransformedIterator<F, T> implements Iterator<T> {
    public final Iterator j;

    public TransformedIterator(Iterator it) {
        it.getClass();
        this.j = it;
    }

    public abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.j.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return a(this.j.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.j.remove();
    }
}
