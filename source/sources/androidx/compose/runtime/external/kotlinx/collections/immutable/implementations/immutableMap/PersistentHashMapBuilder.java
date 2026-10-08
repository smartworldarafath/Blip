package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import java.util.Map;
import kotlin.collections.AbstractMutableMap;
import kotlin.jvm.internal.markers.KMutableMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PersistentHashMapBuilder<K, V> extends AbstractMutableMap<K, V> implements Map, KMutableMap {
    public MutabilityOwnership j;
    public TrieNode k;
    public Object l;
    public int m;
    public int n;

    public final void a(int i) {
        this.n = i;
        this.m++;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.k = TrieNode.e;
        a(0);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        int i;
        TrieNode trieNode = this.k;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        return trieNode.d(i, 0, obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object obj) {
        int i;
        TrieNode trieNode = this.k;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        return trieNode.g(i, 0, obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        int i;
        this.l = null;
        TrieNode trieNode = this.k;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        this.k = trieNode.l(i, obj, obj2, 0, this);
        return this.l;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap] */
    /* JADX WARN: Type inference failed for: r3v0, types: [androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode] */
    /* JADX WARN: Type inference failed for: r6v1, types: [androidx.compose.runtime.external.kotlinx.collections.immutable.internal.DeltaCounter, java.lang.Object] */
    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap;
        PersistentHashMapBuilder persistentHashMapBuilder;
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap2 = null;
        if (map instanceof PersistentHashMap) {
            persistentCompositionLocalHashMap = (PersistentHashMap) map;
        } else {
            persistentCompositionLocalHashMap = null;
        }
        if (persistentCompositionLocalHashMap == null) {
            if (map instanceof PersistentHashMapBuilder) {
                persistentHashMapBuilder = (PersistentHashMapBuilder) map;
            } else {
                persistentHashMapBuilder = null;
            }
            if (persistentHashMapBuilder != null) {
                persistentCompositionLocalHashMap2 = ((PersistentCompositionLocalHashMap.Builder) persistentHashMapBuilder).b();
            }
        } else {
            persistentCompositionLocalHashMap2 = persistentCompositionLocalHashMap;
        }
        if (persistentCompositionLocalHashMap2 != null) {
            ?? obj = new Object();
            obj.a = 0;
            int i = this.n;
            ?? r3 = this.k;
            TrieNode trieNode = persistentCompositionLocalHashMap2.j;
            trieNode.getClass();
            this.k = r3.m(trieNode, 0, obj, this);
            int i2 = (persistentCompositionLocalHashMap2.k + i) - obj.a;
            if (i != i2) {
                a(i2);
                return;
            }
            return;
        }
        super.putAll(map);
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        int i;
        int i2 = this.n;
        TrieNode trieNode = this.k;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        TrieNode o = trieNode.o(i, obj, obj2, 0, this);
        if (o == null) {
            o = TrieNode.e;
        }
        this.k = o;
        if (i2 == this.n) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object obj) {
        this.l = null;
        TrieNode n = this.k.n(obj != null ? obj.hashCode() : 0, obj, 0, this);
        if (n == null) {
            n = TrieNode.e;
        }
        this.k = n;
        return this.l;
    }
}
