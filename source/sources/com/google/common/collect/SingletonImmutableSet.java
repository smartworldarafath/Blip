package com.google.common.collect;

import defpackage.k8;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SingletonImmutableSet<E> extends ImmutableSet<E> {
    public final transient Object m;

    public SingletonImmutableSet(Object obj) {
        obj.getClass();
        this.m = obj;
    }

    @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
    public final ImmutableList b() {
        return ImmutableList.t(this.m);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int c(int i, Object[] objArr) {
        objArr[i] = this.m;
        return i + 1;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.m.equals(obj);
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean g() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.m.hashCode();
    }

    @Override // com.google.common.collect.ImmutableCollection
    /* renamed from: i */
    public final UnmodifiableIterator iterator() {
        final Object obj = this.m;
        return new UnmodifiableIterator<T>(obj) { // from class: com.google.common.collect.Iterators$SingletonIterator
            public final Object j;
            public boolean k;

            {
                this.j = obj;
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return !this.k;
            }

            @Override // java.util.Iterator
            public final Object next() {
                if (!this.k) {
                    this.k = true;
                    return this.j;
                }
                k8.o();
                return null;
            }
        };
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return "[" + this.m.toString() + ']';
    }
}
