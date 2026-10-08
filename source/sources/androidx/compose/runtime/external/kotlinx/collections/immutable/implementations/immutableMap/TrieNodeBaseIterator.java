package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TrieNodeBaseIterator<K, V, T> implements Iterator<T>, KMappedMarker {
    public Object[] j = TrieNode.e.d;
    public int k;
    public int l;

    public final void a(Object[] objArr, int i, int i2) {
        this.j = objArr;
        this.k = i;
        this.l = i2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.l < this.k) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
