package com.google.common.collect;

import com.google.common.base.Function;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.AbstractSequentialList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Lists {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class TransformingRandomAccessList<F, T> extends AbstractList<T> implements RandomAccess, Serializable {
        public final List j;
        public final Function k;

        public TransformingRandomAccessList(List list, Function function) {
            list.getClass();
            this.j = list;
            this.k = function;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i) {
            return this.k.apply(this.j.get(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return this.j.isEmpty();
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public final Iterator iterator() {
            return listIterator();
        }

        @Override // java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i) {
            return new TransformedListIterator<Object, Object>(this.j.listIterator(i)) { // from class: com.google.common.collect.Lists.TransformingRandomAccessList.1
                @Override // com.google.common.collect.TransformedIterator
                public final Object a(Object obj) {
                    return TransformingRandomAccessList.this.k.apply(obj);
                }
            };
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractList, java.util.List
        public final Object remove(int i) {
            return this.k.apply(this.j.remove(i));
        }

        @Override // java.util.AbstractList
        public final void removeRange(int i, int i2) {
            this.j.subList(i, i2).clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.j.size();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class TransformingSequentialList<F, T> extends AbstractSequentialList<T> implements Serializable {
        public final List j;
        public final Function k;

        public TransformingSequentialList(List list, Function function) {
            list.getClass();
            this.j = list;
            this.k = function;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean isEmpty() {
            return this.j.isEmpty();
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public final ListIterator listIterator(int i) {
            return new TransformedListIterator<Object, Object>(this.j.listIterator(i)) { // from class: com.google.common.collect.Lists.TransformingSequentialList.1
                @Override // com.google.common.collect.TransformedIterator
                public final Object a(Object obj) {
                    return TransformingSequentialList.this.k.apply(obj);
                }
            };
        }

        @Override // java.util.AbstractList
        public final void removeRange(int i, int i2) {
            this.j.subList(i, i2).clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.j.size();
        }
    }

    public static ArrayList a(Iterator it) {
        ArrayList arrayList = new ArrayList();
        it.getClass();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    public static AbstractList b(List list, Function function) {
        if (list instanceof RandomAccess) {
            return new TransformingRandomAccessList(list, function);
        }
        return new TransformingSequentialList(list, function);
    }
}
