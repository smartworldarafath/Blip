package androidx.collection;

import defpackage.fe;
import defpackage.jb;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableCollection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutableObjectList<E> extends ObjectList<E> {
    public ObjectListMutableList c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MutableObjectListIterator<T> implements ListIterator<T>, KMappedMarker {
        public final List j;
        public int k;

        public MutableObjectListIterator(int i, List list) {
            this.j = list;
            this.k = i - 1;
        }

        @Override // java.util.ListIterator
        public final void add(Object obj) {
            int i = this.k + 1;
            this.k = i;
            this.j.add(i, obj);
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
            int i = this.k + 1;
            this.k = i;
            return this.j.get(i);
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.k + 1;
        }

        @Override // java.util.ListIterator
        public final Object previous() {
            int i = this.k;
            this.k = i - 1;
            return this.j.get(i);
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.k;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            this.j.remove(this.k);
            this.k--;
        }

        @Override // java.util.ListIterator
        public final void set(Object obj) {
            this.j.set(this.k, obj);
        }
    }

    public MutableObjectList(int i) {
        Object[] objArr;
        if (i == 0) {
            objArr = ObjectListKt.a;
        } else {
            objArr = new Object[i];
        }
        this.a = objArr;
    }

    public final void g(Object obj) {
        int i = this.b + 1;
        Object[] objArr = this.a;
        if (objArr.length < i) {
            o(i, objArr);
        }
        Object[] objArr2 = this.a;
        int i2 = this.b;
        objArr2[i2] = obj;
        this.b = i2 + 1;
    }

    public final void h(ObjectList objectList) {
        objectList.getClass();
        if (!objectList.d()) {
            int i = this.b + objectList.b;
            Object[] objArr = this.a;
            if (objArr.length < i) {
                o(i, objArr);
            }
            ArraysKt.g(this.b, 0, objectList.b, objectList.a, this.a);
            this.b += objectList.b;
        }
    }

    public final void i(List list) {
        if (!list.isEmpty()) {
            int i = this.b;
            int size = list.size() + i;
            Object[] objArr = this.a;
            if (objArr.length < size) {
                o(size, objArr);
            }
            Object[] objArr2 = this.a;
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                objArr2[i2 + i] = list.get(i2);
            }
            this.b = list.size() + this.b;
        }
    }

    public final List j() {
        ObjectListMutableList objectListMutableList = this.c;
        if (objectListMutableList != null) {
            return objectListMutableList;
        }
        ObjectListMutableList objectListMutableList2 = new ObjectListMutableList(this);
        this.c = objectListMutableList2;
        return objectListMutableList2;
    }

    public final void k() {
        ArraysKt.m(0, this.b, null, this.a);
        this.b = 0;
    }

    public final boolean l(Object obj) {
        int c = c(obj);
        if (c >= 0) {
            m(c);
            return true;
        }
        return false;
    }

    public final Object m(int i) {
        int i2;
        if (i >= 0 && i < (i2 = this.b)) {
            Object[] objArr = this.a;
            Object obj = objArr[i];
            if (i != i2 - 1) {
                ArraysKt.g(i, i + 1, i2, objArr, objArr);
            }
            int i3 = this.b - 1;
            this.b = i3;
            objArr[i3] = null;
            return obj;
        }
        f(i);
        throw null;
    }

    public final void n(int i, int i2) {
        int i3;
        if (i >= 0 && i <= (i3 = this.b) && i2 >= 0 && i2 <= i3) {
            if (i2 >= i) {
                if (i2 != i) {
                    if (i2 < i3) {
                        Object[] objArr = this.a;
                        ArraysKt.g(i, i2, i3, objArr, objArr);
                    }
                    int i4 = this.b;
                    int i5 = i4 - (i2 - i);
                    ArraysKt.m(i5, i4, null, this.a);
                    this.b = i5;
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("Start (" + i + ") is more than end (" + i2 + ')');
        }
        fe.k(this.b, jb.k("Start (", i, ") and end (", i2, ") must be in 0.."));
    }

    public final void o(int i, Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        Object[] objArr2 = new Object[Math.max(i, (length * 3) / 2)];
        ArraysKt.g(0, 0, length, objArr, objArr2);
        this.a = objArr2;
    }

    public final Object p(int i, Object obj) {
        if (i >= 0 && i < this.b) {
            Object[] objArr = this.a;
            Object obj2 = objArr[i];
            objArr[i] = obj;
            return obj2;
        }
        f(i);
        throw null;
    }

    public final void q(int i) {
        StringBuilder j = jb.j("Index ", i, " must be in 0..");
        j.append(this.b);
        throw new IndexOutOfBoundsException(j.toString());
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ObjectListMutableList<T> implements List<T>, KMutableCollection {
        public final MutableObjectList j;

        public ObjectListMutableList(MutableObjectList mutableObjectList) {
            this.j = mutableObjectList;
        }

        @Override // java.util.List
        public final void add(int i, Object obj) {
            int i2;
            MutableObjectList mutableObjectList = this.j;
            if (i >= 0 && i <= (i2 = mutableObjectList.b)) {
                int i3 = i2 + 1;
                Object[] objArr = mutableObjectList.a;
                if (objArr.length < i3) {
                    mutableObjectList.o(i3, objArr);
                }
                Object[] objArr2 = mutableObjectList.a;
                int i4 = mutableObjectList.b;
                if (i != i4) {
                    ArraysKt.g(i + 1, i, i4, objArr2, objArr2);
                }
                objArr2[i] = obj;
                mutableObjectList.b++;
                return;
            }
            mutableObjectList.q(i);
            throw null;
        }

        @Override // java.util.List
        public final boolean addAll(int i, Collection collection) {
            collection.getClass();
            MutableObjectList mutableObjectList = this.j;
            if (i >= 0 && i <= mutableObjectList.b) {
                int i2 = 0;
                if (collection.isEmpty()) {
                    return false;
                }
                int size = collection.size() + mutableObjectList.b;
                Object[] objArr = mutableObjectList.a;
                if (objArr.length < size) {
                    mutableObjectList.o(size, objArr);
                }
                Object[] objArr2 = mutableObjectList.a;
                if (i != mutableObjectList.b) {
                    ArraysKt.g(collection.size() + i, i, mutableObjectList.b, objArr2, objArr2);
                }
                for (T t : collection) {
                    int i3 = i2 + 1;
                    if (i2 >= 0) {
                        objArr2[i2 + i] = t;
                        i2 = i3;
                    } else {
                        CollectionsKt.T();
                        throw null;
                    }
                }
                mutableObjectList.b = collection.size() + mutableObjectList.b;
                return true;
            }
            mutableObjectList.q(i);
            throw null;
        }

        @Override // java.util.List, java.util.Collection
        public final void clear() {
            this.j.k();
        }

        @Override // java.util.List, java.util.Collection
        public final boolean contains(Object obj) {
            if (this.j.c(obj) >= 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean containsAll(Collection collection) {
            collection.getClass();
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                if (this.j.c(it.next()) < 0) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.List
        public final Object get(int i) {
            ObjectListKt.a(i, this);
            return this.j.b(i);
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            return this.j.c(obj);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean isEmpty() {
            return this.j.d();
        }

        @Override // java.util.List, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new MutableObjectListIterator(0, this);
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            MutableObjectList mutableObjectList = this.j;
            Object[] objArr = mutableObjectList.a;
            int i = mutableObjectList.b;
            if (obj == null) {
                for (int i2 = i - 1; -1 < i2; i2--) {
                    if (objArr[i2] == null) {
                        return i2;
                    }
                }
            } else {
                for (int i3 = i - 1; -1 < i3; i3--) {
                    if (obj.equals(objArr[i3])) {
                        return i3;
                    }
                }
            }
            return -1;
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            return new MutableObjectListIterator(0, this);
        }

        @Override // java.util.List
        public final Object remove(int i) {
            ObjectListKt.a(i, this);
            return this.j.m(i);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean removeAll(Collection collection) {
            collection.getClass();
            MutableObjectList mutableObjectList = this.j;
            int i = mutableObjectList.b;
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                mutableObjectList.l(it.next());
            }
            if (i != mutableObjectList.b) {
                return true;
            }
            return false;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean retainAll(Collection collection) {
            collection.getClass();
            MutableObjectList mutableObjectList = this.j;
            int i = mutableObjectList.b;
            Object[] objArr = mutableObjectList.a;
            for (int i2 = i - 1; -1 < i2; i2--) {
                if (!collection.contains(objArr[i2])) {
                    mutableObjectList.m(i2);
                }
            }
            if (i != mutableObjectList.b) {
                return true;
            }
            return false;
        }

        @Override // java.util.List
        public final Object set(int i, Object obj) {
            ObjectListKt.a(i, this);
            return this.j.p(i, obj);
        }

        @Override // java.util.List, java.util.Collection
        public final int size() {
            return this.j.b;
        }

        @Override // java.util.List
        public final List subList(int i, int i2) {
            ObjectListKt.b(i, i2, this);
            return new SubList(i, i2, this);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            objArr.getClass();
            return CollectionToArray.b(this, objArr);
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i) {
            return new MutableObjectListIterator(i, this);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray() {
            return CollectionToArray.a(this);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean remove(Object obj) {
            return this.j.l(obj);
        }

        @Override // java.util.List, java.util.Collection
        public final boolean add(Object obj) {
            this.j.g(obj);
            return true;
        }

        @Override // java.util.List, java.util.Collection
        public final boolean addAll(Collection collection) {
            collection.getClass();
            MutableObjectList mutableObjectList = this.j;
            int i = mutableObjectList.b;
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                mutableObjectList.g(it.next());
            }
            return i != mutableObjectList.b;
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
            collection.getClass();
            this.j.addAll(i + this.k, collection);
            this.l = collection.size() + this.l;
            if (collection.size() > 0) {
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
            collection.getClass();
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
            ObjectListKt.a(i, this);
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
            return new MutableObjectListIterator(0, this);
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
            return new MutableObjectListIterator(0, this);
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
            collection.getClass();
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
            collection.getClass();
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
            ObjectListKt.a(i, this);
            return this.j.set(i + this.k, obj);
        }

        @Override // java.util.List, java.util.Collection
        public final int size() {
            return this.l - this.k;
        }

        @Override // java.util.List
        public final List subList(int i, int i2) {
            ObjectListKt.b(i, i2, this);
            return new SubList(i, i2, this);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            objArr.getClass();
            return CollectionToArray.b(this, objArr);
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i) {
            return new MutableObjectListIterator(i, this);
        }

        @Override // java.util.List, java.util.Collection
        public final Object[] toArray() {
            return CollectionToArray.a(this);
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
            collection.getClass();
            this.j.addAll(this.l, collection);
            this.l = collection.size() + this.l;
            return collection.size() > 0;
        }

        @Override // java.util.List
        public final Object remove(int i) {
            ObjectListKt.a(i, this);
            this.l--;
            return this.j.remove(i + this.k);
        }
    }

    public /* synthetic */ MutableObjectList() {
        this(16);
    }
}
