package kotlin.collections;

import defpackage.jb;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.ranges.IntProgression;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ReversedListReadOnly<T> extends AbstractList<T> {
    public final List j;

    public ReversedListReadOnly(List list) {
        list.getClass();
        this.j = list;
    }

    @Override // kotlin.collections.AbstractCollection
    public final int b() {
        return this.j.size();
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i) {
        if (i >= 0 && i <= CollectionsKt.u(this)) {
            return this.j.get(CollectionsKt.u(this) - i);
        }
        StringBuilder j = jb.j("Element index ", i, " must be in range [");
        j.append(new IntProgression(0, CollectionsKt.u(this), 1));
        j.append("].");
        throw new IndexOutOfBoundsException(j.toString());
    }

    @Override // kotlin.collections.AbstractList, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new ReversedListReadOnly$listIterator$1(this, 0);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return new ReversedListReadOnly$listIterator$1(this, 0);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        return new ReversedListReadOnly$listIterator$1(this, i);
    }
}
