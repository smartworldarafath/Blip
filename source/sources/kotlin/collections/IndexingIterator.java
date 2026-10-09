package kotlin.collections;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IndexingIterator<T> implements Iterator<IndexedValue<? extends T>>, KMappedMarker {
    public final Iterator j;
    public int k;

    public IndexingIterator(Iterator it) {
        it.getClass();
        this.j = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.j.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i = this.k;
        this.k = i + 1;
        if (i >= 0) {
            return new IndexedValue(i, this.j.next());
        }
        CollectionsKt.T();
        throw null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
