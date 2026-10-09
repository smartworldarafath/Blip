package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import defpackage.k8;
import java.util.Map;
import kotlin.jvm.internal.markers.KMutableMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class MutableMapEntry<K, V> extends MapEntry<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {
    public final PersistentHashMapBuilderEntriesIterator l;
    public Object m;

    public MutableMapEntry(PersistentHashMapBuilderEntriesIterator persistentHashMapBuilderEntriesIterator, Object obj, Object obj2) {
        super(obj, obj2);
        this.l = persistentHashMapBuilderEntriesIterator;
        this.m = obj2;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry, java.util.Map.Entry
    public final Object getValue() {
        return this.m;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.MapEntry, java.util.Map.Entry
    public final Object setValue(Object obj) {
        int i;
        Object obj2 = this.m;
        this.m = obj;
        PersistentHashMapBuilderBaseIterator persistentHashMapBuilderBaseIterator = this.l.j;
        PersistentHashMapBuilder persistentHashMapBuilder = persistentHashMapBuilderBaseIterator.m;
        Object obj3 = this.j;
        if (!persistentHashMapBuilder.containsKey(obj3)) {
            return obj2;
        }
        boolean z = persistentHashMapBuilderBaseIterator.l;
        if (z) {
            if (z) {
                TrieNodeBaseIterator trieNodeBaseIterator = persistentHashMapBuilderBaseIterator.j[persistentHashMapBuilderBaseIterator.k];
                Object obj4 = trieNodeBaseIterator.j[trieNodeBaseIterator.l];
                persistentHashMapBuilder.put(obj3, obj);
                if (obj4 != null) {
                    i = obj4.hashCode();
                } else {
                    i = 0;
                }
                persistentHashMapBuilderBaseIterator.c(i, persistentHashMapBuilder.k, obj4, 0);
            } else {
                k8.o();
                return null;
            }
        } else {
            persistentHashMapBuilder.put(obj3, obj);
        }
        persistentHashMapBuilderBaseIterator.p = persistentHashMapBuilder.m;
        return obj2;
    }
}
