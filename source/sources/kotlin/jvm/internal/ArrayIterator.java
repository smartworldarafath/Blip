package kotlin.jvm.internal;

import defpackage.fe;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ArrayIterator<T> implements Iterator<T>, KMappedMarker {
    public final Object[] j;
    public int k;

    public ArrayIterator(Object[] objArr) {
        objArr.getClass();
        this.j = objArr;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.k < this.j.length) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        try {
            Object[] objArr = this.j;
            int i = this.k;
            this.k = i + 1;
            return objArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.k--;
            fe.o(e.getMessage());
            return null;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
