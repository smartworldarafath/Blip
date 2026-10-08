package androidx.collection;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SparseArrayKt$valueIterator$1 implements Iterator<Object>, KMappedMarker {
    public int j;
    public final /* synthetic */ SparseArrayCompat k;

    public SparseArrayKt$valueIterator$1(SparseArrayCompat sparseArrayCompat) {
        this.k = sparseArrayCompat;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.j < this.k.f()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.j;
        this.j = i + 1;
        return this.k.g(i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
