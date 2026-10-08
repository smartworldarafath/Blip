package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder;
import defpackage.u2;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SubList<T> implements List<T>, KMutableCollection {
    public final SnapshotStateList j;
    public final int k;
    public int l;
    public int m;

    public SubList(SnapshotStateList snapshotStateList, int i, int i2) {
        this.j = snapshotStateList;
        this.k = i;
        this.l = SnapshotStateListKt.d(snapshotStateList);
        this.m = i2 - i;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean add(Object obj) {
        b();
        int i = this.k + this.m;
        SnapshotStateList snapshotStateList = this.j;
        snapshotStateList.add(i, obj);
        this.m++;
        this.l = SnapshotStateListKt.d(snapshotStateList);
        return true;
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        b();
        int i2 = i + this.k;
        SnapshotStateList snapshotStateList = this.j;
        boolean addAll = snapshotStateList.addAll(i2, collection);
        if (addAll) {
            this.m = collection.size() + this.m;
            this.l = SnapshotStateListKt.d(snapshotStateList);
        }
        return addAll;
    }

    public final void b() {
        if (SnapshotStateListKt.d(this.j) == this.l) {
            return;
        }
        u2.d();
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        if (this.m > 0) {
            b();
            int i = this.m;
            int i2 = this.k;
            SnapshotStateList snapshotStateList = this.j;
            snapshotStateList.d(i2, i + i2);
            this.m = 0;
            this.l = SnapshotStateListKt.d(snapshotStateList);
        }
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        if (indexOf(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Collection collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection2.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List
    public final Object get(int i) {
        b();
        SnapshotStateListKt.a(i, this.m);
        return this.j.get(this.k + i);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        b();
        int i = this.m;
        int i2 = this.k;
        Iterator<Integer> it = RangesKt.j(i2, i + i2).iterator();
        while (((IntProgressionIterator) it).l) {
            int nextInt = ((IntIterator) it).nextInt();
            if (Intrinsics.a(obj, this.j.get(nextInt))) {
                return nextInt - i2;
            }
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        if (this.m == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        b();
        int i = this.m;
        int i2 = this.k;
        for (int i3 = (i + i2) - 1; i3 >= i2; i3--) {
            if (Intrinsics.a(obj, this.j.get(i3))) {
                return i3 - i2;
            }
        }
        return -1;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        b();
        ?? obj = new Object();
        obj.j = i - 1;
        return new SubList$listIterator$1(obj, this);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        b();
        int i2 = this.k + i;
        SnapshotStateList snapshotStateList = this.j;
        Object remove = snapshotStateList.remove(i2);
        this.m--;
        this.l = SnapshotStateListKt.d(snapshotStateList);
        return remove;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection collection) {
        Iterator it = collection.iterator();
        while (true) {
            boolean z = false;
            while (it.hasNext()) {
                if (remove(it.next()) || z) {
                    z = true;
                }
            }
            return z;
        }
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection collection) {
        int i;
        PersistentList persistentList;
        Snapshot i2;
        boolean b;
        b();
        SnapshotStateList snapshotStateList = this.j;
        int i3 = this.k;
        int i4 = this.m + i3;
        int size = snapshotStateList.size();
        do {
            synchronized (SnapshotStateListKt.a) {
                StateListStateRecord stateListStateRecord = snapshotStateList.j;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.c;
            }
            persistentList.getClass();
            PersistentVectorBuilder builder = persistentList.builder();
            builder.subList(i3, i4).retainAll(collection);
            PersistentList d = builder.d();
            if (Intrinsics.a(d, persistentList)) {
                break;
            }
            StateListStateRecord stateListStateRecord3 = snapshotStateList.j;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.c) {
                i2 = SnapshotKt.i();
                b = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, snapshotStateList, i2), i, d, true);
            }
            SnapshotKt.m(i2, snapshotStateList);
        } while (!b);
        int size2 = size - snapshotStateList.size();
        if (size2 > 0) {
            this.l = SnapshotStateListKt.d(this.j);
            this.m -= size2;
        }
        if (size2 > 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        SnapshotStateListKt.a(i, this.m);
        b();
        int i2 = i + this.k;
        SnapshotStateList snapshotStateList = this.j;
        Object obj2 = snapshotStateList.set(i2, obj);
        this.l = SnapshotStateListKt.d(snapshotStateList);
        return obj2;
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return this.m;
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        if (i < 0 || i > i2 || i2 > this.m) {
            PreconditionsKt.a("fromIndex or toIndex are out of bounds");
        }
        b();
        int i3 = this.k;
        return new SubList(this.j, i + i3, i2 + i3);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        return CollectionToArray.a(this);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf < 0) {
            return false;
        }
        remove(indexOf);
        return true;
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        b();
        int i2 = this.k + i;
        SnapshotStateList snapshotStateList = this.j;
        snapshotStateList.add(i2, obj);
        this.m++;
        this.l = SnapshotStateListKt.d(snapshotStateList);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection collection) {
        return addAll(this.m, collection);
    }
}
