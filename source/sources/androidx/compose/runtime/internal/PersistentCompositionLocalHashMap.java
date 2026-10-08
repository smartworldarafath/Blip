package androidx.compose.runtime.internal;

import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.ValueHolder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode;
import java.util.Map;
import kotlin.jvm.internal.markers.KMutableMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PersistentCompositionLocalHashMap extends PersistentHashMap<CompositionLocal<Object>, ValueHolder<Object>> implements PersistentCompositionLocalMap {
    public static final PersistentCompositionLocalHashMap m = new PersistentHashMap(TrieNode.e, 0);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder extends PersistentHashMapBuilder<CompositionLocal<Object>, ValueHolder<Object>> implements Map, KMutableMap {
        public PersistentCompositionLocalHashMap o;

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership, java.lang.Object] */
        public Builder(PersistentCompositionLocalHashMap persistentCompositionLocalHashMap) {
            this.j = new Object();
            this.k = persistentCompositionLocalHashMap.j;
            this.n = persistentCompositionLocalHashMap.k;
            this.o = persistentCompositionLocalHashMap;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v2, types: [androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap] */
        public final PersistentCompositionLocalHashMap b() {
            TrieNode trieNode = this.k;
            PersistentCompositionLocalHashMap persistentCompositionLocalHashMap = this.o;
            TrieNode trieNode2 = persistentCompositionLocalHashMap.j;
            PersistentCompositionLocalHashMap persistentCompositionLocalHashMap2 = persistentCompositionLocalHashMap;
            if (trieNode != trieNode2) {
                this.j = new Object();
                persistentCompositionLocalHashMap2 = new PersistentHashMap(this.k, this.n);
            }
            this.o = persistentCompositionLocalHashMap2;
            return persistentCompositionLocalHashMap2;
        }

        @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsKey(Object obj) {
            if (!(obj instanceof CompositionLocal)) {
                return false;
            }
            return super.containsKey((CompositionLocal) obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final /* bridge */ boolean containsValue(Object obj) {
            if (!(obj instanceof ValueHolder)) {
                return false;
            }
            return super.containsValue((ValueHolder) obj);
        }

        @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Object get(Object obj) {
            if (!(obj instanceof CompositionLocal)) {
                return null;
            }
            return (ValueHolder) super.get((CompositionLocal) obj);
        }

        @Override // java.util.Map
        public final /* bridge */ Object getOrDefault(Object obj, Object obj2) {
            if (!(obj instanceof CompositionLocal)) {
                return obj2;
            }
            return (ValueHolder) super.getOrDefault((CompositionLocal) obj, (ValueHolder) obj2);
        }

        @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder, java.util.AbstractMap, java.util.Map
        public final /* bridge */ Object remove(Object obj) {
            if (!(obj instanceof CompositionLocal)) {
                return null;
            }
            return (ValueHolder) super.remove((CompositionLocal) obj);
        }
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.runtime.internal.PersistentCompositionLocalHashMap, androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap] */
    public final PersistentCompositionLocalHashMap b(CompositionLocal compositionLocal, ValueHolder valueHolder) {
        TrieNode.ModificationResult u = this.j.u(compositionLocal.hashCode(), 0, compositionLocal, valueHolder);
        if (u == null) {
            return this;
        }
        return new PersistentHashMap(u.a, this.k + u.b);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap, java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (!(obj instanceof CompositionLocal)) {
            return false;
        }
        return super.containsKey((CompositionLocal) obj);
    }

    @Override // kotlin.collections.AbstractMap, java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (!(obj instanceof ValueHolder)) {
            return false;
        }
        return super.containsValue((ValueHolder) obj);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap, java.util.Map
    public final /* bridge */ Object get(Object obj) {
        if (!(obj instanceof CompositionLocal)) {
            return null;
        }
        return (ValueHolder) super.get((CompositionLocal) obj);
    }

    @Override // java.util.Map
    public final /* bridge */ Object getOrDefault(Object obj, Object obj2) {
        if (!(obj instanceof CompositionLocal)) {
            return obj2;
        }
        return (ValueHolder) super.getOrDefault((CompositionLocal) obj, (ValueHolder) obj2);
    }
}
