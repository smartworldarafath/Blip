package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PersistentHashMapBuilderEntriesIterator<K, V> implements Iterator<Map.Entry<K, V>>, KMappedMarker {
    public final PersistentHashMapBuilderBaseIterator j;

    public PersistentHashMapBuilderEntriesIterator(PersistentHashMapBuilder persistentHashMapBuilder) {
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
        for (int i = 0; i < 8; i++) {
            trieNodeBaseIteratorArr[i] = new TrieNodeMutableEntriesIterator(this);
        }
        this.j = new PersistentHashMapBuilderBaseIterator(persistentHashMapBuilder, trieNodeBaseIteratorArr);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.j.l;
    }

    @Override // java.util.Iterator
    public final Object next() {
        return (Map.Entry) this.j.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.j.remove();
    }
}
