package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import defpackage.k8;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PersistentVectorIterator<T> extends AbstractListIterator<T> {
    public final Object[] l;
    public final TrieIterator m;

    public PersistentVectorIterator(int i, int i2, int i3, Object[] objArr, Object[] objArr2) {
        super(i, i2);
        this.l = objArr2;
        int i4 = (i2 - 1) & (-32);
        this.m = new TrieIterator(objArr, i > i4 ? i4 : i, i4, i3);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            TrieIterator trieIterator = this.m;
            if (trieIterator.hasNext()) {
                this.j++;
                return trieIterator.next();
            }
            int i = this.j;
            this.j = i + 1;
            return this.l[i - trieIterator.k];
        }
        k8.o();
        return null;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            int i = this.j;
            TrieIterator trieIterator = this.m;
            int i2 = trieIterator.k;
            if (i > i2) {
                int i3 = i - 1;
                this.j = i3;
                return this.l[i3 - i2];
            }
            this.j = i - 1;
            return trieIterator.previous();
        }
        k8.o();
        return null;
    }
}
