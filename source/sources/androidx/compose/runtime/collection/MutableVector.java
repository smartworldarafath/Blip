package androidx.compose.runtime.collection;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableCollection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutableVector<T> implements RandomAccess {
    public Object[] j;
    public List k;
    public int l = 0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class VectorListIterator<T> implements ListIterator<T>, KMappedMarker {
        public final List j;
        public int k;

        public VectorListIterator(int i, List list) {
            this.j = list;
            this.k = i;
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            this.j.add(this.k, obj);
            this.k++;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            if (this.k < this.j.size()) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            if (this.k > 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            int i = this.k;
            this.k = i + 1;
            return this.j.get(i);
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.k;
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            int i = this.k - 1;
            this.k = i;
            return this.j.get(i);
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.k - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            int i = this.k - 1;
            this.k = i;
            this.j.remove(i);
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            this.j.set(this.k, obj);
        }
    }

    public MutableVector(Object[] objArr) {
        this.j = objArr;
    }

    public final void a(int i, Object obj) {
        int i2 = this.l + 1;
        if (this.j.length < i2) {
            m(i2);
        }
        Object[] objArr = this.j;
        int i3 = this.l;
        if (i != i3) {
            System.arraycopy(objArr, i, objArr, i + 1, i3 - i);
        }
        objArr[i] = obj;
        this.l++;
    }

    public final void b(Object obj) {
        int i = this.l + 1;
        if (this.j.length < i) {
            m(i);
        }
        Object[] objArr = this.j;
        int i2 = this.l;
        objArr[i2] = obj;
        this.l = i2 + 1;
    }

    public final void c(int i, MutableVector mutableVector) {
        int i2 = mutableVector.l;
        if (i2 == 0) {
            return;
        }
        int i3 = this.l + i2;
        if (this.j.length < i3) {
            m(i3);
        }
        Object[] objArr = this.j;
        int i4 = this.l;
        if (i != i4) {
            System.arraycopy(objArr, i, objArr, i + i2, i4 - i);
        }
        System.arraycopy(mutableVector.j, 0, objArr, i, i2);
        this.l += i2;
    }

    public final void d(int i, List list) {
        if (list.isEmpty()) {
            return;
        }
        int size = list.size();
        int i2 = this.l + size;
        if (this.j.length < i2) {
            m(i2);
        }
        Object[] objArr = this.j;
        int i3 = this.l;
        if (i != i3) {
            System.arraycopy(objArr, i, objArr, i + size, i3 - i);
        }
        int size2 = list.size();
        for (int i4 = 0; i4 < size2; i4++) {
            objArr[i + i4] = list.get(i4);
        }
        this.l += size;
    }

    public final boolean e(int i, Collection collection) {
        int i2 = 0;
        if (collection.isEmpty()) {
            return false;
        }
        int size = collection.size();
        int i3 = this.l + size;
        if (this.j.length < i3) {
            m(i3);
        }
        Object[] objArr = this.j;
        int i4 = this.l;
        if (i != i4) {
            System.arraycopy(objArr, i, objArr, i + size, i4 - i);
        }
        for (T t : collection) {
            int i5 = i2 + 1;
            if (i2 >= 0) {
                objArr[i2 + i] = t;
                i2 = i5;
            } else {
                CollectionsKt.T();
                throw null;
            }
        }
        this.l += size;
        return true;
    }

    public final List f() {
        List list = this.k;
        if (list == null) {
            MutableVectorList mutableVectorList = new MutableVectorList(this);
            this.k = mutableVectorList;
            return mutableVectorList;
        }
        return list;
    }

    public final void g() {
        Object[] objArr = this.j;
        int i = this.l;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.l = 0;
    }

    public final boolean h(Object obj) {
        int i = this.l - 1;
        if (i >= 0) {
            for (int i2 = 0; !Intrinsics.a(this.j[i2], obj); i2++) {
                if (i2 != i) {
                }
            }
            return true;
        }
        return false;
    }

    public final int i(Object obj) {
        Object[] objArr = this.j;
        int i = this.l;
        for (int i2 = 0; i2 < i; i2++) {
            if (Intrinsics.a(obj, objArr[i2])) {
                return i2;
            }
        }
        return -1;
    }

    public final boolean j(Object obj) {
        int i = i(obj);
        if (i >= 0) {
            k(i);
            return true;
        }
        return false;
    }

    public final Object k(int i) {
        Object[] objArr = this.j;
        Object obj = objArr[i];
        int i2 = this.l;
        if (i != i2 - 1) {
            int i3 = i + 1;
            System.arraycopy(objArr, i3, objArr, i, i2 - i3);
        }
        int i4 = this.l - 1;
        this.l = i4;
        objArr[i4] = null;
        return obj;
    }

    public final void l(int i, int i2) {
        if (i2 > i) {
            int i3 = this.l;
            if (i2 < i3) {
                Object[] objArr = this.j;
                System.arraycopy(objArr, i2, objArr, i, i3 - i2);
            }
            int i4 = this.l;
            int i5 = i4 - (i2 - i);
            int i6 = i4 - 1;
            if (i5 <= i6) {
                int i7 = i5;
                while (true) {
                    this.j[i7] = null;
                    if (i7 == i6) {
                        break;
                    } else {
                        i7++;
                    }
                }
            }
            this.l = i5;
        }
    }

    public final void m(int i) {
        Object[] objArr = this.j;
        int length = objArr.length;
        Object[] objArr2 = new Object[Math.max(i, length * 2)];
        System.arraycopy(objArr, 0, objArr2, 0, length);
        this.j = objArr2;
    }

    public final void n(Comparator comparator) {
        Arrays.sort(this.j, 0, this.l, comparator);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MutableVectorList<T> implements List<T>, KMutableCollection {
        public final MutableVector j;

        public MutableVectorList(MutableVector mutableVector) {
            this.j = mutableVector;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean add(Object obj) {
            this.j.b(obj);
            return true;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean addAll(Collection collection) {
            MutableVector mutableVector = this.j;
            return mutableVector.e(mutableVector.l, collection);
        }

        @Override // java.util.List, java.util.Collection
        public final void clear() {
            this.j.g();
        }

        @Override // java.util.List, java.util.Collection
        public final boolean contains(Object obj) {
            return this.j.h(obj);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean containsAll(Collection collection) {
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                if (!this.j.h(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.List
        public final Object get(int i) {
            MutableVectorKt.a(i, this);
            return this.j.j[i];
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            return this.j.i(obj);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean isEmpty() {
            if (this.j.l == 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new VectorListIterator(0, this);
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            MutableVector mutableVector = this.j;
            Object[] objArr = mutableVector.j;
            for (int i = mutableVector.l - 1; i >= 0; i--) {
                if (Intrinsics.a(obj, objArr[i])) {
                    return i;
                }
            }
            return -1;
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            return new VectorListIterator(0, this);
        }

        @Override // java.util.List
        public final Object remove(int i) {
            MutableVectorKt.a(i, this);
            return this.j.k(i);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean removeAll(Collection collection) {
            if (!collection.isEmpty()) {
                MutableVector mutableVector = this.j;
                int i = mutableVector.l;
                Iterator<T> it = collection.iterator();
                while (it.hasNext()) {
                    mutableVector.j(it.next());
                }
                if (i != mutableVector.l) {
                    return true;
                }
                return false;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean retainAll(Collection collection) {
            MutableVector mutableVector = this.j;
            int i = mutableVector.l;
            for (int i2 = i - 1; -1 < i2; i2--) {
                if (!collection.contains(mutableVector.j[i2])) {
                    mutableVector.k(i2);
                }
            }
            if (i != mutableVector.l) {
                return true;
            }
            return false;
        }

        @Override // java.util.List
        public final Object set(int i, Object obj) {
            MutableVectorKt.a(i, this);
            Object[] objArr = this.j.j;
            Object obj2 = objArr[i];
            objArr[i] = obj;
            return obj2;
        }

        @Override // java.util.List, java.util.Collection
        public final int size() {
            return this.j.l;
        }

        @Override // java.util.List
        public final List subList(int i, int i2) {
            MutableVectorKt.b(i, i2, this);
            return new SubList(i, i2, this);
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
        public final void add(int i, Object obj) {
            this.j.a(i, obj);
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i) {
            return new VectorListIterator(i, this);
        }

        @Override // java.util.List
        public final boolean addAll(int i, Collection collection) {
            return this.j.e(i, collection);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean remove(Object obj) {
            return this.j.j(obj);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SubList<T> implements List<T>, KMutableCollection {
        public final List j;
        public final int k;
        public int l;

        public SubList(int i, int i2, List list) {
            this.j = list;
            this.k = i;
            this.l = i2;
        }

        @Override // java.util.List
        public final void add(int i, Object obj) {
            this.j.add(i + this.k, obj);
            this.l++;
        }

        @Override // java.util.List
        public final boolean addAll(int i, Collection collection) {
            this.j.addAll(i + this.k, collection);
            int size = collection.size();
            this.l += size;
            if (size > 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public final void clear() {
            int i = this.l - 1;
            int i2 = this.k;
            if (i2 <= i) {
                while (true) {
                    this.j.remove(i);
                    if (i == i2) {
                        break;
                    } else {
                        i--;
                    }
                }
            }
            this.l = i2;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean contains(Object obj) {
            int i = this.l;
            for (int i2 = this.k; i2 < i; i2++) {
                if (Intrinsics.a(this.j.get(i2), obj)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean containsAll(Collection collection) {
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.List
        public final Object get(int i) {
            MutableVectorKt.a(i, this);
            return this.j.get(i + this.k);
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            int i = this.l;
            int i2 = this.k;
            for (int i3 = i2; i3 < i; i3++) {
                if (Intrinsics.a(this.j.get(i3), obj)) {
                    return i3 - i2;
                }
            }
            return -1;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean isEmpty() {
            if (this.l == this.k) {
                return true;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new VectorListIterator(0, this);
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            int i = this.l - 1;
            int i2 = this.k;
            if (i2 <= i) {
                while (!Intrinsics.a(this.j.get(i), obj)) {
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

        @Override // java.util.List
        public final ListIterator listIterator() {
            return new VectorListIterator(0, this);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean remove(Object obj) {
            int i = this.l;
            for (int i2 = this.k; i2 < i; i2++) {
                List list = this.j;
                if (Intrinsics.a(list.get(i2), obj)) {
                    list.remove(i2);
                    this.l--;
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean removeAll(Collection collection) {
            int i = this.l;
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                remove(it.next());
            }
            if (i != this.l) {
                return true;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean retainAll(Collection collection) {
            int i = this.l;
            int i2 = i - 1;
            int i3 = this.k;
            if (i3 <= i2) {
                while (true) {
                    List list = this.j;
                    if (!collection.contains(list.get(i2))) {
                        list.remove(i2);
                        this.l--;
                    }
                    if (i2 == i3) {
                        break;
                    }
                    i2--;
                }
            }
            if (i != this.l) {
                return true;
            }
            return false;
        }

        @Override // java.util.List
        public final Object set(int i, Object obj) {
            MutableVectorKt.a(i, this);
            return this.j.set(i + this.k, obj);
        }

        @Override // java.util.List, java.util.Collection
        public final int size() {
            return this.l - this.k;
        }

        @Override // java.util.List
        public final List subList(int i, int i2) {
            MutableVectorKt.b(i, i2, this);
            return new SubList(i, i2, this);
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
        public final ListIterator listIterator(int i) {
            return new VectorListIterator(i, this);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean add(Object obj) {
            int i = this.l;
            this.l = i + 1;
            this.j.add(i, obj);
            return true;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean addAll(Collection collection) {
            this.j.addAll(this.l, collection);
            int size = collection.size();
            this.l += size;
            return size > 0;
        }

        @Override // java.util.List
        public final Object remove(int i) {
            MutableVectorKt.a(i, this);
            this.l--;
            return this.j.remove(i + this.k);
        }
    }
}
