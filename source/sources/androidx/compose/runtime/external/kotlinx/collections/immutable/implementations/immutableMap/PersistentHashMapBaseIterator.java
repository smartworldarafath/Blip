package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import defpackage.k8;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PersistentHashMapBaseIterator<K, V, T> implements Iterator<T>, KMappedMarker {
    public final TrieNodeBaseIterator[] j;
    public int k;
    public boolean l = true;

    public PersistentHashMapBaseIterator(TrieNode trieNode, TrieNodeBaseIterator[] trieNodeBaseIteratorArr) {
        this.j = trieNodeBaseIteratorArr;
        trieNodeBaseIteratorArr[0].a(trieNode.d, Integer.bitCount(trieNode.a) * 2, 0);
        this.k = 0;
        a();
    }

    public final void a() {
        int i = this.k;
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = this.j;
        TrieNodeBaseIterator trieNodeBaseIterator = trieNodeBaseIteratorArr[i];
        if (trieNodeBaseIterator.l < trieNodeBaseIterator.k) {
            return;
        }
        while (-1 < i) {
            int b = b(i);
            if (b == -1) {
                TrieNodeBaseIterator trieNodeBaseIterator2 = trieNodeBaseIteratorArr[i];
                int i2 = trieNodeBaseIterator2.l;
                Object[] objArr = trieNodeBaseIterator2.j;
                if (i2 < objArr.length) {
                    int length = objArr.length;
                    trieNodeBaseIterator2.l = i2 + 1;
                    b = b(i);
                }
            }
            if (b != -1) {
                this.k = b;
                return;
            }
            if (i > 0) {
                TrieNodeBaseIterator trieNodeBaseIterator3 = trieNodeBaseIteratorArr[i - 1];
                int i3 = trieNodeBaseIterator3.l;
                int length2 = trieNodeBaseIterator3.j.length;
                trieNodeBaseIterator3.l = i3 + 1;
            }
            trieNodeBaseIteratorArr[i].a(TrieNode.e.d, 0, 0);
            i--;
        }
        this.l = false;
    }

    public final int b(int i) {
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = this.j;
        TrieNodeBaseIterator trieNodeBaseIterator = trieNodeBaseIteratorArr[i];
        int i2 = trieNodeBaseIterator.l;
        if (i2 < trieNodeBaseIterator.k) {
            return i;
        }
        Object[] objArr = trieNodeBaseIterator.j;
        if (i2 < objArr.length) {
            int length = objArr.length;
            Object obj = objArr[i2];
            obj.getClass();
            TrieNode trieNode = (TrieNode) obj;
            if (i == 6) {
                TrieNodeBaseIterator trieNodeBaseIterator2 = trieNodeBaseIteratorArr[i + 1];
                Object[] objArr2 = trieNode.d;
                trieNodeBaseIterator2.a(objArr2, objArr2.length, 0);
            } else {
                trieNodeBaseIteratorArr[i + 1].a(trieNode.d, Integer.bitCount(trieNode.a) * 2, 0);
            }
            return b(i + 1);
        }
        return -1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.l;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (this.l) {
            T next = this.j[this.k].next();
            a();
            return next;
        }
        k8.o();
        return null;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
