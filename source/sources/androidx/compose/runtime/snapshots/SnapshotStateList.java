package androidx.compose.runtime.snapshots;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.SmallPersistentVector;
import defpackage.g;
import defpackage.o8;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableCollection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class SnapshotStateList<T> implements Parcelable, StateObject, List<T>, RandomAccess, KMutableCollection {
    public static final Parcelable.Creator<SnapshotStateList<Object>> CREATOR = new Object();
    public StateListStateRecord j;

    public SnapshotStateList(PersistentList persistentList) {
        Snapshot i = SnapshotKt.i();
        StateListStateRecord stateListStateRecord = new StateListStateRecord(i.g(), persistentList);
        if (!(i instanceof GlobalSnapshot)) {
            stateListStateRecord.b = new StateListStateRecord(1L, persistentList);
        }
        this.j = stateListStateRecord;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean add(Object obj) {
        int i;
        PersistentList persistentList;
        Snapshot i2;
        boolean b;
        do {
            synchronized (SnapshotStateListKt.a) {
                StateListStateRecord stateListStateRecord = this.j;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.c;
            }
            persistentList.getClass();
            PersistentList add = persistentList.add(obj);
            if (add.equals(persistentList)) {
                return false;
            }
            StateListStateRecord stateListStateRecord3 = this.j;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.c) {
                i2 = SnapshotKt.i();
                b = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, this, i2), i, add, true);
            }
            SnapshotKt.m(i2, this);
        } while (!b);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection collection) {
        int i;
        PersistentList persistentList;
        Snapshot i2;
        boolean b;
        do {
            synchronized (SnapshotStateListKt.a) {
                StateListStateRecord stateListStateRecord = this.j;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.c;
            }
            persistentList.getClass();
            PersistentList addAll = persistentList.addAll(collection);
            if (Intrinsics.a(addAll, persistentList)) {
                return false;
            }
            StateListStateRecord stateListStateRecord3 = this.j;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.c) {
                i2 = SnapshotKt.i();
                b = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, this, i2), i, addAll, true);
            }
            SnapshotKt.m(i2, this);
        } while (!b);
        return true;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void b(StateRecord stateRecord) {
        stateRecord.b = this.j;
        this.j = (StateListStateRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord c() {
        return this.j;
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        Snapshot i;
        StateListStateRecord stateListStateRecord = this.j;
        stateListStateRecord.getClass();
        synchronized (SnapshotKt.c) {
            i = SnapshotKt.i();
            StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.v(stateListStateRecord, this, i);
            synchronized (SnapshotStateListKt.a) {
                stateListStateRecord2.c = SmallPersistentVector.k;
                stateListStateRecord2.d++;
                stateListStateRecord2.e++;
            }
        }
        SnapshotKt.m(i, this);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        return SnapshotStateListKt.c(this).c.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection collection) {
        return SnapshotStateListKt.c(this).c.containsAll(collection);
    }

    public final void d(int i, int i2) {
        int i3;
        PersistentList persistentList;
        Snapshot i4;
        boolean b;
        do {
            synchronized (SnapshotStateListKt.a) {
                StateListStateRecord stateListStateRecord = this.j;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i3 = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.c;
            }
            persistentList.getClass();
            PersistentVectorBuilder builder = persistentList.builder();
            builder.subList(i, i2).clear();
            PersistentList d = builder.d();
            if (!Intrinsics.a(d, persistentList)) {
                StateListStateRecord stateListStateRecord3 = this.j;
                stateListStateRecord3.getClass();
                synchronized (SnapshotKt.c) {
                    i4 = SnapshotKt.i();
                    b = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, this, i4), i3, d, true);
                }
                SnapshotKt.m(i4, this);
            } else {
                return;
            }
        } while (!b);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.util.List
    public final Object get(int i) {
        return SnapshotStateListKt.c(this).c.get(i);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        return SnapshotStateListKt.c(this).c.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return SnapshotStateListKt.c(this).c.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        return SnapshotStateListKt.c(this).c.lastIndexOf(obj);
    }

    @Override // java.util.List
    public final ListIterator listIterator() {
        return new StateListIterator(this, 0);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        int i;
        PersistentList persistentList;
        Snapshot i2;
        boolean b;
        do {
            synchronized (SnapshotStateListKt.a) {
                StateListStateRecord stateListStateRecord = this.j;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.c;
            }
            persistentList.getClass();
            AbstractPersistentList abstractPersistentList = (AbstractPersistentList) persistentList;
            int indexOf = abstractPersistentList.indexOf(obj);
            PersistentList persistentList2 = abstractPersistentList;
            if (indexOf != -1) {
                persistentList2 = abstractPersistentList.h(indexOf);
            }
            if (persistentList2.equals(persistentList)) {
                return false;
            }
            StateListStateRecord stateListStateRecord3 = this.j;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.c) {
                i2 = SnapshotKt.i();
                b = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, this, i2), i, persistentList2, true);
            }
            SnapshotKt.m(i2, this);
        } while (!b);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection collection) {
        int i;
        PersistentList persistentList;
        Snapshot i2;
        boolean b;
        do {
            synchronized (SnapshotStateListKt.a) {
                StateListStateRecord stateListStateRecord = this.j;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.c;
            }
            persistentList.getClass();
            PersistentList v = ((AbstractPersistentList) persistentList).v(new g(0, collection));
            if (Intrinsics.a(v, persistentList)) {
                return false;
            }
            StateListStateRecord stateListStateRecord3 = this.j;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.c) {
                i2 = SnapshotKt.i();
                b = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, this, i2), i, v, true);
            }
            SnapshotKt.m(i2, this);
        } while (!b);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection collection) {
        return SnapshotStateListKt.e(this, new g(2, collection));
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        int i2;
        PersistentList persistentList;
        Snapshot i3;
        boolean b;
        Object obj2 = get(i);
        do {
            synchronized (SnapshotStateListKt.a) {
                StateListStateRecord stateListStateRecord = this.j;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i2 = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.c;
            }
            persistentList.getClass();
            PersistentList persistentList2 = persistentList.set(i, obj);
            if (persistentList2.equals(persistentList)) {
                break;
            }
            StateListStateRecord stateListStateRecord3 = this.j;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.c) {
                i3 = SnapshotKt.i();
                b = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, this, i3), i2, persistentList2, false);
            }
            SnapshotKt.m(i3, this);
        } while (!b);
        return obj2;
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return SnapshotStateListKt.c(this).c.size();
    }

    @Override // java.util.List
    public final List subList(int i, int i2) {
        boolean z;
        if (i >= 0 && i <= i2 && i2 <= size()) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            PreconditionsKt.a("fromIndex or toIndex are out of bounds");
        }
        return new SubList(this, i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        return CollectionToArray.a(this);
    }

    public final String toString() {
        StateListStateRecord stateListStateRecord = this.j;
        stateListStateRecord.getClass();
        return "SnapshotStateList(value=" + ((StateListStateRecord) SnapshotKt.g(stateListStateRecord)).c + ")@" + hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        PersistentList persistentList = SnapshotStateListKt.c(this).c;
        int size = persistentList.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeValue(persistentList.get(i2));
        }
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }

    @Override // java.util.List
    public final ListIterator listIterator(int i) {
        return new StateListIterator(this, i);
    }

    public SnapshotStateList() {
        this(SmallPersistentVector.k);
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        int i2;
        PersistentList persistentList;
        Snapshot i3;
        boolean b;
        do {
            synchronized (SnapshotStateListKt.a) {
                StateListStateRecord stateListStateRecord = this.j;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i2 = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.c;
            }
            persistentList.getClass();
            PersistentList add = persistentList.add(i, obj);
            if (add.equals(persistentList)) {
                return;
            }
            StateListStateRecord stateListStateRecord3 = this.j;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.c) {
                i3 = SnapshotKt.i();
                b = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, this, i3), i2, add, true);
            }
            SnapshotKt.m(i3, this);
        } while (!b);
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        return SnapshotStateListKt.e(this, new o8(i, collection));
    }

    @Override // java.util.List
    public final Object remove(int i) {
        int i2;
        PersistentList persistentList;
        Snapshot i3;
        boolean b;
        Object obj = get(i);
        do {
            synchronized (SnapshotStateListKt.a) {
                StateListStateRecord stateListStateRecord = this.j;
                stateListStateRecord.getClass();
                StateListStateRecord stateListStateRecord2 = (StateListStateRecord) SnapshotKt.g(stateListStateRecord);
                i2 = stateListStateRecord2.d;
                persistentList = stateListStateRecord2.c;
            }
            persistentList.getClass();
            PersistentList h = persistentList.h(i);
            if (h.equals(persistentList)) {
                break;
            }
            StateListStateRecord stateListStateRecord3 = this.j;
            stateListStateRecord3.getClass();
            synchronized (SnapshotKt.c) {
                i3 = SnapshotKt.i();
                b = SnapshotStateListKt.b((StateListStateRecord) SnapshotKt.v(stateListStateRecord3, this, i3), i2, h, true);
            }
            SnapshotKt.m(i3, this);
        } while (!b);
        return obj;
    }
}
