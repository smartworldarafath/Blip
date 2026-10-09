package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import defpackage.k8;
import defpackage.u2;
import io.sentry.d;
import java.util.Iterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class PersistentHashMapBuilderBaseIterator<K, V, T> extends PersistentHashMapBaseIterator<K, V, T> implements Iterator<T>, KMappedMarker {
    public final PersistentHashMapBuilder m;
    public Object n;
    public boolean o;
    public int p;

    public PersistentHashMapBuilderBaseIterator(PersistentHashMapBuilder persistentHashMapBuilder, TrieNodeBaseIterator[] trieNodeBaseIteratorArr) {
        super(persistentHashMapBuilder.k, trieNodeBaseIteratorArr);
        this.m = persistentHashMapBuilder;
        this.p = persistentHashMapBuilder.m;
    }

    public final void c(int i, TrieNode trieNode, Object obj, int i2) {
        int i3 = i2 * 5;
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = this.j;
        if (i3 > 30) {
            TrieNodeBaseIterator trieNodeBaseIterator = trieNodeBaseIteratorArr[i2];
            Object[] objArr = trieNode.d;
            trieNodeBaseIterator.a(objArr, objArr.length, 0);
            while (true) {
                TrieNodeBaseIterator trieNodeBaseIterator2 = trieNodeBaseIteratorArr[i2];
                if (!Intrinsics.a(trieNodeBaseIterator2.j[trieNodeBaseIterator2.l], obj)) {
                    trieNodeBaseIteratorArr[i2].l += 2;
                } else {
                    this.k = i2;
                    return;
                }
            }
        } else {
            int d = 1 << TrieNodeKt.d(i, i3);
            if (trieNode.h(d)) {
                trieNodeBaseIteratorArr[i2].a(trieNode.d, Integer.bitCount(trieNode.a) * 2, trieNode.f(d));
                this.k = i2;
            } else {
                int t = trieNode.t(d);
                TrieNode s = trieNode.s(t);
                trieNodeBaseIteratorArr[i2].a(trieNode.d, Integer.bitCount(trieNode.a) * 2, t);
                c(i, s, obj, i2 + 1);
            }
        }
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBaseIterator, java.util.Iterator
    public final Object next() {
        if (this.m.m == this.p) {
            if (this.l) {
                TrieNodeBaseIterator trieNodeBaseIterator = this.j[this.k];
                this.n = trieNodeBaseIterator.j[trieNodeBaseIterator.l];
                this.o = true;
                return super.next();
            }
            k8.o();
            return null;
        }
        u2.d();
        return null;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBaseIterator, java.util.Iterator
    public final void remove() {
        int i;
        if (this.o) {
            boolean z = this.l;
            PersistentHashMapBuilder persistentHashMapBuilder = this.m;
            if (z) {
                if (z) {
                    TrieNodeBaseIterator trieNodeBaseIterator = this.j[this.k];
                    Object obj = trieNodeBaseIterator.j[trieNodeBaseIterator.l];
                    TypeIntrinsics.b(persistentHashMapBuilder).remove(this.n);
                    if (obj != null) {
                        i = obj.hashCode();
                    } else {
                        i = 0;
                    }
                    c(i, persistentHashMapBuilder.k, obj, 0);
                } else {
                    k8.o();
                    return;
                }
            } else {
                TypeIntrinsics.b(persistentHashMapBuilder).remove(this.n);
            }
            this.n = null;
            this.o = false;
            this.p = persistentHashMapBuilder.m;
            return;
        }
        d.d();
    }
}
