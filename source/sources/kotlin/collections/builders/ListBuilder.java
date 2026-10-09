package kotlin.collections.builders;

import defpackage.k8;
import defpackage.u2;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.collections.AbstractList;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableCollection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ListBuilder<E> extends AbstractMutableList<E> implements List<E>, RandomAccess, Serializable, KMutableCollection {
    public static final ListBuilder m;
    public Object[] j;
    public int k;
    public boolean l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Itr<E> implements ListIterator<E>, KMappedMarker {
        public final ListBuilder j;
        public int k;
        public int l = -1;
        public int m;

        public Itr(ListBuilder listBuilder, int i) {
            this.j = listBuilder;
            this.k = i;
            this.m = ((AbstractList) listBuilder).modCount;
        }

        public final void a() {
            if (((AbstractList) this.j).modCount == this.m) {
                return;
            }
            u2.d();
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            a();
            int i = this.k;
            this.k = i + 1;
            ListBuilder listBuilder = this.j;
            listBuilder.add(i, obj);
            this.l = -1;
            this.m = ((AbstractList) listBuilder).modCount;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            if (this.k < this.j.k) {
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
            a();
            int i = this.k;
            ListBuilder listBuilder = this.j;
            if (i < listBuilder.k) {
                this.k = i + 1;
                this.l = i;
                return listBuilder.j[i];
            }
            k8.o();
            return null;
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.k;
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            a();
            int i = this.k;
            if (i > 0) {
                int i2 = i - 1;
                this.k = i2;
                this.l = i2;
                return this.j.j[i2];
            }
            k8.o();
            return null;
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.k - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            a();
            int i = this.l;
            if (i != -1) {
                ListBuilder listBuilder = this.j;
                listBuilder.c(i);
                this.k = this.l;
                this.l = -1;
                this.m = ((AbstractList) listBuilder).modCount;
                return;
            }
            u2.l("Call next() or previous() before removing element from the iterator.");
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            a();
            int i = this.l;
            if (i != -1) {
                this.j.set(i, obj);
            } else {
                u2.l("Call next() or previous() before replacing element from the iterator.");
            }
        }
    }

    static {
        ListBuilder listBuilder = new ListBuilder(0);
        listBuilder.l = true;
        m = listBuilder;
    }

    public ListBuilder(int i) {
        if (i >= 0) {
            this.j = new Object[i];
        } else {
            u2.g("capacity must be non-negative.");
            throw null;
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        g();
        AbstractList.Companion.c(i, this.k);
        ((java.util.AbstractList) this).modCount++;
        i(i, 1);
        this.j[i] = obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        collection.getClass();
        g();
        AbstractList.Companion.c(i, this.k);
        int size = collection.size();
        e(i, collection, size);
        if (size > 0) {
            return true;
        }
        return false;
    }

    @Override // kotlin.collections.AbstractMutableList
    public final int b() {
        return this.k;
    }

    @Override // kotlin.collections.AbstractMutableList
    public final Object c(int i) {
        g();
        AbstractList.Companion.b(i, this.k);
        return j(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        g();
        k(0, this.k);
    }

    public final void e(int i, Collection collection, int i2) {
        ((java.util.AbstractList) this).modCount++;
        i(i, i2);
        Iterator<E> it = collection.iterator();
        for (int i3 = 0; i3 < i2; i3++) {
            this.j[i + i3] = it.next();
        }
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof List) {
                List list = (List) obj;
                Object[] objArr = this.j;
                int i = this.k;
                if (i == list.size()) {
                    for (int i2 = 0; i2 < i; i2++) {
                        if (Intrinsics.a(objArr[i2], list.get(i2))) {
                        }
                    }
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final void f(int i, Object obj) {
        ((java.util.AbstractList) this).modCount++;
        i(i, 1);
        this.j[i] = obj;
    }

    public final void g() {
        if (!this.l) {
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        AbstractList.Companion.b(i, this.k);
        return this.j[i];
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i;
        Object[] objArr = this.j;
        int i2 = this.k;
        int i3 = 1;
        for (int i4 = 0; i4 < i2; i4++) {
            Object obj = objArr[i4];
            int i5 = i3 * 31;
            if (obj != null) {
                i = obj.hashCode();
            } else {
                i = 0;
            }
            i3 = i5 + i;
        }
        return i3;
    }

    public final void i(int i, int i2) {
        int i3 = this.k + i2;
        if (i3 >= 0) {
            Object[] objArr = this.j;
            if (i3 > objArr.length) {
                int e = AbstractList.Companion.e(objArr.length, i3);
                Object[] objArr2 = this.j;
                objArr2.getClass();
                this.j = Arrays.copyOf(objArr2, e);
            }
            Object[] objArr3 = this.j;
            ArraysKt.g(i + i2, i, this.k, objArr3, objArr3);
            this.k += i2;
            return;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        for (int i = 0; i < this.k; i++) {
            if (Intrinsics.a(this.j[i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        if (this.k == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final Object j(int i) {
        ((java.util.AbstractList) this).modCount++;
        Object[] objArr = this.j;
        Object obj = objArr[i];
        ArraysKt.g(i, i + 1, this.k, objArr, objArr);
        Object[] objArr2 = this.j;
        int i2 = this.k - 1;
        objArr2.getClass();
        objArr2[i2] = null;
        this.k--;
        return obj;
    }

    public final void k(int i, int i2) {
        if (i2 > 0) {
            ((java.util.AbstractList) this).modCount++;
        }
        Object[] objArr = this.j;
        ArraysKt.g(i, i + i2, this.k, objArr, objArr);
        Object[] objArr2 = this.j;
        int i3 = this.k;
        ListBuilderKt.b(objArr2, i3 - i2, i3);
        this.k -= i2;
    }

    public final int l(int i, int i2, Collection collection, boolean z) {
        Object[] objArr;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            objArr = this.j;
            if (i3 >= i2) {
                break;
            }
            int i5 = i + i3;
            if (collection.contains(objArr[i5]) == z) {
                Object[] objArr2 = this.j;
                i3++;
                objArr2[i4 + i] = objArr2[i5];
                i4++;
            } else {
                i3++;
            }
        }
        int i6 = i2 - i4;
        ArraysKt.g(i + i4, i2 + i, this.k, objArr, objArr);
        Object[] objArr3 = this.j;
        int i7 = this.k;
        ListBuilderKt.b(objArr3, i7 - i6, i7);
        if (i6 > 0) {
            ((java.util.AbstractList) this).modCount++;
        }
        this.k -= i6;
        return i6;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        for (int i = this.k - 1; i >= 0; i--) {
            if (Intrinsics.a(this.j[i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        AbstractList.Companion.c(i, this.k);
        return new Itr(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        g();
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            c(indexOf);
        }
        if (indexOf >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        collection.getClass();
        g();
        if (l(0, this.k, collection, false) <= 0) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        g();
        if (l(0, this.k, collection, true) <= 0) {
            return false;
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        g();
        AbstractList.Companion.b(i, this.k);
        Object[] objArr = this.j;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i, int i2) {
        AbstractList.Companion.d(i, i2, this.k);
        return new BuilderSubList(this.j, i, i2 - i, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        int i = this.k;
        Object[] objArr2 = this.j;
        if (length < i) {
            Object[] copyOfRange = Arrays.copyOfRange(objArr2, 0, i, objArr.getClass());
            copyOfRange.getClass();
            return copyOfRange;
        }
        ArraysKt.g(0, 0, i, objArr2, objArr);
        int i2 = this.k;
        if (i2 < objArr.length) {
            objArr[i2] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return ListBuilderKt.a(this.j, 0, this.k, this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class BuilderSubList<E> extends AbstractMutableList<E> implements List<E>, RandomAccess, Serializable, KMutableCollection {
        public Object[] j;
        public final int k;
        public int l;
        public final BuilderSubList m;
        public final ListBuilder n;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Itr<E> implements ListIterator<E>, KMappedMarker {
            public final BuilderSubList j;
            public int k;
            public int l = -1;
            public int m;

            public Itr(BuilderSubList builderSubList, int i) {
                this.j = builderSubList;
                this.k = i;
                this.m = ((java.util.AbstractList) builderSubList).modCount;
            }

            public final void a() {
                if (((java.util.AbstractList) this.j.n).modCount == this.m) {
                    return;
                }
                u2.d();
            }

            @Override // java.util.ListIterator
            public final void add(Object obj) {
                a();
                int i = this.k;
                this.k = i + 1;
                BuilderSubList builderSubList = this.j;
                builderSubList.add(i, obj);
                this.l = -1;
                this.m = ((java.util.AbstractList) builderSubList).modCount;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final boolean hasNext() {
                if (this.k < this.j.l) {
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
                a();
                int i = this.k;
                BuilderSubList builderSubList = this.j;
                if (i < builderSubList.l) {
                    this.k = i + 1;
                    this.l = i;
                    return builderSubList.j[builderSubList.k + i];
                }
                k8.o();
                return null;
            }

            @Override // java.util.ListIterator
            public final int nextIndex() {
                return this.k;
            }

            @Override // java.util.ListIterator
            public final Object previous() {
                a();
                int i = this.k;
                if (i > 0) {
                    int i2 = i - 1;
                    this.k = i2;
                    this.l = i2;
                    BuilderSubList builderSubList = this.j;
                    return builderSubList.j[builderSubList.k + i2];
                }
                k8.o();
                return null;
            }

            @Override // java.util.ListIterator
            public final int previousIndex() {
                return this.k - 1;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final void remove() {
                a();
                int i = this.l;
                if (i != -1) {
                    BuilderSubList builderSubList = this.j;
                    builderSubList.c(i);
                    this.k = this.l;
                    this.l = -1;
                    this.m = ((java.util.AbstractList) builderSubList).modCount;
                    return;
                }
                u2.l("Call next() or previous() before removing element from the iterator.");
            }

            @Override // java.util.ListIterator
            public final void set(Object obj) {
                a();
                int i = this.l;
                if (i != -1) {
                    this.j.set(i, obj);
                } else {
                    u2.l("Call next() or previous() before replacing element from the iterator.");
                }
            }
        }

        public BuilderSubList(Object[] objArr, int i, int i2, BuilderSubList builderSubList, ListBuilder listBuilder) {
            objArr.getClass();
            listBuilder.getClass();
            this.j = objArr;
            this.k = i;
            this.l = i2;
            this.m = builderSubList;
            this.n = listBuilder;
            ((java.util.AbstractList) this).modCount = ((java.util.AbstractList) listBuilder).modCount;
        }

        @Override // java.util.AbstractList, java.util.List
        public final void add(int i, Object obj) {
            i();
            g();
            AbstractList.Companion.c(i, this.l);
            f(this.k + i, obj);
        }

        @Override // java.util.AbstractList, java.util.List
        public final boolean addAll(int i, Collection collection) {
            collection.getClass();
            i();
            g();
            AbstractList.Companion.c(i, this.l);
            int size = collection.size();
            e(this.k + i, collection, size);
            if (size > 0) {
                return true;
            }
            return false;
        }

        @Override // kotlin.collections.AbstractMutableList
        public final int b() {
            g();
            return this.l;
        }

        @Override // kotlin.collections.AbstractMutableList
        public final Object c(int i) {
            i();
            g();
            AbstractList.Companion.b(i, this.l);
            return j(this.k + i);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final void clear() {
            i();
            g();
            k(this.k, this.l);
        }

        public final void e(int i, Collection collection, int i2) {
            ((java.util.AbstractList) this).modCount++;
            ListBuilder listBuilder = this.n;
            BuilderSubList builderSubList = this.m;
            if (builderSubList != null) {
                builderSubList.e(i, collection, i2);
            } else {
                ListBuilder listBuilder2 = ListBuilder.m;
                listBuilder.e(i, collection, i2);
            }
            this.j = listBuilder.j;
            this.l += i2;
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final boolean equals(Object obj) {
            g();
            if (obj != this) {
                if (obj instanceof List) {
                    List list = (List) obj;
                    Object[] objArr = this.j;
                    int i = this.l;
                    if (i == list.size()) {
                        for (int i2 = 0; i2 < i; i2++) {
                            if (Intrinsics.a(objArr[this.k + i2], list.get(i2))) {
                            }
                        }
                        return true;
                    }
                }
                return false;
            }
            return true;
        }

        public final void f(int i, Object obj) {
            ((java.util.AbstractList) this).modCount++;
            ListBuilder listBuilder = this.n;
            BuilderSubList builderSubList = this.m;
            if (builderSubList != null) {
                builderSubList.f(i, obj);
            } else {
                ListBuilder listBuilder2 = ListBuilder.m;
                listBuilder.f(i, obj);
            }
            this.j = listBuilder.j;
            this.l++;
        }

        public final void g() {
            if (((java.util.AbstractList) this.n).modCount == ((java.util.AbstractList) this).modCount) {
                return;
            }
            u2.d();
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            g();
            AbstractList.Companion.b(i, this.l);
            return this.j[this.k + i];
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public final int hashCode() {
            int i;
            g();
            Object[] objArr = this.j;
            int i2 = this.l;
            int i3 = 1;
            for (int i4 = 0; i4 < i2; i4++) {
                Object obj = objArr[this.k + i4];
                int i5 = i3 * 31;
                if (obj != null) {
                    i = obj.hashCode();
                } else {
                    i = 0;
                }
                i3 = i5 + i;
            }
            return i3;
        }

        public final void i() {
            if (!this.n.l) {
            } else {
                throw new UnsupportedOperationException();
            }
        }

        @Override // java.util.AbstractList, java.util.List
        public final int indexOf(Object obj) {
            g();
            for (int i = 0; i < this.l; i++) {
                if (Intrinsics.a(this.j[this.k + i], obj)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            g();
            if (this.l == 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator iterator() {
            return listIterator(0);
        }

        public final Object j(int i) {
            Object j;
            ((java.util.AbstractList) this).modCount++;
            BuilderSubList builderSubList = this.m;
            if (builderSubList != null) {
                j = builderSubList.j(i);
            } else {
                ListBuilder listBuilder = ListBuilder.m;
                j = this.n.j(i);
            }
            this.l--;
            return j;
        }

        public final void k(int i, int i2) {
            if (i2 > 0) {
                ((java.util.AbstractList) this).modCount++;
            }
            BuilderSubList builderSubList = this.m;
            if (builderSubList != null) {
                builderSubList.k(i, i2);
            } else {
                ListBuilder listBuilder = ListBuilder.m;
                this.n.k(i, i2);
            }
            this.l -= i2;
        }

        public final int l(int i, int i2, Collection collection, boolean z) {
            int l;
            BuilderSubList builderSubList = this.m;
            if (builderSubList != null) {
                l = builderSubList.l(i, i2, collection, z);
            } else {
                ListBuilder listBuilder = ListBuilder.m;
                l = this.n.l(i, i2, collection, z);
            }
            if (l > 0) {
                ((java.util.AbstractList) this).modCount++;
            }
            this.l -= l;
            return l;
        }

        @Override // java.util.AbstractList, java.util.List
        public final int lastIndexOf(Object obj) {
            g();
            for (int i = this.l - 1; i >= 0; i--) {
                if (Intrinsics.a(this.j[this.k + i], obj)) {
                    return i;
                }
            }
            return -1;
        }

        @Override // java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i) {
            g();
            AbstractList.Companion.c(i, this.l);
            return new Itr(this, i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean remove(Object obj) {
            i();
            g();
            int indexOf = indexOf(obj);
            if (indexOf >= 0) {
                c(indexOf);
            }
            if (indexOf >= 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean removeAll(Collection collection) {
            collection.getClass();
            i();
            g();
            if (l(this.k, this.l, collection, false) <= 0) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean retainAll(Collection collection) {
            collection.getClass();
            i();
            g();
            if (l(this.k, this.l, collection, true) > 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object set(int i, Object obj) {
            i();
            g();
            AbstractList.Companion.b(i, this.l);
            Object[] objArr = this.j;
            int i2 = this.k + i;
            Object obj2 = objArr[i2];
            objArr[i2] = obj;
            return obj2;
        }

        @Override // java.util.AbstractList, java.util.List
        public final List subList(int i, int i2) {
            AbstractList.Companion.d(i, i2, this.l);
            return new BuilderSubList(this.j, this.k + i, i2 - i, this, this.n);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final Object[] toArray(Object[] objArr) {
            objArr.getClass();
            g();
            int length = objArr.length;
            int i = this.l;
            Object[] objArr2 = this.j;
            int i2 = this.k;
            if (length < i) {
                Object[] copyOfRange = Arrays.copyOfRange(objArr2, i2, i + i2, objArr.getClass());
                copyOfRange.getClass();
                return copyOfRange;
            }
            ArraysKt.g(0, i2, i + i2, objArr2, objArr);
            int i3 = this.l;
            if (i3 < objArr.length) {
                objArr[i3] = null;
            }
            return objArr;
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            g();
            return ListBuilderKt.a(this.j, this.k, this.l, this);
        }

        @Override // java.util.AbstractList, java.util.List
        public final ListIterator listIterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean add(Object obj) {
            i();
            g();
            f(this.k + this.l, obj);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean addAll(Collection collection) {
            collection.getClass();
            i();
            g();
            int size = collection.size();
            e(this.k + this.l, collection, size);
            return size > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final Object[] toArray() {
            g();
            Object[] objArr = this.j;
            int i = this.l;
            int i2 = this.k;
            return ArraysKt.l(objArr, i2, i + i2);
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        g();
        int i = this.k;
        ((java.util.AbstractList) this).modCount++;
        i(i, 1);
        this.j[i] = obj;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        collection.getClass();
        g();
        int size = collection.size();
        e(this.k, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return ArraysKt.l(this.j, 0, this.k);
    }
}
