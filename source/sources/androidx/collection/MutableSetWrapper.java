package androidx.collection;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.markers.KMutableSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class MutableSetWrapper<E> extends SetWrapper<E> implements Set<E>, KMutableSet {
    public final MutableScatterSet k;

    public MutableSetWrapper(MutableScatterSet mutableScatterSet) {
        super(mutableScatterSet);
        this.k = mutableScatterSet;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        return this.k.d(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        collection.getClass();
        MutableScatterSet mutableScatterSet = this.k;
        mutableScatterSet.getClass();
        int i = mutableScatterSet.d;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            mutableScatterSet.l(it.next());
        }
        if (i != mutableScatterSet.d) {
            return true;
        }
        return false;
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        this.k.f();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new MutableSetWrapper$iterator$1(this);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        return this.k.m(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        collection.getClass();
        MutableScatterSet mutableScatterSet = this.k;
        mutableScatterSet.getClass();
        int i = mutableScatterSet.d;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            mutableScatterSet.j(it.next());
        }
        if (i != mutableScatterSet.d) {
            return true;
        }
        return false;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        MutableScatterSet mutableScatterSet = this.k;
        mutableScatterSet.getClass();
        Object[] objArr = mutableScatterSet.b;
        int i = mutableScatterSet.d;
        long[] jArr = mutableScatterSet.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i2 = 0;
            while (true) {
                long j = jArr[i2];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i3 = 8 - ((~(i2 - length)) >>> 31);
                    for (int i4 = 0; i4 < i3; i4++) {
                        if ((255 & j) < 128) {
                            int i5 = (i2 << 3) + i4;
                            if (!CollectionsKt.n(collection, objArr[i5])) {
                                mutableScatterSet.n(i5);
                            }
                        }
                        j >>= 8;
                    }
                    if (i3 != 8) {
                        break;
                    }
                }
                if (i2 == length) {
                    break;
                }
                i2++;
            }
        }
        if (i == mutableScatterSet.d) {
            return false;
        }
        return true;
    }
}
