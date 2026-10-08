package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Map;
import java.util.Map.Entry;
import kotlin.collections.AbstractMutableSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractMapBuilderEntries<E extends Map.Entry<? extends K, ? extends V>, K, V> extends AbstractMutableSet<E> {
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        PersistentHashMapBuilder persistentHashMapBuilder = ((PersistentHashMapBuilderEntries) this).j;
        Object obj2 = persistentHashMapBuilder.get(key);
        if (obj2 != null) {
            return obj2.equals(entry.getValue());
        }
        if (entry.getValue() != null || !persistentHashMapBuilder.containsKey(entry.getKey())) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return ((PersistentHashMapBuilderEntries) this).j.remove(entry.getKey(), entry.getValue());
    }
}
