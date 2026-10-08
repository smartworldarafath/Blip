package androidx.compose.runtime.snapshots;

import java.util.ListIterator;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SubList$listIterator$1 implements ListIterator<Object>, KMappedMarker {
    public final /* synthetic */ Ref$IntRef j;
    public final /* synthetic */ SubList k;

    public SubList$listIterator$1(Ref$IntRef ref$IntRef, SubList subList) {
        this.j = ref$IntRef;
        this.k = subList;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new IllegalStateException("Cannot modify a state list through an iterator");
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        if (this.j.j < this.k.m - 1) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        if (this.j.j >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        Ref$IntRef ref$IntRef = this.j;
        int i = ref$IntRef.j + 1;
        SubList subList = this.k;
        SnapshotStateListKt.a(i, subList.m);
        ref$IntRef.j = i;
        return subList.get(i);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.j.j + 1;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        Ref$IntRef ref$IntRef = this.j;
        int i = ref$IntRef.j;
        SubList subList = this.k;
        SnapshotStateListKt.a(i, subList.m);
        ref$IntRef.j = i - 1;
        return subList.get(i);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.j.j;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new IllegalStateException("Cannot modify a state list through an iterator");
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new IllegalStateException("Cannot modify a state list through an iterator");
    }
}
