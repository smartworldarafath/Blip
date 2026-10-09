package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Iterator;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PersistentHashMapBuilderEntries<K, V> extends AbstractMapBuilderEntries<Map.Entry<K, V>, K, V> {
    public final PersistentHashMapBuilder j;

    public PersistentHashMapBuilderEntries(PersistentHashMapBuilder persistentHashMapBuilder) {
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

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new PersistentHashMapBuilderEntriesIterator(this.j);
    }
}
