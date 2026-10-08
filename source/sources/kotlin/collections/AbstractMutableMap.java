package kotlin.collections;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilderEntries;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilderKeys;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilderValues;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.markers.KMutableMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractMutableMap<K, V> extends java.util.AbstractMap<K, V> implements Map<K, V>, KMutableMap {
    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        return new PersistentHashMapBuilderEntries((PersistentHashMapBuilder) this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        return new PersistentHashMapBuilderKeys((PersistentHashMapBuilder) this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return ((PersistentHashMapBuilder) this).n;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        return new PersistentHashMapBuilderValues((PersistentHashMapBuilder) this);
    }
}
