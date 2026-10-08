package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import defpackage.k8;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SingleElementListIterator<E> extends AbstractListIterator<E> {
    public final Object l;

    public SingleElementListIterator(int i, Object obj) {
        super(i, 1);
        this.l = obj;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            this.j++;
            return this.l;
        }
        k8.o();
        return null;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            this.j--;
            return this.l;
        }
        k8.o();
        return null;
    }
}
