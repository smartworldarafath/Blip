package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.collections.AbstractSet;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PersistentHashMapEntries<K, V> extends AbstractSet<Map.Entry<? extends K, ? extends V>> implements Set, Collection, KMappedMarker {
    public final PersistentHashMap j;

    public PersistentHashMapEntries(PersistentHashMap persistentHashMap) {
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
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        PersistentHashMap persistentHashMap = this.j;
        Object obj2 = persistentHashMap.get(key);
        if (obj2 != null) {
            return obj2.equals(entry.getValue());
        }
        if (entry.getValue() != null || !persistentHashMap.containsKey(entry.getKey())) {
            return false;
        }
        return true;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        TrieNode trieNode = this.j.j;
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
        for (int i = 0; i < 8; i++) {
            trieNodeBaseIteratorArr[i] = new TrieNodeBaseIterator();
        }
        return new PersistentHashMapBaseIterator(trieNode, trieNodeBaseIteratorArr);
    }
}
