package kotlin.collections;

import defpackage.jb;
import java.util.List;
import java.util.ListIterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.IntProgression;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReversedListReadOnly$listIterator$1 implements ListIterator<Object>, KMappedMarker {
    public final ListIterator j;
    public final /* synthetic */ ReversedListReadOnly k;

    public ReversedListReadOnly$listIterator$1(ReversedListReadOnly reversedListReadOnly, int i) {
        this.k = reversedListReadOnly;
        List list = reversedListReadOnly.j;
        if (i >= 0 && i <= reversedListReadOnly.size()) {
            this.j = list.listIterator(reversedListReadOnly.size() - i);
            return;
        }
        StringBuilder j = jb.j("Position index ", i, " must be in range [");
        j.append(new IntProgression(0, reversedListReadOnly.size(), 1));
        j.append("].");
        throw new IndexOutOfBoundsException(j.toString());
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.j.hasPrevious();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.j.hasNext();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        return this.j.previous();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return (this.k.size() - 1) - this.j.previousIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return this.j.next();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return (this.k.size() - 1) - this.j.nextIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
