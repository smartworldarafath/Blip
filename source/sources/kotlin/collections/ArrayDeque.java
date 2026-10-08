package kotlin.collections;

import defpackage.fe;
import defpackage.q;
import defpackage.u2;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ArrayDeque<E> extends AbstractMutableList<E> {
    public static final Object[] m = new Object[0];
    public int j;
    public Object[] k;
    public int l;

    public ArrayDeque(int i) {
        Object[] objArr;
        if (i == 0) {
            objArr = m;
        } else if (i > 0) {
            objArr = new Object[i];
        } else {
            u2.g(q.g(i, "Illegal Capacity: "));
            throw null;
        }
        this.k = objArr;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        AbstractList.Companion.c(i, this.l);
        if (i == this.l) {
            addLast(obj);
            return;
        }
        if (i == 0) {
            addFirst(obj);
            return;
        }
        m();
        e(this.l + 1);
        int l = l(this.j + i);
        int i3 = this.l;
        if (i < ((i3 + 1) >> 1)) {
            if (l == 0) {
                Object[] objArr = this.k;
                objArr.getClass();
                i2 = objArr.length - 1;
            } else {
                i2 = l - 1;
            }
            int i4 = this.j;
            if (i4 == 0) {
                Object[] objArr2 = this.k;
                objArr2.getClass();
                i4 = objArr2.length;
            }
            int i5 = i4 - 1;
            int i6 = this.j;
            Object[] objArr3 = this.k;
            if (i2 >= i6) {
                objArr3[i5] = objArr3[i6];
                ArraysKt.g(i6, i6 + 1, i2 + 1, objArr3, objArr3);
            } else {
                ArraysKt.g(i6 - 1, i6, objArr3.length, objArr3, objArr3);
                Object[] objArr4 = this.k;
                objArr4[objArr4.length - 1] = objArr4[0];
                ArraysKt.g(0, 1, i2 + 1, objArr4, objArr4);
            }
            this.k[i2] = obj;
            this.j = i5;
        } else {
            int l2 = l(i3 + this.j);
            Object[] objArr5 = this.k;
            if (l < l2) {
                ArraysKt.g(l + 1, l, l2, objArr5, objArr5);
            } else {
                ArraysKt.g(1, 0, l2, objArr5, objArr5);
                Object[] objArr6 = this.k;
                objArr6[0] = objArr6[objArr6.length - 1];
                ArraysKt.g(l + 1, l, objArr6.length - 1, objArr6, objArr6);
            }
            this.k[l] = obj;
        }
        this.l++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        collection.getClass();
        AbstractList.Companion.c(i, this.l);
        if (collection.isEmpty()) {
            return false;
        }
        if (i == this.l) {
            return addAll(collection);
        }
        m();
        e(collection.size() + this.l);
        int l = l(this.l + this.j);
        int l2 = l(this.j + i);
        int size = collection.size();
        if (i < ((this.l + 1) >> 1)) {
            int i2 = this.j;
            int i3 = i2 - size;
            Object[] objArr = this.k;
            if (l2 >= i2) {
                if (i3 >= 0) {
                    ArraysKt.g(i3, i2, l2, objArr, objArr);
                } else {
                    i3 += objArr.length;
                    int i4 = l2 - i2;
                    int length = objArr.length - i3;
                    if (length >= i4) {
                        ArraysKt.g(i3, i2, l2, objArr, objArr);
                    } else {
                        ArraysKt.g(i3, i2, i2 + length, objArr, objArr);
                        Object[] objArr2 = this.k;
                        ArraysKt.g(0, this.j + length, l2, objArr2, objArr2);
                    }
                }
            } else {
                ArraysKt.g(i3, i2, objArr.length, objArr, objArr);
                Object[] objArr3 = this.k;
                if (size >= l2) {
                    ArraysKt.g(objArr3.length - size, 0, l2, objArr3, objArr3);
                } else {
                    ArraysKt.g(objArr3.length - size, 0, size, objArr3, objArr3);
                    Object[] objArr4 = this.k;
                    ArraysKt.g(0, size, l2, objArr4, objArr4);
                }
            }
            this.j = i3;
            d(j(l2 - size), collection);
            return true;
        }
        int i5 = l2 + size;
        Object[] objArr5 = this.k;
        if (l2 < l) {
            int i6 = size + l;
            if (i6 <= objArr5.length) {
                ArraysKt.g(i5, l2, l, objArr5, objArr5);
            } else if (i5 >= objArr5.length) {
                ArraysKt.g(i5 - objArr5.length, l2, l, objArr5, objArr5);
            } else {
                int length2 = l - (i6 - objArr5.length);
                ArraysKt.g(0, length2, l, objArr5, objArr5);
                Object[] objArr6 = this.k;
                ArraysKt.g(i5, l2, length2, objArr6, objArr6);
            }
        } else {
            ArraysKt.g(size, 0, l, objArr5, objArr5);
            Object[] objArr7 = this.k;
            if (i5 >= objArr7.length) {
                ArraysKt.g(i5 - objArr7.length, l2, objArr7.length, objArr7, objArr7);
            } else {
                ArraysKt.g(0, objArr7.length - size, objArr7.length, objArr7, objArr7);
                Object[] objArr8 = this.k;
                ArraysKt.g(i5, l2, objArr8.length - size, objArr8, objArr8);
            }
        }
        d(l2, collection);
        return true;
    }

    public final void addFirst(Object obj) {
        m();
        e(this.l + 1);
        int i = this.j;
        if (i == 0) {
            Object[] objArr = this.k;
            objArr.getClass();
            i = objArr.length;
        }
        int i2 = i - 1;
        this.j = i2;
        this.k[i2] = obj;
        this.l++;
    }

    public final void addLast(Object obj) {
        m();
        e(b() + 1);
        this.k[l(b() + this.j)] = obj;
        this.l = b() + 1;
    }

    @Override // kotlin.collections.AbstractMutableList
    public final int b() {
        return this.l;
    }

    @Override // kotlin.collections.AbstractMutableList
    public final Object c(int i) {
        AbstractList.Companion.b(i, this.l);
        if (i == b() - 1) {
            return removeLast();
        }
        if (i == 0) {
            return removeFirst();
        }
        m();
        int l = l(this.j + i);
        Object[] objArr = this.k;
        Object obj = objArr[l];
        int i2 = this.l >> 1;
        int i3 = this.j;
        if (i < i2) {
            if (l >= i3) {
                ArraysKt.g(i3 + 1, i3, l, objArr, objArr);
            } else {
                ArraysKt.g(1, 0, l, objArr, objArr);
                Object[] objArr2 = this.k;
                objArr2[0] = objArr2[objArr2.length - 1];
                int i4 = this.j;
                ArraysKt.g(i4 + 1, i4, objArr2.length - 1, objArr2, objArr2);
            }
            Object[] objArr3 = this.k;
            int i5 = this.j;
            objArr3[i5] = null;
            this.j = g(i5);
        } else {
            int l2 = l((b() - 1) + i3);
            Object[] objArr4 = this.k;
            if (l <= l2) {
                ArraysKt.g(l, l + 1, l2 + 1, objArr4, objArr4);
            } else {
                ArraysKt.g(l, l + 1, objArr4.length, objArr4, objArr4);
                Object[] objArr5 = this.k;
                objArr5[objArr5.length - 1] = objArr5[0];
                ArraysKt.g(0, 1, l2 + 1, objArr5, objArr5);
            }
            this.k[l2] = null;
        }
        this.l--;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (!isEmpty()) {
            m();
            k(this.j, l(b() + this.j));
        }
        this.j = 0;
        this.l = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    public final void d(int i, Collection collection) {
        Iterator<E> it = collection.iterator();
        int length = this.k.length;
        while (i < length && it.hasNext()) {
            this.k[i] = it.next();
            i++;
        }
        int i2 = this.j;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.k[i3] = it.next();
        }
        this.l = collection.size() + this.l;
    }

    public final void e(int i) {
        if (i >= 0) {
            Object[] objArr = this.k;
            if (i <= objArr.length) {
                return;
            }
            if (objArr == m) {
                if (i < 10) {
                    i = 10;
                }
                this.k = new Object[i];
                return;
            }
            Object[] objArr2 = new Object[AbstractList.Companion.e(objArr.length, i)];
            Object[] objArr3 = this.k;
            ArraysKt.g(0, this.j, objArr3.length, objArr3, objArr2);
            Object[] objArr4 = this.k;
            int length = objArr4.length;
            int i2 = this.j;
            ArraysKt.g(length - i2, 0, i2, objArr4, objArr2);
            this.j = 0;
            this.k = objArr2;
            return;
        }
        u2.l("Deque is too big.");
    }

    public final Object f() {
        if (isEmpty()) {
            return null;
        }
        return this.k[this.j];
    }

    public final Object first() {
        if (!isEmpty()) {
            return this.k[this.j];
        }
        fe.o("ArrayDeque is empty.");
        return null;
    }

    public final int g(int i) {
        this.k.getClass();
        if (i == r0.length - 1) {
            return 0;
        }
        return i + 1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        AbstractList.Companion.b(i, this.l);
        return this.k[l(this.j + i)];
    }

    public final Object i() {
        if (isEmpty()) {
            return null;
        }
        return this.k[l((size() - 1) + this.j)];
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i;
        int l = l(b() + this.j);
        int i2 = this.j;
        if (i2 < l) {
            while (i2 < l) {
                if (Intrinsics.a(obj, this.k[i2])) {
                    i = this.j;
                } else {
                    i2++;
                }
            }
            return -1;
        }
        if (!isEmpty() && (i2 = this.j) >= l) {
            int length = this.k.length;
            while (true) {
                if (i2 < length) {
                    if (Intrinsics.a(obj, this.k[i2])) {
                        i = this.j;
                        break;
                    }
                    i2++;
                } else {
                    for (int i3 = 0; i3 < l; i3++) {
                        if (Intrinsics.a(obj, this.k[i3])) {
                            i2 = i3 + this.k.length;
                            i = this.j;
                        }
                    }
                    return -1;
                }
            }
        } else {
            return -1;
        }
        return i2 - i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        if (b() == 0) {
            return true;
        }
        return false;
    }

    public final int j(int i) {
        if (i < 0) {
            return i + this.k.length;
        }
        return i;
    }

    public final void k(int i, int i2) {
        Object[] objArr = this.k;
        if (i < i2) {
            ArraysKt.m(i, i2, null, objArr);
        } else {
            ArraysKt.m(i, objArr.length, null, objArr);
            ArraysKt.m(0, i2, null, this.k);
        }
    }

    public final int l(int i) {
        Object[] objArr = this.k;
        if (i >= objArr.length) {
            return i - objArr.length;
        }
        return i;
    }

    public final Object last() {
        if (!isEmpty()) {
            return this.k[l((size() - 1) + this.j)];
        }
        fe.o("ArrayDeque is empty.");
        return null;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int i;
        int l = l(this.l + this.j);
        int i2 = this.j;
        if (i2 < l) {
            length = l - 1;
            if (i2 <= length) {
                while (!Intrinsics.a(obj, this.k[length])) {
                    if (length != i2) {
                        length--;
                    }
                }
                i = this.j;
                return length - i;
            }
            return -1;
        }
        if (!isEmpty() && this.j >= l) {
            while (true) {
                l--;
                Object[] objArr = this.k;
                if (-1 < l) {
                    if (Intrinsics.a(obj, objArr[l])) {
                        length = l + this.k.length;
                        i = this.j;
                        break;
                    }
                } else {
                    objArr.getClass();
                    length = objArr.length - 1;
                    int i3 = this.j;
                    if (i3 <= length) {
                        while (!Intrinsics.a(obj, this.k[length])) {
                            if (length != i3) {
                                length--;
                            }
                        }
                        i = this.j;
                    }
                }
            }
            return length - i;
        }
        return -1;
    }

    public final void m() {
        ((java.util.AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        c(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        int l;
        Object[] objArr;
        collection.getClass();
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.k.length != 0) {
            int l2 = l(b() + this.j);
            int i = this.j;
            if (i < l2) {
                l = i;
                while (true) {
                    objArr = this.k;
                    if (i >= l2) {
                        break;
                    }
                    Object obj = objArr[i];
                    if (!collection.contains(obj)) {
                        this.k[l] = obj;
                        l++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                ArraysKt.m(l, l2, null, objArr);
            } else {
                int length = this.k.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr2 = this.k;
                    Object obj2 = objArr2[i];
                    objArr2[i] = null;
                    if (!collection.contains(obj2)) {
                        this.k[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                l = l(i2);
                for (int i3 = 0; i3 < l2; i3++) {
                    Object[] objArr3 = this.k;
                    Object obj3 = objArr3[i3];
                    objArr3[i3] = null;
                    if (!collection.contains(obj3)) {
                        this.k[l] = obj3;
                        l = g(l);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                m();
                this.l = j(l - this.j);
            }
        }
        return z;
    }

    public final Object removeFirst() {
        if (!isEmpty()) {
            m();
            Object[] objArr = this.k;
            int i = this.j;
            Object obj = objArr[i];
            objArr[i] = null;
            this.j = g(i);
            this.l = b() - 1;
            return obj;
        }
        fe.o("ArrayDeque is empty.");
        return null;
    }

    public final Object removeLast() {
        if (!isEmpty()) {
            m();
            int l = l((size() - 1) + this.j);
            Object[] objArr = this.k;
            Object obj = objArr[l];
            objArr[l] = null;
            this.l = b() - 1;
            return obj;
        }
        fe.o("ArrayDeque is empty.");
        return null;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        AbstractList.Companion.d(i, i2, this.l);
        int i3 = i2 - i;
        if (i3 == 0) {
            return;
        }
        if (i3 == this.l) {
            clear();
            return;
        }
        if (i3 == 1) {
            c(i);
            return;
        }
        m();
        int i4 = this.l - i2;
        int i5 = this.j;
        if (i < i4) {
            int l = l((i - 1) + i5);
            int l2 = l(this.j + (i2 - 1));
            while (i > 0) {
                int i6 = l + 1;
                int min = Math.min(i, Math.min(i6, l2 + 1));
                Object[] objArr = this.k;
                int i7 = l2 - min;
                int i8 = l - min;
                ArraysKt.g(i7 + 1, i8 + 1, i6, objArr, objArr);
                l = j(i8);
                l2 = j(i7);
                i -= min;
            }
            int l3 = l(this.j + i3);
            k(this.j, l3);
            this.j = l3;
        } else {
            int l4 = l(i5 + i2);
            int l5 = l(this.j + i);
            int i9 = this.l;
            while (true) {
                i9 -= i2;
                if (i9 <= 0) {
                    break;
                }
                Object[] objArr2 = this.k;
                i2 = Math.min(i9, Math.min(objArr2.length - l4, objArr2.length - l5));
                Object[] objArr3 = this.k;
                int i10 = l4 + i2;
                ArraysKt.g(l5, l4, i10, objArr3, objArr3);
                l4 = l(i10);
                l5 = l(l5 + i2);
            }
            int l6 = l(this.l + this.j);
            k(j(l6 - i3), l6);
        }
        this.l -= i3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        int l;
        Object[] objArr;
        collection.getClass();
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.k.length != 0) {
            int l2 = l(b() + this.j);
            int i = this.j;
            if (i < l2) {
                l = i;
                while (true) {
                    objArr = this.k;
                    if (i >= l2) {
                        break;
                    }
                    Object obj = objArr[i];
                    if (collection.contains(obj)) {
                        this.k[l] = obj;
                        l++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                ArraysKt.m(l, l2, null, objArr);
            } else {
                int length = this.k.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr2 = this.k;
                    Object obj2 = objArr2[i];
                    objArr2[i] = null;
                    if (collection.contains(obj2)) {
                        this.k[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                l = l(i2);
                for (int i3 = 0; i3 < l2; i3++) {
                    Object[] objArr3 = this.k;
                    Object obj3 = objArr3[i3];
                    objArr3[i3] = null;
                    if (collection.contains(obj3)) {
                        this.k[l] = obj3;
                        l = g(l);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                m();
                this.l = j(l - this.j);
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        AbstractList.Companion.b(i, this.l);
        int l = l(this.j + i);
        Object[] objArr = this.k;
        Object obj2 = objArr[l];
        objArr[l] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int length = objArr.length;
        int i = this.l;
        if (length < i) {
            Object newInstance = Array.newInstance(objArr.getClass().getComponentType(), i);
            newInstance.getClass();
            objArr = (Object[]) newInstance;
        }
        int l = l(this.l + this.j);
        int i2 = this.j;
        if (i2 < l) {
            ArraysKt.j(i2, l, 2, this.k, objArr);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.k;
            ArraysKt.g(0, this.j, objArr2.length, objArr2, objArr);
            Object[] objArr3 = this.k;
            ArraysKt.g(objArr3.length - this.j, 0, l, objArr3, objArr);
        }
        int i3 = this.l;
        if (i3 < objArr.length) {
            objArr[i3] = null;
        }
        return objArr;
    }

    public ArrayDeque() {
        this.k = m;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[b()]);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        collection.getClass();
        if (collection.isEmpty()) {
            return false;
        }
        m();
        e(collection.size() + b());
        d(l(b() + this.j), collection);
        return true;
    }
}
