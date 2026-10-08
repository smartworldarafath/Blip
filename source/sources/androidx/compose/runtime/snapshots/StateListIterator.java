package androidx.compose.runtime.snapshots;

import defpackage.u2;
import java.util.ListIterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StateListIterator<T> implements ListIterator<T>, KMappedMarker {
    public final SnapshotStateList j;
    public int k;
    public int l = -1;
    public int m;

    public StateListIterator(SnapshotStateList snapshotStateList, int i) {
        this.j = snapshotStateList;
        this.k = i - 1;
        this.m = SnapshotStateListKt.d(snapshotStateList);
    }

    public final void a() {
        if (SnapshotStateListKt.d(this.j) == this.m) {
            return;
        }
        u2.d();
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        a();
        int i = this.k + 1;
        SnapshotStateList snapshotStateList = this.j;
        snapshotStateList.add(i, obj);
        this.l = -1;
        this.k++;
        this.m = SnapshotStateListKt.d(snapshotStateList);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        if (this.k < this.j.size() - 1) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        if (this.k >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        a();
        int i = this.k + 1;
        this.l = i;
        SnapshotStateList snapshotStateList = this.j;
        SnapshotStateListKt.a(i, snapshotStateList.size());
        Object obj = snapshotStateList.get(i);
        this.k = i;
        return obj;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.k + 1;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        a();
        int i = this.k;
        SnapshotStateList snapshotStateList = this.j;
        SnapshotStateListKt.a(i, snapshotStateList.size());
        int i2 = this.k;
        this.l = i2;
        this.k--;
        return snapshotStateList.get(i2);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.k;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        a();
        int i = this.l;
        SnapshotStateList snapshotStateList = this.j;
        snapshotStateList.remove(i);
        this.k--;
        this.l = -1;
        this.m = SnapshotStateListKt.d(snapshotStateList);
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        a();
        int i = this.l;
        if (i >= 0) {
            SnapshotStateList snapshotStateList = this.j;
            snapshotStateList.set(i, obj);
            this.m = SnapshotStateListKt.d(snapshotStateList);
            return;
        }
        u2.l("Cannot call set before the first call to next() or previous() or immediately after a call to add() or remove()");
    }
}
