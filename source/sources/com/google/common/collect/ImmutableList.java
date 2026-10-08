package com.google.common.collect;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ImmutableList<E> extends ImmutableCollection<E> implements List<E>, RandomAccess {
    public static final UnmodifiableListIterator k = new Itr(0, RegularImmutableList.n);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder<E> extends ImmutableCollection.ArrayBasedBuilder<E> {
        public Builder() {
            super(4);
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public final ImmutableCollection.Builder a(Object obj) {
            c(obj);
            return this;
        }

        public final void h(Object... objArr) {
            int length = objArr.length;
            ObjectArrays.a(length, objArr);
            g(length);
            System.arraycopy(objArr, 0, this.a, this.b, length);
            this.b += length;
        }

        public final ImmutableList i() {
            this.c = true;
            return ImmutableList.j(this.b, this.a);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Itr<E> extends AbstractIndexedListIterator<E> {
        public final ImmutableList l;

        public Itr(int i, ImmutableList immutableList) {
            super(immutableList.size(), i);
            this.l = immutableList;
        }

        @Override // com.google.common.collect.AbstractIndexedListIterator
        public final Object a(int i) {
            return this.l.get(i);
        }
    }

    public static ImmutableList j(int i, Object[] objArr) {
        if (i == 0) {
            return RegularImmutableList.n;
        }
        return new RegularImmutableList(i, objArr);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.ImmutableCollection$ArrayBasedBuilder, com.google.common.collect.ImmutableList$Builder] */
    public static Builder k() {
        return new ImmutableCollection.ArrayBasedBuilder(4);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.collect.ImmutableCollection$ArrayBasedBuilder, com.google.common.collect.ImmutableList$Builder] */
    public static Builder l(int i) {
        CollectPreconditions.a(i, "expectedSize");
        return new ImmutableCollection.ArrayBasedBuilder(i);
    }

    public static ImmutableList m(Collection collection) {
        if (collection instanceof ImmutableCollection) {
            ImmutableList b = ((ImmutableCollection) collection).b();
            if (b.g()) {
                Object[] array = b.toArray(ImmutableCollection.j);
                return j(array.length, array);
            }
            return b;
        }
        Object[] array2 = collection.toArray();
        ObjectArrays.a(array2.length, array2);
        return j(array2.length, array2);
    }

    public static ImmutableList o(Object[] objArr) {
        if (objArr.length == 0) {
            return RegularImmutableList.n;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        ObjectArrays.a(objArr2.length, objArr2);
        return j(objArr2.length, objArr2);
    }

    public static ImmutableList r() {
        return RegularImmutableList.n;
    }

    public static ImmutableList s(Long l, Long l2, Long l3, Long l4, Long l5) {
        Object[] objArr = {l, l2, l3, l4, l5};
        ObjectArrays.a(5, objArr);
        return j(5, objArr);
    }

    public static ImmutableList t(Object obj) {
        Object[] objArr = {obj};
        ObjectArrays.a(1, objArr);
        return j(1, objArr);
    }

    public static ImmutableList u(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        ObjectArrays.a(2, objArr);
        return j(2, objArr);
    }

    public static ImmutableList x(Ordering ordering, List list) {
        ordering.getClass();
        if (list == null) {
            list = Lists.a(list.iterator());
        }
        Object[] array = list.toArray();
        ObjectArrays.a(array.length, array);
        Arrays.sort(array, ordering);
        return j(array.length, array);
    }

    @Override // java.util.List
    public final void add(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final boolean addAll(int i, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public int c(int i, Object[] objArr) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (indexOf(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof List) {
                List list = (List) obj;
                int size = size();
                if (size == list.size()) {
                    if (list instanceof RandomAccess) {
                        for (int i = 0; i < size; i++) {
                            if (Objects.a(get(i), list.get(i))) {
                            }
                        }
                    } else {
                        Iterator<E> it = iterator();
                        Iterator<E> it2 = list.iterator();
                        while (it.hasNext()) {
                            if (it2.hasNext() && Objects.a(it.next(), it2.next())) {
                            }
                        }
                        return !it2.hasNext();
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = ~(~(get(i2).hashCode() + (i * 31)));
        }
        return i;
    }

    @Override // com.google.common.collect.ImmutableCollection
    /* renamed from: i */
    public final UnmodifiableIterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public final UnmodifiableListIterator listIterator(int i) {
        Preconditions.k(i, size());
        if (isEmpty()) {
            return k;
        }
        return new Itr(i, this);
    }

    @Override // java.util.List
    public final Object remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public final Object set(int i, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    /* renamed from: y */
    public ImmutableList subList(int i, int i2) {
        Preconditions.l(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        if (i3 == 0) {
            return RegularImmutableList.n;
        }
        return new SubList(i, i3);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class SubList extends ImmutableList<E> {
        public final transient int l;
        public final transient int m;

        public SubList(int i, int i2) {
            this.l = i;
            this.m = i2;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final Object[] d() {
            return ImmutableList.this.d();
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int e() {
            return ImmutableList.this.f() + this.l + this.m;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int f() {
            return ImmutableList.this.f() + this.l;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean g() {
            return true;
        }

        @Override // java.util.List
        public final Object get(int i) {
            Preconditions.h(i, this.m);
            return ImmutableList.this.get(i + this.l);
        }

        @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return listIterator(0);
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final ListIterator listIterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.m;
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        /* renamed from: y, reason: merged with bridge method [inline-methods] */
        public final ImmutableList subList(int i, int i2) {
            Preconditions.l(i, i2, this.m);
            int i3 = this.l;
            return ImmutableList.this.subList(i + i3, i2 + i3);
        }

        @Override // com.google.common.collect.ImmutableList, java.util.List
        public final /* bridge */ /* synthetic */ ListIterator listIterator(int i) {
            return listIterator(i);
        }
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final ImmutableList b() {
        return this;
    }
}
