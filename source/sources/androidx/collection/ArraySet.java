package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.u2;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlin.jvm.internal.markers.KMutableSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ArraySet<E> implements Collection<E>, Set<E>, KMutableCollection, KMutableSet {
    public int[] j = ContainerHelpersKt.a;
    public Object[] k = ContainerHelpersKt.c;
    public int l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ElementIterator extends IndexBasedArrayIterator<E> {
        public ElementIterator() {
            super(ArraySet.this.l);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public final Object a(int i) {
            return ArraySet.this.k[i];
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public final void b(int i) {
            ArraySet.this.b(i);
        }
    }

    public ArraySet(int i) {
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i;
        int a;
        int i2 = this.l;
        if (obj == null) {
            a = ArraySetKt.a(this, null, 0);
            i = 0;
        } else {
            int hashCode = obj.hashCode();
            i = hashCode;
            a = ArraySetKt.a(this, obj, hashCode);
        }
        if (a >= 0) {
            return false;
        }
        int i3 = ~a;
        int[] iArr = this.j;
        if (i2 >= iArr.length) {
            int i4 = 8;
            if (i2 >= 8) {
                i4 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i4 = 4;
            }
            Object[] objArr = this.k;
            int[] iArr2 = new int[i4];
            this.j = iArr2;
            this.k = new Object[i4];
            if (i2 == this.l) {
                if (iArr2.length != 0) {
                    ArraysKt.i(0, iArr.length, 6, iArr, iArr2);
                    ArraysKt.j(0, objArr.length, 6, objArr, this.k);
                }
            } else {
                u2.d();
                return false;
            }
        }
        if (i3 < i2) {
            int[] iArr3 = this.j;
            int i5 = i3 + 1;
            ArraysKt.f(i5, i3, i2, iArr3, iArr3);
            Object[] objArr2 = this.k;
            ArraysKt.g(i5, i3, i2, objArr2, objArr2);
        }
        int i6 = this.l;
        if (i2 == i6) {
            int[] iArr4 = this.j;
            if (i3 < iArr4.length) {
                iArr4[i3] = i;
                this.k[i3] = obj;
                this.l = i6 + 1;
                return true;
            }
        }
        u2.d();
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        collection.getClass();
        int size = collection.size() + this.l;
        int i = this.l;
        int[] iArr = this.j;
        boolean z = false;
        if (iArr.length < size) {
            Object[] objArr = this.k;
            int[] iArr2 = new int[size];
            this.j = iArr2;
            this.k = new Object[size];
            if (i > 0) {
                ArraysKt.i(0, i, 6, iArr, iArr2);
                ArraysKt.j(0, this.l, 6, objArr, this.k);
            }
        }
        if (this.l == i) {
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                z |= add(it.next());
            }
            return z;
        }
        u2.d();
        return false;
    }

    public final Object b(int i) {
        int i2 = this.l;
        Object[] objArr = this.k;
        Object obj = objArr[i];
        if (i2 <= 1) {
            clear();
            return obj;
        }
        int i3 = i2 - 1;
        int[] iArr = this.j;
        int i4 = 8;
        if (iArr.length > 8 && i2 < iArr.length / 3) {
            if (i2 > 8) {
                i4 = i2 + (i2 >> 1);
            }
            int[] iArr2 = new int[i4];
            this.j = iArr2;
            this.k = new Object[i4];
            if (i > 0) {
                ArraysKt.i(0, i, 6, iArr, iArr2);
                ArraysKt.j(0, i, 6, objArr, this.k);
            }
            if (i < i3) {
                int i5 = i + 1;
                ArraysKt.f(i, i5, i2, iArr, this.j);
                ArraysKt.g(i, i5, i2, objArr, this.k);
            }
        } else {
            if (i < i3) {
                int i6 = i + 1;
                ArraysKt.f(i, i6, i2, iArr, iArr);
                Object[] objArr2 = this.k;
                ArraysKt.g(i, i6, i2, objArr2, objArr2);
            }
            this.k[i3] = null;
        }
        if (i2 == this.l) {
            this.l = i3;
            return obj;
        }
        u2.d();
        return null;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        if (this.l != 0) {
            this.j = ContainerHelpersKt.a;
            this.k = ContainerHelpersKt.c;
            this.l = 0;
        }
        if (this.l == 0) {
            return;
        }
        u2.d();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        int a;
        if (obj == null) {
            a = ArraySetKt.a(this, null, 0);
        } else {
            a = ArraySetKt.a(this, obj, obj.hashCode());
        }
        if (a < 0) {
            return false;
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        collection.getClass();
        Iterator<E> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set) || this.l != ((Set) obj).size()) {
            return false;
        }
        try {
            int i = this.l;
            for (int i2 = 0; i2 < i; i2++) {
                if (!((Set) obj).contains(this.k[i2])) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.j;
        int i = this.l;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        if (this.l <= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new ElementIterator();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int a;
        if (obj == null) {
            a = ArraySetKt.a(this, null, 0);
        } else {
            a = ArraySetKt.a(this, obj, obj.hashCode());
        }
        if (a < 0) {
            return false;
        }
        b(a);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        collection.getClass();
        Iterator<E> it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        collection.getClass();
        boolean z = false;
        for (int i = this.l - 1; -1 < i; i--) {
            if (!CollectionsKt.n(collection, this.k[i])) {
                b(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.l;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        objArr.getClass();
        int i = this.l;
        if (objArr.length < i) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
        } else if (objArr.length > i) {
            objArr[i] = null;
        }
        ArraysKt.g(0, 0, this.l, this.k, objArr);
        return objArr;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.l * 14);
        sb.append('{');
        int i = this.l;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object obj = this.k[i2];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        return ArraysKt.l(this.k, 0, this.l);
    }
}
