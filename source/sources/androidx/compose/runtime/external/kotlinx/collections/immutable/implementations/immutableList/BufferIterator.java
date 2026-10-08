package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import defpackage.k8;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BufferIterator<T> extends AbstractListIterator<T> {
    public final Object[] l;

    public BufferIterator(Object[] objArr, int i, int i2) {
        super(i, i2);
        this.l = objArr;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            int i = this.j;
            this.j = i + 1;
            return this.l[i];
        }
        k8.o();
        return null;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            int i = this.j - 1;
            this.j = i;
            return this.l[i];
        }
        k8.o();
        return null;
    }
}
