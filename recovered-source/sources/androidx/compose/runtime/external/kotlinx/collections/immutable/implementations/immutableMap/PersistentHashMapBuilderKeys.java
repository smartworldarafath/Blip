package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Iterator;
import java.util.Set;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.internal.markers.KMutableSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PersistentHashMapBuilderKeys<K, V> extends AbstractMutableSet<K> implements Set<K>, KMutableSet {
    public final PersistentHashMapBuilder j;

    public PersistentHashMapBuilderKeys(PersistentHashMapBuilder persistentHashMapBuilder) {
        this.j = persistentHashMapBuilder;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.collections.AbstractMutableSet
    public final int b() {
        PersistentHashMapBuilder persistentHashMapBuilder = this.j;
        persistentHashMapBuilder.getClass();
        return persistentHashMapBuilder.n;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.j.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.j.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
        for (int i = 0; i < 8; i++) {
            trieNodeBaseIteratorArr[i] = new TrieNodeBaseIterator();
        }
        return new PersistentHashMapBuilderBaseIterator(this.j, trieNodeBaseIteratorArr);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        PersistentHashMapBuilder persistentHashMapBuilder = this.j;
        if (persistentHashMapBuilder.containsKey(obj)) {
            persistentHashMapBuilder.remove(obj);
            return true;
        }
        return false;
    }
}
