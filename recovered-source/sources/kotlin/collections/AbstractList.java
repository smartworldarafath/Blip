package kotlin.collections;

import defpackage.fe;
import defpackage.jb;
import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractList<E> extends AbstractCollection<E> implements List<E>, KMappedMarker {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static void a(int i, int i2, int i3) {
            if (i >= 0 && i2 <= i3) {
                if (i <= i2) {
                    return;
                }
                u2.g(q.f(i, i2, "startIndex: ", " > endIndex: "));
                return;
            }
            fe.k(i3, jb.k("startIndex: ", i, ", endIndex: ", i2, ", size: "));
        }

        public static void b(int i, int i2) {
            if (i >= 0 && i < i2) {
                return;
            }
            u2.o(q.f(i, i2, "index: ", ", size: "));
        }

        public static void c(int i, int i2) {
            if (i >= 0 && i <= i2) {
                return;
            }
            u2.o(q.f(i, i2, "index: ", ", size: "));
        }

        public static void d(int i, int i2, int i3) {
            if (i >= 0 && i2 <= i3) {
                if (i <= i2) {
                    return;
                }
                u2.g(q.f(i, i2, "fromIndex: ", " > toIndex: "));
                return;
            }
            fe.k(i3, jb.k("fromIndex: ", i, ", toIndex: ", i2, ", size: "));
        }

        public static int e(int i, int i2) {
            int i3 = i + (i >> 1);
            if (i3 - i2 < 0) {
                i3 = i2;
            }
            if (i3 - 2147483639 > 0) {
                if (i2 <= 2147483639) {
                    return 2147483639;
                }
                return Integer.MAX_VALUE;
            }
            return i3;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class IteratorImpl implements Iterator<E>, KMappedMarker {
        public int j;

        public IteratorImpl() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.j < AbstractList.this.b()) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (hasNext()) {
                int i = this.j;
                this.j = i + 1;
                return AbstractList.this.get(i);
            }
            k8.o();
            return null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class ListIteratorImpl extends AbstractList<E>.IteratorImpl implements ListIterator<E>, KMappedMarker {
        public ListIteratorImpl(int i) {
            super();
            Companion.c(i, AbstractList.this.b());
            this.j = i;
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            if (this.j > 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.j;
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            if (hasPrevious()) {
                int i = this.j - 1;
                this.j = i;
                return AbstractList.this.get(i);
            }
            k8.o();
            return null;
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.j - 1;
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SubList<E> extends AbstractList<E> implements RandomAccess {
        public final AbstractList j;
        public final int k;
        public final int l;

        public SubList(AbstractList abstractList, int i, int i2) {
            this.j = abstractList;
            this.k = i;
            Companion.d(i, i2, abstractList.b());
            this.l = i2 - i;
        }

        @Override // kotlin.collections.AbstractCollection
        public final int b() {
            return this.l;
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        public final Object get(int i) {
            Companion.b(i, this.l);
            return this.j.get(this.k + i);
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        public final List subList(int i, int i2) {
            Companion.d(i, i2, this.l);
            int i3 = this.k;
            return new SubList(this.j, i + i3, i3 + i2);
        }
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        Collection collection = (Collection) obj;
        if (size() == collection.size()) {
            Iterator<E> it = collection.iterator();
            Iterator<E> it2 = iterator();
            while (it2.hasNext()) {
                if (!Intrinsics.a(it2.next(), it.next())) {
                }
            }
            return true;
        }
        return false;
    }

    public abstract Object get(int i);

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int i;
        int i2 = 1;
        for (E e : this) {
            int i3 = i2 * 31;
            if (e != null) {
                i = e.hashCode();
            } else {
                i = 0;
            }
            i2 = i3 + i;
        }
        return i2;
    }

    public int indexOf(Object obj) {
        Iterator<E> it = iterator();
        int i = 0;
        while (it.hasNext()) {
            if (Intrinsics.a(it.next(), obj)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        return new IteratorImpl();
    }

    public int lastIndexOf(Object obj) {
        ListIterator<E> listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (Intrinsics.a(listIterator.previous(), obj)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    public ListIterator listIterator() {
        return new ListIteratorImpl(0);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public List subList(int i, int i2) {
        return new SubList(this, i, i2);
    }

    public ListIterator listIterator(int i) {
        return new ListIteratorImpl(i);
    }
}
