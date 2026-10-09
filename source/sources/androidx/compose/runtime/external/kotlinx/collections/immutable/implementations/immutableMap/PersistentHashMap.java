package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.Links;
import java.util.Map;
import kotlin.collections.AbstractMap;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class PersistentHashMap<K, V> extends AbstractMap<K, V> implements Map, KMappedMarker {
    public static final PersistentHashMap l = new PersistentHashMap(TrieNode.e, 0);
    public final TrieNode j;
    public final int k;

    public PersistentHashMap(TrieNode trieNode, int i) {
        this.j = trieNode;
        this.k = i;
    }

    public final PersistentHashMap a(Object obj, Links links) {
        int i;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        TrieNode.ModificationResult u = this.j.u(i, 0, obj, links);
        if (u == null) {
            return this;
        }
        return new PersistentHashMap(u.a, this.k + u.b);
    }

    @Override // java.util.Map
    public boolean containsKey(Object obj) {
        int i;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        return this.j.d(i, 0, obj);
    }

    @Override // java.util.Map
    public Object get(Object obj) {
        int i;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        return this.j.g(i, 0, obj);
    }
}
