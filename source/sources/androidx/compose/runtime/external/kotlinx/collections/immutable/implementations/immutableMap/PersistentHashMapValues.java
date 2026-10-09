package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.AbstractCollection;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PersistentHashMapValues<K, V> extends AbstractCollection<V> implements Collection, KMappedMarker {
    public final PersistentHashMap j;

    public PersistentHashMapValues(PersistentHashMap persistentHashMap) {
        this.j = persistentHashMap;
    }

    @Override // kotlin.collections.AbstractCollection
    public final int b() {
        PersistentHashMap persistentHashMap = this.j;
        persistentHashMap.getClass();
        return persistentHashMap.k;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return this.j.containsValue(obj);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        TrieNode trieNode = this.j.j;
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
        for (int i = 0; i < 8; i++) {
            trieNodeBaseIteratorArr[i] = new TrieNodeBaseIterator();
        }
        return new PersistentHashMapBaseIterator(trieNode, trieNodeBaseIteratorArr);
    }
}
