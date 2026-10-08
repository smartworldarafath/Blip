package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet;

import defpackage.k8;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class PersistentOrderedSetIterator<E> implements Iterator<E>, KMappedMarker {
    public Object j;
    public final Map k;
    public int l;

    public PersistentOrderedSetIterator(Object obj, Map map) {
        this.j = obj;
        this.k = map;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.l < this.k.size()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            Object obj = this.j;
            this.l++;
            Object obj2 = this.k.get(obj);
            if (obj2 != null) {
                this.j = ((Links) obj2).b;
                return obj;
            }
            throw new ConcurrentModificationException("Hash code of an element (" + obj + ") has changed after it was added to the persistent set.");
        }
        k8.o();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
