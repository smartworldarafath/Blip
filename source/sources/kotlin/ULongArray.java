package kotlin;

import defpackage.fe;
import java.util.Arrays;
import java.util.Collection;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ULongArray implements Collection<ULong>, KMappedMarker {
    public final long[] j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Iterator implements java.util.Iterator<ULong>, KMappedMarker {
        public final long[] j;
        public int k;

        public Iterator(long[] jArr) {
            this.j = jArr;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.k < this.j.length) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public final ULong next() {
            int i = this.k;
            long[] jArr = this.j;
            if (i < jArr.length) {
                this.k = i + 1;
                return new ULong(jArr[i]);
            }
            fe.o(String.valueOf(i));
            return null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // java.util.Collection
    public final /* bridge */ /* synthetic */ boolean add(ULong uLong) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection<? extends ULong> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        if (!(obj instanceof ULong)) {
            return false;
        }
        long j = ((ULong) obj).j;
        long[] jArr = this.j;
        int length = jArr.length;
        int i = 0;
        while (true) {
            if (i < length) {
                if (j == jArr[i]) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i < 0) {
            return false;
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        boolean z;
        collection.getClass();
        Collection collection2 = collection;
        if (!collection2.isEmpty()) {
            for (Object obj : collection2) {
                if (obj instanceof ULong) {
                    long j = ((ULong) obj).j;
                    long[] jArr = this.j;
                    int length = jArr.length;
                    int i = 0;
                    while (true) {
                        if (i < length) {
                            if (j == jArr[i]) {
                                break;
                            }
                            i++;
                        } else {
                            i = -1;
                            break;
                        }
                    }
                    if (i >= 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                    }
                }
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean equals(Object obj) {
        if (obj instanceof ULongArray) {
            if (!this.j.equals(((ULongArray) obj).j)) {
                return false;
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection
    public final int hashCode() {
        return Arrays.hashCode(this.j);
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        if (this.j.length == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final java.util.Iterator iterator() {
        return new Iterator(this.j);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final int size() {
        return this.j.length;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        return CollectionToArray.b(this, objArr);
    }

    public final String toString() {
        return "ULongArray(storage=" + Arrays.toString(this.j) + ')';
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return CollectionToArray.a(this);
    }
}
