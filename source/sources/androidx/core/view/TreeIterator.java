package androidx.core.view;

import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TreeIterator<T> implements Iterator<T>, KMappedMarker {
    public final ArrayList j = new ArrayList();
    public Iterator k;

    public TreeIterator(Iterator it) {
        this.k = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.k.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object next = this.k.next();
        Iterator it = (Iterator) ViewGroupKt$descendants$1$1.j.b(next);
        ArrayList arrayList = this.j;
        if (it != null && it.hasNext()) {
            arrayList.add(this.k);
            this.k = it;
            return next;
        }
        while (!this.k.hasNext() && !arrayList.isEmpty()) {
            this.k = (Iterator) CollectionsKt.z(arrayList);
            CollectionsKt.L(arrayList);
        }
        return next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
