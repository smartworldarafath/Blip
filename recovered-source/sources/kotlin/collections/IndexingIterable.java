package kotlin.collections;

import java.util.Iterator;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IndexingIterable<T> implements Iterable<IndexedValue<? extends T>>, KMappedMarker {
    public final Function0 j;

    public IndexingIterable(Function0 function0) {
        this.j = function0;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new IndexingIterator((Iterator) this.j.a());
    }
}
