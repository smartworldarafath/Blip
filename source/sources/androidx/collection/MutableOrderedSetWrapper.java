package androidx.collection;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutableOrderedSetWrapper<E> extends OrderedSetWrapper<E> implements Set<E>, KMutableSet {
    public final MutableOrderedScatterSet k;

    public MutableOrderedSetWrapper(MutableOrderedScatterSet mutableOrderedScatterSet) {
        super(mutableOrderedScatterSet);
        this.k = mutableOrderedScatterSet;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        return this.k.b(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        collection.getClass();
        MutableOrderedScatterSet mutableOrderedScatterSet = this.k;
        mutableOrderedScatterSet.getClass();
        int i = mutableOrderedScatterSet.g;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            mutableOrderedScatterSet.h(it.next());
        }
        if (i != mutableOrderedScatterSet.g) {
            return true;
        }
        return false;
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        this.k.d();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new MutableOrderedSetWrapper$iterator$1(this);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        return this.k.i(obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0083, code lost:
    
        r18 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x008c, code lost:
    
        if (((r9 & ((~r9) << 6)) & (-9187201950435737472L)) == 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008e, code lost:
    
        r15 = -1;
     */
    @Override // java.util.Set, java.util.Collection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean removeAll(Collection collection) {
        int i;
        int i2;
        int i3;
        collection.getClass();
        MutableOrderedScatterSet mutableOrderedScatterSet = this.k;
        mutableOrderedScatterSet.getClass();
        int i4 = mutableOrderedScatterSet.g;
        Iterator it = collection.iterator();
        while (true) {
            int i5 = 1;
            int i6 = 0;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (next != null) {
                i = next.hashCode();
            } else {
                i = 0;
            }
            int i7 = i * (-862048943);
            int i8 = i7 ^ (i7 << 16);
            int i9 = i8 & 127;
            int i10 = mutableOrderedScatterSet.f;
            int i11 = (i8 >>> 7) & i10;
            while (true) {
                long[] jArr = mutableOrderedScatterSet.a;
                int i12 = i11 >> 3;
                int i13 = (i11 & 7) << 3;
                long j = ((jArr[i12 + i5] << (64 - i13)) & ((-i13) >> 63)) | (jArr[i12] >>> i13);
                long j2 = (i9 * 72340172838076673L) ^ j;
                long j3 = (~j2) & (j2 - 72340172838076673L) & (-9187201950435737472L);
                while (true) {
                    if (j3 == 0) {
                        break;
                    }
                    i3 = ((Long.numberOfTrailingZeros(j3) >> 3) + i11) & i10;
                    int i14 = i5;
                    if (Intrinsics.a(mutableOrderedScatterSet.b[i3], next)) {
                        break;
                    }
                    j3 &= j3 - 1;
                    i5 = i14;
                }
                i6 += 8;
                i11 = (i11 + i6) & i10;
                i5 = i2;
            }
            if (i3 >= 0) {
                mutableOrderedScatterSet.j(i3);
            }
        }
        if (i4 != mutableOrderedScatterSet.g) {
            return true;
        }
        return false;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        return this.k.k(collection);
    }
}
