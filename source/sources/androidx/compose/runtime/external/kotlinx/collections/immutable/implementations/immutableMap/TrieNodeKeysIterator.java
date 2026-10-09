package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TrieNodeKeysIterator<K, V> extends TrieNodeBaseIterator<K, V, K> {
    @Override // java.util.Iterator
    public final Object next() {
        int i = this.l;
        this.l = i + 2;
        return this.j[i];
    }
}
