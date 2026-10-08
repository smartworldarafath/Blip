package androidx.compose.ui.node;

import androidx.collection.MutableLongList;
import androidx.collection.MutableObjectList;
import androidx.compose.ui.Modifier;
import defpackage.u2;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class HitTestResult implements List<Modifier.Node>, KMappedMarker {
    public final MutableObjectList j = new MutableObjectList(16);
    public final MutableLongList k = new MutableLongList(16);
    public int l = -1;

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ void add(int i, Modifier.Node node) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection<? extends Modifier.Node> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final /* bridge */ /* synthetic */ void addFirst(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final /* bridge */ /* synthetic */ void addLast(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003b, code lost:
    
        return r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long b() {
        long a = HitTestResultKt.a(Float.POSITIVE_INFINITY, false, false);
        int i = this.l + 1;
        int i2 = this.j.b - 1;
        if (i <= i2) {
            while (true) {
                MutableLongList mutableLongList = this.k;
                if (i >= 0) {
                    if (i >= mutableLongList.b) {
                        break;
                    }
                    long j = mutableLongList.a[i];
                    if (DistanceAndFlags.a(j, a) < 0) {
                        a = j;
                    }
                    if ((DistanceAndFlags.b(a) >= 0.0f || !DistanceAndFlags.d(a)) && i != i2) {
                        i++;
                    }
                } else {
                    mutableLongList.getClass();
                    break;
                }
            }
            u2.o("Index must be between 0 and size");
            return 0L;
        }
        return a;
    }

    public final void c(int i, int i2) {
        if (i < i2) {
            this.j.n(i, i2);
            MutableLongList mutableLongList = this.k;
            if (i >= 0) {
                int i3 = mutableLongList.b;
                if (i <= i3 && i2 >= 0 && i2 <= i3) {
                    if (i2 >= i) {
                        if (i2 != i) {
                            if (i2 < i3) {
                                long[] jArr = mutableLongList.a;
                                ArraysKt.h(jArr, jArr, i, i2, i3);
                            }
                            mutableLongList.b -= i2 - i;
                            return;
                        }
                        return;
                    }
                    u2.g("The end index must be < start index");
                    return;
                }
            } else {
                mutableLongList.getClass();
            }
            u2.o("Index must be between 0 and size");
        }
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        this.l = -1;
        this.j.k();
        this.k.b = 0;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof Modifier.Node) || indexOf((Modifier.Node) obj) == -1) {
            return false;
        }
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains((Modifier.Node) it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List
    public final Modifier.Node get(int i) {
        Object b = this.j.b(i);
        b.getClass();
        return (Modifier.Node) b;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Modifier.Node)) {
            return -1;
        }
        Modifier.Node node = (Modifier.Node) obj;
        int size = size() - 1;
        if (size >= 0) {
            int i = 0;
            while (!Intrinsics.a(this.j.b(i), node)) {
                if (i != size) {
                    i++;
                }
            }
            return i;
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return this.j.d();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new HitTestResultIterator(this, 0, 7);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (!(obj instanceof Modifier.Node)) {
            return -1;
        }
        Modifier.Node node = (Modifier.Node) obj;
        for (int size = size() - 1; -1 < size; size--) {
            if (Intrinsics.a(this.j.b(size), node)) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final ListIterator<Modifier.Node> listIterator() {
        return new HitTestResultIterator(this, 0, 7);
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Modifier.Node remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final /* bridge */ /* synthetic */ Object removeFirst() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final /* bridge */ /* synthetic */ Object removeLast() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final void replaceAll(UnaryOperator<Modifier.Node> unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Modifier.Node set(int i, Modifier.Node node) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return this.j.b;
    }

    @Override // java.util.List
    public final void sort(Comparator<? super Modifier.Node> comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final List<Modifier.Node> subList(int i, int i2) {
        return new SubList(i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray() {
        return CollectionToArray.a(this);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class SubList implements List<Modifier.Node>, KMappedMarker {
        public final int j;
        public final int k;

        public SubList(int i, int i2) {
            this.j = i;
            this.k = i2;
        }

        @Override // java.util.List
        public final /* bridge */ /* synthetic */ void add(int i, Modifier.Node node) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public final boolean addAll(int i, Collection<? extends Modifier.Node> collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final /* bridge */ /* synthetic */ void addFirst(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final /* bridge */ /* synthetic */ void addLast(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final void clear() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final boolean contains(Object obj) {
            if (!(obj instanceof Modifier.Node) || indexOf((Modifier.Node) obj) == -1) {
                return false;
            }
            return true;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains((Modifier.Node) it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.List
        public final Modifier.Node get(int i) {
            Object b = HitTestResult.this.j.b(i + this.j);
            b.getClass();
            return (Modifier.Node) b;
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            if (obj instanceof Modifier.Node) {
                Modifier.Node node = (Modifier.Node) obj;
                int i = this.j;
                int i2 = this.k;
                if (i <= i2) {
                    int i3 = i;
                    while (!Intrinsics.a(HitTestResult.this.j.b(i3), node)) {
                        if (i3 != i2) {
                            i3++;
                        } else {
                            return -1;
                        }
                    }
                    return i3 - i;
                }
                return -1;
            }
            return -1;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean isEmpty() {
            if (size() == 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            int i = this.j;
            return new HitTestResultIterator(i, i, this.k);
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            if (obj instanceof Modifier.Node) {
                Modifier.Node node = (Modifier.Node) obj;
                int i = this.k;
                int i2 = this.j;
                if (i2 <= i) {
                    while (!Intrinsics.a(HitTestResult.this.j.b(i), node)) {
                        if (i != i2) {
                            i--;
                        } else {
                            return -1;
                        }
                    }
                    return i - i2;
                }
                return -1;
            }
            return -1;
        }

        @Override // java.util.List
        public final ListIterator<Modifier.Node> listIterator(int i) {
            int i2 = this.j;
            int i3 = this.k;
            return new HitTestResultIterator(i + i2, i2, i3);
        }

        @Override // java.util.List
        public final /* bridge */ /* synthetic */ Modifier.Node remove(int i) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final boolean removeAll(Collection collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final /* bridge */ /* synthetic */ Object removeFirst() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final /* bridge */ /* synthetic */ Object removeLast() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public final void replaceAll(UnaryOperator<Modifier.Node> unaryOperator) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final boolean retainAll(Collection collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public final /* bridge */ /* synthetic */ Modifier.Node set(int i, Modifier.Node node) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final int size() {
            return this.k - this.j;
        }

        @Override // java.util.List
        public final void sort(Comparator<? super Modifier.Node> comparator) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public final List<Modifier.Node> subList(int i, int i2) {
            int i3 = this.j;
            return new SubList(i + i3, i3 + i2);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray() {
            return CollectionToArray.a(this);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            return CollectionToArray.b(this, objArr);
        }

        @Override // java.util.List, java.util.Collection
        public final /* bridge */ /* synthetic */ boolean add(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List, java.util.Collection
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.List
        public final ListIterator<Modifier.Node> listIterator() {
            int i = this.j;
            return new HitTestResultIterator(i, i, this.k);
        }
    }

    @Override // java.util.List, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final ListIterator<Modifier.Node> listIterator(int i) {
        return new HitTestResultIterator(this, i, 6);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class HitTestResultIterator implements ListIterator<Modifier.Node>, KMappedMarker {
        public int j;
        public final int k;
        public final int l;

        public HitTestResultIterator(HitTestResult hitTestResult, int i, int i2) {
            this((i2 & 1) != 0 ? 0 : i, 0, hitTestResult.j.b);
        }

        @Override // java.util.ListIterator
        public final /* bridge */ /* synthetic */ void add(Modifier.Node node) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            if (this.j < this.l) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            if (this.j > this.k) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            MutableObjectList mutableObjectList = HitTestResult.this.j;
            int i = this.j;
            this.j = i + 1;
            Object b = mutableObjectList.b(i);
            b.getClass();
            return (Modifier.Node) b;
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.j - this.k;
        }

        @Override // java.util.ListIterator
        public final Modifier.Node previous() {
            MutableObjectList mutableObjectList = HitTestResult.this.j;
            int i = this.j - 1;
            this.j = i;
            Object b = mutableObjectList.b(i);
            b.getClass();
            return (Modifier.Node) b;
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return (this.j - this.k) - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public final /* bridge */ /* synthetic */ void set(Modifier.Node node) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public HitTestResultIterator(int i, int i2, int i3) {
            this.j = i;
            this.k = i2;
            this.l = i3;
        }
    }
}
